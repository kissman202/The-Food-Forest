import UIKit

class FoodForest {
    
    // Instance properties
    var numberOfTrees: Int
    var numberOfBerries: Int
    var numberOfNuts: Int
    
    // Class properties
    static var averageNumberOfTrees = 20
    static var averageNumberOfBerries = 100
    static var averageNumberOfNuts = 50
    
    // Initializer
    init(numberOfTrees: Int, numberOfBerries: Int, numberOfNuts: Int) {
        self.numberOfTrees = numberOfTrees
        self.numberOfBerries = numberOfBerries
        self.numberOfNuts = numberOfNuts
    }
    
    // Instance func
    func harvestFood() -> [String] {
        var collectedFood = [String]()
        for _ in 0..<numberOfTrees {
            collectedFood.append("Tree")
        }
        for _ in 0..<numberOfBerries {
            collectedFood.append("Berry")
        }
        for _ in 0..<numberOfNuts {
            collectedFood.append("Nut")
        }
        return collectedFood
    }
    
    // Class func
    static func averageHarvest() -> [String] {
        var collectedFood = [String]()
        for _ in 0..<FoodForest.averageNumberOfTrees {
            collectedFood.append("Tree")
        }
        for _ in 0..<FoodForest.averageNumberOfBerries {
            collectedFood.append("Berry")
        }
        for _ in 0..<FoodForest.averageNumberOfNuts {
            collectedFood.append("Nut")
        }
        return collectedFood
    }
    
    static func increaseAverageTreeCount() {
        FoodForest.averageNumberOfTrees += 10
    }
}

// Create an instance of FoodForest
let myFoodForest = FoodForest(numberOfTrees: 50, numberOfBerries: 200, numberOfNuts: 75)

// Collect food from our FoodForest
let myCollectedFood = myFoodForest.harvestFood()
print("Food collected from my FoodForest: \(myCollectedFood)")

// Collect food from the average FoodForest
let averageCollectedFood = FoodForest.averageHarvest()
print("Food collected from the average FoodForest: \(averageCollectedFood)")

// Increase the average number of trees
FoodForest.increaseAverageTreeCount()

// Collect food from the average FoodForest after the increase in tree count
let averageCollectedFoodAfterIncrease = FoodForest.averageHarvest()
print("Food collected from the average FoodForest after increase in tree count: \(averageCollectedFoodAfterIncrease)")