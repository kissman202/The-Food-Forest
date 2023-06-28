// File name: main.rs

//Import necessary modules
use std::io;

fn main() {
    //Declare a variable 'choice' to store the choice made by the user
    let mut choice = String::new();

    //Display a welcoming message to the user
    println!("Welcome to The Food Forest!");

    loop {
        //Build the menu for the user to choose from
        println!("Here are the available options:
        1. Create a new item
        2. See all items
        3. Search for an item
        4. Edit an item
        5. Delete an item
        6. Quit the program");

        //Prompt the user to make a choice
        println!("Please type the number of your choice to continue:");
    
        //Read the user input 
        io::stdin().read_line(&mut choice)
            .expect("Failed to read line");
    
        let choice: u32 = match choice.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Please provide a valid number!");
                continue;
            },
        };
    
        //Match user choice with a function
        match choice {
            1 => create_new_item(),
            2 => see_all_items(),
            3 => search_for_item(),
            4 => edit_item(),
            5 => delete_item(),
            6 => {
                println!("Thanks for visiting The Food Forest!");
                break;
            },
            _ => println!("Please choose a valid option!"),
        };
    } 
}

//Declare a function to create a new item
fn create_new_item() {
    println!("This function will create a new item!");
}

//Declare a function to see all items
fn see_all_items() {
    println!("This function will show all items!");
}

//Declare a function to search for item
fn search_for_item() {
    println!("This function will search for an item!");
}

//Declare a function to edit item
fn edit_item() {
    println!("This function will edit an item!");
}

//Declare a function to delete item
fn delete_item() {
    println!("This function will delete an item!");
}