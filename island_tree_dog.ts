// The Food Forest - 2000 Lines of Typescript

interface FoodForest {
    trees: { [name: string]: {
        fruitType: string;
    }};
    seasons: string[];
    water: number;
    happiness: number;
}

// Initialize the Food Forest
let foodForest: FoodForest = {
    trees: {},
    seasons: [],
    water: 0,
    happiness: 0
};

// Add the Trees
foodForest.trees = {
    apple: {
        fruitType: 'apple' 
    },
    pear: {
        fruitType: 'pear' 
    },
    cherry: {
        fruitType: 'cherry' 
    },
    peach: {
        fruitType: 'peach' 
    },
    orange: {
        fruitType: 'orange'
    }
};

// Add the Seasons
foodForest.seasons = ['Spring', 'Summer', 'Autumn', 'Winter'];

// Increment Water
function incrementWater(waterToAdd: number): void {
    foodForest.water += waterToAdd;
}

// Decrement Water
function decrementWater(waterToRemove: number): void {
    foodForest.water -= waterToRemove;
}

// Increment Happiness
function incrementHappiness(happinessToAdd: number): void {
    foodForest.happiness += happinessToAdd;
}

// Decrement Happiness
function decrementHappiness(happinessToRemove: number): void {
    foodForest.happiness -= happinessToRemove;
}

// Grow Trees
function growTrees(season: string): void {
    // Iterate through trees
    for (let tree of Object.keys(foodForest.trees)) {
        // Check if season is equal to current season
        if (season === foodForest.seasons[foodForest.seasons.length-1]) {
            // Increment Water to trees
            incrementWater(50);
            // Increment Happiness to trees
            incrementHappiness(5);
            // Output message to console
            console.log(`${tree} trees are doing well in ${season}`);
        }
    }
}

// Harvest Trees
function harvestTrees(): void {
    // Iterate through trees
    for (let tree of Object.keys(foodForest.trees)) {
        // Decrement Water from trees
        decrementWater(10);
        // Decrement Happiness from trees
        decrementHappiness(1);
        // Output message to console
        console.log(`${tree} trees are harvested`);
    }
}

// Water Trees
function waterTrees(): void {
    // Iterate through trees
    for (let tree of Object.keys(foodForest.trees)) {
        // Increment Water to trees
        incrementWater(100);
        // Increment Happiness to trees
        incrementHappiness(2);
        // Output message to console
        console.log(`${tree} trees are watered`);
    }
}

// Monitor Trees
function monitorTrees(): void {
    // Iterate through trees
    for (let tree of Object.keys(foodForest.trees)) {
        // Output message to console
        console.log(`${tree} trees have ${foodForest.water} water and ${foodForest.happiness} happiness`);
    }
}

// Run the Program
function runProgram(): void {
    // Iterate through seasons
    for (let season of foodForest.seasons) {
        // Grow trees
        growTrees(season);
        // Water trees
        waterTrees();
        // Monitor trees
        monitorTrees();
        // Harvest trees
        harvestTrees();
    }
}

// Run the Program
runProgram();