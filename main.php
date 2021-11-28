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
<body>
   <h2>Trial Form</h2>
   <BR>
   <form action="trial.php" method="post">
   User Name: <input type="text" name="userid">
   Recipe ID: <input type="text" name="recipeid">
   Contributor ID: <input type="text" name="contributorid">
   <input type="Submit">
   </form>
</body>

<div class = "w3-bar w3-black">
  <button class = "button-selected" onclick= "openPage(this, 'Enter')">Enter Your Ingredients</button>
  <button class = "buttonOff" onclick="openPage(this, 'Find')">Find a Recipe</button>
  <button class = "buttonOff" onclick="openPage(this, 'Upload')">Upload a Recipe</button>
  <button class = "buttonOff" onclick="openPage(this, 'My')">My Recipes</button>
    <button class = "buttonOff" onclick="openPage(this, 'Delete')">Delete a Recipe</button>
</div>

<div id="Enter" class="city">
   <form action="findForm.php">
  <h2>Don't know what to make? Find a recipe here!</h2>
  <p1>What is your desired meal prep time in minutes:</p1>
  <br>
   <input type="text" id="minutes">
   <br>
   <br>
   <p1>What is your desired recipe difficulty?:</p1>
   <br>
   <input type="checkbox" id="easy"><label for="easy">Easy (1-5 steps)</label>
   <input type="checkbox" id="medium"><label for="medium">Medium (6-10 steps)</label>
   <input type="checkbox" id="hard"><label for="hard">Hard (11+ steps)</label>
   <br>
   <p>Ingredient list, separated by commas and spaces: </p>
   <input id="ingreds" name="ingreds" size="125%" height="100"></input>
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
   <input type="Submit" value="Yes">
</form>
</div>
<br></br>
<form method='post' action="">
    <input type="submit" value="Logout" name="but_logout">
</form>


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