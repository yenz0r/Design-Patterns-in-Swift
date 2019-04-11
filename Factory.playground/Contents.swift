import UIKit

protocol Exercise {
    var name: String {get}
    var type: String {get}
    func start()
    func stop()
}

class Squates: Exercise {
    var name: String = "приседания"
    var type: String = "упр для ног"

    func start() {
        print("1-старт \(self.name)")
    }

    func stop() {
        print("1-стоп \(self.name)")
    }
}

class PushUps: Exercise {
    var name: String = "отжимания"
    var type: String = "упр для рук"

    func start() {
        print("2-старт \(self.name)")
    }

    func stop() {
        print("2-стоп \(self.name)")
    }
}

class Burpee: Exercise {
    var name: String = "берпи"
    var type: String = "упр для всего тела"

    func start() {
        print("3-старт \(self.name)")
    }

    func stop() {
        print("3-стоп \(self.name)")
    }


}

class FactoryExercises {
    static let defaultFactory = FactoryExercises()

    func creatExercise(exercise name: String) -> Exercise? {
        switch name {
        case "приседания" :
            return Squates()
        case "отжимания" :
            return PushUps()
        case "берпи" :
            return Burpee()
        default:
            return nil;
        }
    }
}

var exercisesArr: [Exercise] = []

var exName = "приседания"
var newExercise = FactoryExercises.defaultFactory.creatExercise(exercise: exName)
print(newExercise ?? "incorrect exercise")

for exercise in exercisesArr {
    exercise.start()
    exercise.stop()
}
