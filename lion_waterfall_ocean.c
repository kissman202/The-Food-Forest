#include<stdio.h>
#include<string.h>

// Declaring the struct for food forest
struct FoodForest 
{
    int id;
    int quantity;
    char foodName[30];
    char plantType[30];
};

// Function to add food forest to the list
void addFoodForest(struct FoodForest *newForest, int index) 
{
    printf("Enter the ID of the new food forest:");
    scanf("%d", &newForest[index].id);
    printf("Enter the food name: ");
    scanf("%s", newForest[index].foodName);
    printf("Enter the quantity of food to be planted: ");
    scanf("%d", &newForest[index].quantity);
    printf("Enter the type of plant for the food forest: ");
    scanf("%s", newForest[index].plantType);
}

// Function to display all the food forests
void displayFoodForests(struct FoodForest *forest, int numOfFoods)
{
    printf("List of all food forests: \n");
    printf("ID \tFood \t\tQuantity \tPlant Type\n");
    for(int i = 0; i < numOfFoods; i++)
    {
        printf("%d \t%s \t%d \t\t%s\n", forest[i].id, forest[i].foodName, forest[i].quantity, 
        forest[i].plantType);
    }
}

// Function to search for a food forest
int searchFoodForest(struct FoodForest *forest, int numOfFoods, int targetID) 
{
    int position = -1;
    for(int i = 0; i < numOfFoods; i++)
    {
        if(forest[i].id == targetID)
        {
            position = i;
            break;
        }
    }
    return position;
}

// Function to update the information of a specific food forest
void updateFoodForest(struct FoodForest *forest, int index) 
{
    printf("Enter new food name: ");
    scanf("%s", forest[index].foodName);
    printf("Enter new quantity of food to be planted: ");
    scanf("%d", &forest[index].quantity);
    printf("Enter new plant type: ");
    scanf("%s", forest[index].plantType);
}

// Function to delete a food forest
void deleteFoodForest(struct FoodForest *forest, int numOfFoods, int index)
{
    for(int i = index; i < numOfFoods - 1; i++) 
    {
        strcpy(forest[i].foodName, forest[i+1].foodName);
        forest[i].quantity = forest[i+1].quantity;
        strcpy(forest[i].plantType, forest[i+1].plantType);
    }
    numOfFoods--;
}

int main(void)
{
    int numOfFoods = 0;
    int index = 0;
    int targetID;
    int searchResult;
    char operation;
    printf("Welcome to The Food Forest!\n");
    struct FoodForest forest[30];
    while(1) 
    {
        printf("\nChoose an operation (a/u/d/s/p): \n");
        scanf(" %c", &operation);
        switch(operation) 
        {
            case 'a':
            {
                printf("\nAdding food forest...\n");
                addFoodForest(forest, index);
                index++;
                numOfFoods++;
                break;
            }
            case 'u':
            {
                printf("\nUpdating food forest...\nEnter the ID of the food forest to be updated: ");
                scanf("%d", &targetID);
                searchResult = searchFoodForest(forest, numOfFoods, targetID);
                if(searchResult == -1) 
                {
                    printf("Food forest not found.\n");
                    break;
                }
                else 
                {
                    updateFoodForest(forest, searchResult);
                    printf("Food forest updated successfully.\n");
                    break;
                }
            }
            case 'd':
            {
                printf("\nDeleting food forest...\nEnter the ID of the food forest to be deleted: ");
                scanf("%d", &targetID);
                searchResult = searchFoodForest(forest, numOfFoods, targetID);
                if(searchResult == -1) 
                {
                    printf("Food forest not found.\n");
                    break;
                }
                else 
                {
                    deleteFoodForest(forest, numOfFoods, searchResult);
                    printf("Food forest deleted successfully.\n");
                    break;
                }
            }
            case 's':
            {
                printf("\nSearching food forest...\nEnter the ID of the food forest to be searched: ");
                scanf("%d", &targetID);
                searchResult = searchFoodForest(forest, numOfFoods, targetID);
                if(searchResult == -1) 
                {
                    printf("Food forest not found.\n");
                    break;
                }
                else 
                {
                    printf("ID \tFood \t\tQuantity \tPlant Type\n");
                    printf("%d \t%s \t%d \t\t%s\n", forest[searchResult].id, forest[searchResult].foodName, 
                    forest[searchResult].quantity, forest[searchResult].plantType);
                    break;
                }
            }
            case 'p':
            {
                printf("\nPrinting all food forests...\n");
                displayFoodForests(forest, numOfFoods);
                break;
            }
            default:
            {
                printf("\nInvalid operation!\n");
                break;
            }
        }
    }
    return 0;
}