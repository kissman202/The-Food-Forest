<?php

/**
 * The Food Forest
 *
 * This is the main class of the application.
 */
 
class TheFoodForest {

    /**
     * The name of the application
     * 
     * @var string
     */
    protected $name;
    
    /**
     * The version of the application
     * 
     * @var string
     */
    protected $version;

    /**
     * An array containing all the available food options
     * 
     * @var array
     */
    protected $foodOptions;

    /**
     * Constructor
     *
     * @param string $name
     * @param string $version
     */
    public function __construct($name, $version) 
    {
        $this->name = $name;
        $this->version = $version;
        $this->foodOptions = array();
    }

    /**
     * Adds a food option
     * 
     * @param string $name
     * @param string $ingredients
     * @param string $price
     * 
     * @return void
     */
    public function addFoodOption($name, $ingredients, $price) 
    {
        $this->foodOptions[] = array(
            'name' => $name,
            'ingredients' => $ingredients,
            'price' => $price
        );
    }

    /**
     * Get the list of all the available food options
     * 
     * @return array
     */
    public function getFoodOptions() 
    {
        return $this->foodOptions;
    }

    /**
     * Generates HTML for a food option
     * 
     * @param array $foodOption
     * 
     * @return string
     */
    public function generateFoodOptionHTML($foodOption) 
    {
        $html = '<div class="foodOption">';
        $html .= '<h2>' . $foodOption['name'] . '</h2>';
        $html .= '<p>Ingredients: ' . $foodOption['ingredients'] . '</p>';
        $html .= '<p>Price: ' . $foodOption['price'] . '</p>';
        $html .= '</div>';
        return $html;
    }

    /**
     * Generates HTML for all the available food options
     * 
     * @return string
     */
    public function generateFoodOptionsHTML() 
    {
        $html = '';
        foreach ($this->foodOptions as $foodOption) {
            $html .= $this->generateFoodOptionHTML($foodOption);
        }
        return $html;
    }

    /**
     * Generates HTML for the main page
     * 
     * @return string
     */
    public function generateMainPageHTML() 
    {
        $html = '<h1>' . $this->name . ' ' . $this->version . '</h1>';
        $html .= '<h3>Available food options:</h3>';
        $html .= $this->generateFoodOptionsHTML();
        return $html;
    }

    /**
     * Renders the main page
     * 
     * @return void
     */
    public function renderMainPage() 
    {
        echo $this->generateMainPageHTML();
    }

}

$theFoodForest = new TheFoodForest('The Food Forest', '1.0.0');

$theFoodForest->addFoodOption('Stir-Fried Nuts and Seeds', 'Cashew nuts, sunflower seeds, sesame seeds', '$3.00');
$theFoodForest->addFoodOption('Fried Green Beans', 'Green beans, garlic, vegetable oil', '$4.00');
$theFoodForest->addFoodOption('Veggie-Filled Nachos', 'Corn chips, black beans, bell peppers, jalapeños', '$5.00');

$theFoodForest->renderMainPage();