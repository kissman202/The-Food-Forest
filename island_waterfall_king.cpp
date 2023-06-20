#include <iostream> 
using namespace std; 

// 'The Food Forest'

class Plant {
public : 
	string type; 

	Plant(string input_type) {
		type = input_type; 
	}
};

// The Food Forest will contain trees, shrubs and herbs
class Tree : public Plant {
public : 
	string name; 
	int age; 
	int height; 
	int fruit_yield;

	Tree(string input_name, int input_age, int input_height, int input_fruit_yield) : Plant("Tree") {
		name = input_name;
		age = input_age;
		height = input_height;
		fruit_yield = input_fruit_yield;
	}
};

class Shrub : public Plant {
public :
	string name;
	int age;
	int height;

	Shrub(string input_name, int input_age, int input_height) : Plant("Shrub") {
		name = input_name;
		age = input_age;
		height = input_height;
	}
};

class Herb : public Plant {
public :
	string name;
	int age;
	int height;
	string medicinal_properties;

	Herb(string input_name, int input_age, int input_height, string input_medicinal_properties) : Plant("Herb") {
		name = input_name;
		age = input_age;
		height = input_height;
		medicinal_properties = input_medicinal_properties;
	}
};

class FoodForest {  
public : 
	int area;
	Plant *plants[1000];
	int no_of_plants;

	FoodForest(int input_area) {
		area = input_area;
		no_of_plants = 0;
	}

	void addTree(string tree_name, int tree_age, int tree_height, int tree_fruit_yield) {
		Tree *tree = new Tree(tree_name, tree_age, tree_height, tree_fruit_yield);
		plants[no_of_plants] = tree;
		no_of_plants++;
	}

	void addShrub(string shrub_name, int shrub_age, int shrub_height) {
		Shrub *shrub = new Shrub(shrub_name, shrub_age, shrub_height);
		plants[no_of_plants] = shrub;
		no_of_plants++;
	}

	void addHerb(string herb_name, int herb_age, int herb_height, string herb_medicinal_properties) {
		Herb *herb = new Herb(herb_name, herb_age, herb_height, herb_medicinal_properties);
		plants[no_of_plants] = herb;
		no_of_plants++;
	}

	void printForest() {
		cout << "The Food Forest has " << area << " square meters area." << endl;
		cout << "It currently contains " << no_of_plants << " plants." << endl;

		for (int i=0; i<no_of_plants; i++) {
			if (plants[i]->type == "Tree") {
				Tree *tree = (Tree*) plants[i];
				cout << "Tree : " << tree->name << ", age : " << tree->age << 
							", height : " << tree->height << ", fruit yield : " << tree->fruit_yield << endl; 
			}
			else if (plants[i]->type == "Shrub") {
				Shrub *shrub = (Shrub*) plants[i];
				cout << "Shrub : " << shrub->name << ", age : " << shrub->age << 
							", height : " << shrub->height << endl; 
			}
			else if (plants[i]->type == "Herb") {
				Herb *herb = (Herb*) plants[i];
				cout << "Herb : " << herb->name << ", age : " << herb->age << 
							", height : " << herb->height << 
							", medicinal properties : " << herb->medicinal_properties << endl;
			}
		}
	}
};

int main() {
	FoodForest ff(500);
	ff.addTree("Apple", 20, 15, 10);
	ff.addShrub("Grape", 10, 5);
	ff.addHerb("Aloe vera", 5, 3, "Healing and cooling");
	ff.printForest();
	return 0;
}