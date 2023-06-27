#Defining Food Forest Program 

class FoodForest:
    
    #Initialization
    def __init__(self):
        self.plants = [] #List of plants in the food forest
        self.soil = [] #List of soil types in the food forest
    
    #Adding a plant to the food forest
    def add_plant(self, plant):
        self.plants.append(plant)
    
    #Retrieving a list of plants
    def get_plants(self):
        return self.plants
    
    #Adding a soil type to the food forest
    def add_soil(self, soil):
        self.soil.append(soil)
    
    #Retrieving a list of soil types
    def get_soil(self):
        return self.soil
    
    #Listing available plants in the food forest 
    def list_plants(self):
        for plant in self.plants:
            print("{} is a plant in the food forest".format(plant))
    
    #Listing soil types in the food forest 
    def list_soil(self):
        for soil in self.soil:
            print("{} is a type of soil in the food forest".format(soil))

#Main Function
def main():
    ff = FoodForest()
    ff.add_plant("Tomatoes")
    ff.add_plant("Carrots")
    ff.add_plant("Strawberries")
    ff.add_soil("Clay")
    ff.add_soil("Sandy")
    ff.add_soil("Loamy")
    ff.list_plants()
    ff.list_soil()

#Running the program
if __name__ == "__main__":
    main()