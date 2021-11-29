<?php
// Initialize the session
session_start();
 
// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('location: registration.php');
}

?>

<!DOCTYPE html>
<!-- Hannah Douglas (hcd6tc), Ayushi Ambhore (arak7e), Tijana Djokic (td4jj) --> 

<div class = "w3-bar w3-black">
  <button class = "button-selected" onclick= "openPage(this, 'Enter')">Filter Recipes Time and Steps</button>
  <button class = "buttonOff" onclick="openPage(this, 'Find')">Find a Recipe by Ingredient</button>
  <button class = "buttonOff" onclick="openPage(this, 'Upload')">Upload a Recipe</button>
  <button class = "buttonOff" onclick="openPage(this, 'My')">My Recipes</button>
    <button class = "buttonOff" onclick="openPage(this, 'Delete')">Delete a Recipe</button>
    <button class = "buttonOff" onclick="openPage(this, 'Rate')">Rate a Recipe</button>

</div>

<div id="Enter" class="city">
   <form action="findForm.php">
  <h2>Don't know what to make? Find a recipe here!</h2>
  <p1>What is your desired meal prep time in minutes:</p1>
  <br>
   <input type="Radio" name="time" id="time" value="quick"><label for="quick">Quick (<20 mine)</label>
   <input type="Radio" name="time" id="time" value="med"><label for="med">Medium (20-50 mins)</label>
   <input type="Radio" name="time"  id="time" value="long"><label for="long">Long (>50 mins)</label>
   <br>
   <br>
   <p1>What is your desired recipe difficulty?:</p1>
   <br>

   <input type="Radio" name="difficulty" id="difficulty" value="easy"><label for="easy">Easy (1-5 steps)</label>
   <input type="Radio" name="difficulty" id="difficulty" value="medium"><label for="medium">Medium (6-10 steps)</label>
   <input type="Radio" name="difficulty"  id="difficulty" value="hard"><label for="hard">Hard (11+ steps)</label>
   <br>
      <input type="Submit">
   </form>

</div>

<div id="Find" class="city" style="display:none">
  <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script> 
  <script src="js/jquery-ui-1.8.16.custom.min.js" type="text/javascript"></script>
  <script>
    $(document).ready(function() {
      $( "#Ingredientinput" ).change(function() {
      
        $.ajax({
          url: 'searchRecipes.php', 
          data: {searchRecipe: $( "#Ingredientinput" ).val()},
          success: function(data){
            $('#Ingredientresult').html(data);  
          
          }
        });
      });
      
    });
    </script>
  <body>
    <h2>Search for a recipe based on ingredients in your kitchen! </h2> 
             
    <input class="xlarge" id="Ingredientinput" type="search" size="30" placeholder="look up an ingredient"/>
    <br/><br/>
    <div id="Ingredientresult">Search Result:</div>
  
    <br/><br/>
  </body>
</div>
<style>
     
  .xlarge{
      font-size: 16px;
    }
   </style>
</div>

<div id="Upload" class="city" style="display:none">
   <form action="addForm.php" method="post">
  <h2>Add your own Recipe</h2>
  <p>Recipe name: </p>
  <input name="name">
  <br>
  <p>How long, in minutes, does the recipe take?</p>
  <input name="timeMin">
  <p>Recipe Description</p>
   <textarea id="description" name="description" rows="4" cols="50"></textarea>
  <br>
   <p>Ingredient list, separated by commas and spaces: </p>
   <input id="ingreds" name="ingreds" size="125%" height="100"></input>
   <p>Recipe steps: </p>
   <textarea id="steps" name="steps" rows="4" cols="50"></textarea>
   <p>Number of steps:</p>
  <input name="numSteps">
   <input type="Submit">
</form>
<br></br>
<form method='post' action="">
            <input type="submit" value="Logout" name="but_logout">
        </form>
    </div>

<div id="My" class="city" style="display:none">
   <form action="getRecipes.php" method="post">
      <h2>Do you want to view all of your recipes?</h2>
   <input type="Submit" value="Yes">
</form>
<br></br>
<form method='post' action="">
    <input type="submit" value="Logout" name="but_logout">
</form>
</div>

<div id="Delete" class="city" style="display:none">
   <form action="deleteRecipes.php" method="post">
   <label for="recipeDelete">Delete Recipe with Name: </label>
   <input type="text" id="recipeDelete" name="recipeDelete">
   <input type="submit" name="s">
</form>
</div>

<div id="Rate" class="city" style="display:none">
  <form action="RecipeByUserRating.php" method="post">
  <body>
    <h2>Rate a recipe! </h2>  
  <p1>Your rating history: </p1>  
  <form action="RecipeByUserRating.php" method="post">
    <input type="Submit" value="Yes">
 </form>
      <br/><br/>
      <form action="addRating.php">
      <p1>Enter the recipe id of the recipe you would like to add a rating: </p1> 
      <input name="recipe_id_add">
      <br></br>
      <p1>Select the desired rating: </p1>  
  
        <LABEL FOR="R1"></LABEL>
        <INPUT TYPE="Radio" Name="Rating" ID="R1" Value="1">1
  
        <LABEL FOR="R2"></LABEL>
        <INPUT TYPE="Radio" Name="Rating" ID="R2" Value="2">2
  
        <LABEL FOR="R3"></LABEL>
        <INPUT TYPE="Radio" Name="Rating" ID="R3" Value="3">3
  
        <LABEL FOR="R4"></LABEL>
        <INPUT TYPE="Radio" Name="Rating" ID="R4" Value="4">4
  
        <LABEL FOR="R5"></LABEL>
        <INPUT TYPE="Radio" Name="Rating" ID="R5" Value="5">5
          <br></br>
        <p1>Enter your review : </p1> 
        <br></br>
        <textarea id="review_add" name="review_add" rows="4" cols="50"></textarea>
        <br></br>
        <input type="Submit">
  
    </form>

    <br/><br/>
    <form action="updateRating.php">
    <p1>Enter the recipe id of the recipe you would like to update the rating: </p1>  
    <input id="recipe_id_update" name="recipe_id_update" rows="4" cols="50"></input>
    <br></br>
    <p1>Select the desired rating: </p1>  

      <LABEL FOR="R_1"></LABEL>
      <INPUT TYPE="Radio" Name="Rating1" ID="R_1" Value="1">1

      <LABEL FOR="R_2"></LABEL>
      <INPUT TYPE="Radio" Name="Rating1" ID="R_2" Value="2">2

      <LABEL FOR="R_3"></LABEL>
      <INPUT TYPE="Radio" Name="Rating1" ID="R_3" Value="3">3

      <LABEL FOR="R_4"></LABEL>
      <INPUT TYPE="Radio" Name="Rating1" ID="R_4" Value="4">4

      <LABEL FOR="R_5"></LABEL>
      <INPUT TYPE="Radio" Name="Rating1" ID="R_5" Value="5">5
        <br></br>

      <p1>Enter your review : </p1> 
      <br></br>
      <textarea id="review_update" name="review_update" rows="4" cols="50"></textarea>
      <br></br>
      <input type="Submit">

  </form>
  </body>

  <br></br>
 <form method='post' action="">
     <input type="submit" value="Logout" name="but_logout">
  </form>
</div>


<style>
.buttonOff {
  background-color: #6495ED; /* Green */
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;}
.buttonOff:hover {
   background-color: gray;
}
.button-selected{
   background-color: gray; /* Green */
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

</style>

<script>
function openPage(button, pageName) {
  var i;
  var x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none"; 
  }
   var elem = document.getElementsByClassName("button-selected")[0];    
   if (elem) {
        elem.className = "buttonOff";
   }  

  document.getElementById(pageName).style.display = "block"; 
   button.className = "button-selected";

}
</script>

</html>