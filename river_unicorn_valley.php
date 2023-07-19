<?php
//create function to load FoodForest page
function createFoodForestPage(){
  //create html code for template
  $foodForestPage =
  "<html>
  <body>
    <h2>Welcome to the Food Forest!</h2>
    <p>We are an online source for organic, natural and sustainable groceries.</p>
    <h4>Products</h4>
    <ul>
      <li>Organic Fruits and Veggies</li>
      <li>Organic meats</li>
      <li>Organic grains, nuts and seeds</li>
      <li>Organic dairy products</li>
      <li>Organic snacks</li>
      <li>Organic herbal teas and spices</li>
    </ul>
    <h4>Services</h4>
    <ul>
      <li>Delivery</li>
      <li>Gift Baskets and Specialty Items</li>
      <li>Seasonal CSA Subscriptions</li>
      <li>Custom Order Collection</li>
    </ul>
    <h4>Customer Support</h4>
    <p>For any inquiries about our products or services, please contact us:</p>
    <ul>
      <li>Phone: 1-800-555-1234</li>
      <li>Email: info@foodforest.com</li>
    </ul>
  </body>
  </html>";

  //return the page
  return $foodForestPage;
}

//create function to process user input
function processInput($inputString){
  //create array to store user input
  $inputArray = explode(" ", $inputString);

  //create variables to store valid user choices
  $validOptions = array("products", "services", "support");
  $responseString = "";

  //check if user input is valid
  if(in_array(strtolower($inputArray[0]), $validOptions)){

    //process user input
    switch(strtolower($inputArray[0])){
      case "products":
        $responseString = "We have a wide selection of organic fruits and vegetables, organic meats, grains, nuts and seeds, dairy products, snacks, herbal teas and spices.";
        break;
      case "services":
        $responseString = "We offer delivery, gift baskets and specialty items, seasonal CSA subscriptions, and the ability to customize orders.";
        break;
      case "support":
        $responseString = "For any inquiries about our products or services, please contact us by phone at 1-800-555-1234 or by email at info@foodforest.com.";
        break;
    }
  }
  //return response
  return $responseString;
}

//create function to display page
function displayPage(){
  //create variables to store html code
  $responseString = "";
  $inputString = "";

  //check if user input is present
  if(isset($_GET['input'])){
    $inputString = $_GET['input'];
    $responseString = processInput($inputString);
  }

  //load page content
  $foodForestPage = createFoodForestPage();

  //display page
  echo $foodForestPage;
  echo "<div>";
  echo "<h4>User Input:</h4>";
  echo "<p>$inputString</p>";
  echo "</div>";
  echo "<div>";
  echo "<h4>Response:</h4>";
  echo "<p>$responseString</p>";
  echo "</div>";
}

//run displayPage()
displayPage();
?>