// defines the library imports
extern crate rand;
extern crate num;

// defines the global constants
const WIDTH: u32 = 100;
const HEIGHT: u32 = 100;

// defines the basic traits needed for the food forest
trait Plant {
    fn water(&self);
    fn sun(&self);
}

// defines the Food Forest struct
struct FoodForest {
    width: u32,
    height: u32,
    plants: Vec<Box<dyn Plant>>,
}

impl FoodForest {
    // creates a new Food Forest
    fn new(width: u32, height: u32) -> Self {
        Self {
            width,
            height,
            plants: vec![],
        }
    }

    // adds a plant to the Food Forest
    fn add_plant(&mut self, plant: Box<dyn Plant>) {
        self.plants.push(plant);
    }

    // allows a plant to receive sunlight
    fn sun_plants(&mut self) {
        for p in self.plants.iter_mut() {
            p.sun();
        }
    }

    // allows a plant to receive water
    fn water_plants(&mut self) {
        for p in self.plants.iter_mut() {
            p.water();
        }
    }

    // renders the Food Forest
    fn render(&self) {
        println!("Food forest {}x{}", self.width, self.height);
        for (index, plant) in self.plants.iter().enumerate() {
            println!("[{}] {}", index, plant);
        }
    }
}

// defines the tree implementation
struct Tree {
    leaves: u32,
    size: f32,
}

// implements the Plant trait for trees
impl Plant for Tree {
    fn water(&self) {
        println!("Tree is growing with water!");
    }

    fn sun(&self) {
        println!("Tree is growing with sun!");
    }
}

// defines the flower implementation
struct Flower {
    petals: u32,
    color: String,
}

// implements the Plant trait for flowers
impl Plant for Flower {
    fn water(&self) {
        println!("Flower is growing with water!");
    }

    fn sun(&self) {
        println!("Flower is growing with sun!");
    }
}

// the main function
fn main() {
    // create a new Food Forest
    let mut ff = FoodForest::new(WIDTH, HEIGHT);

    // add some plants to the Food Forest
    let tree = Box::new(Tree {
        leaves: 1000,
        size: 10.0,
    });
    ff.add_plant(tree);

    let flower = Box::new(Flower {
        petals: 5,
        color: String::from("red"),
    });
    ff.add_plant(flower);

    // give the plants some sunlight
    ff.sun_plants();

    // give the plants some water
    ff.water_plants();

    // render the Food Forest
    ff.render();
}