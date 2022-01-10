<?php 
// SESSION START
session_start();
// THANKS TO THIS WE KNOW WHAT ADMIN IS LOGGED IN
$admin = $_SESSION['admin'];
error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- WEBSITE ICON -->
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.png">
    <!-- CSS LINKS -->
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/admin_panel.css">
    <title>Admin Managment</title>
</head>
<body>
    <!-- CONTAINER -->
        <div id="blur">
            <!-- NAVBAR -->
            <nav id="nav"> 
                <h1>DARK</h1>
            </nav>
            <main id="main">
                <p><span class="delay">Choose one options</span></p>
            </main>
            <!-- OPTIONS  -->
            <div class="opt">
                <p><a href="#" onclick="togglePersons()" id="personDelay">Persons</a></p>
                <p><a href="#" onclick="toggleEvents()" id="eventsDelay">Events</a></p>
                <p><a href="#" onclick="toggleYears()" id="yearsDelay">Years</a></p>
                <p><a href="#" onclick="toggleSeasons()" id="seasonDelay">Seasons</a></p>
            </div>
            <!-- DESCRIPTION -->
            <div class="desc">
                <p>You can add a new persons, events, years and seasons. Later this information going to database and final website</p>
                <p>----------------------------------------------------------------------------------------------------------------</p>
                <p>When adding photos, you need to enter a file path, e.g. '../img/photo.jpg'</p>
            </div>
        </div>
            <!-- POPUP PERSONS -->
            <div id="popupPersons">
                <h2>Persons</h2>
                <form method="POST" action="">
                    <input type="text" name="name" placeholder="Name">
                    <input type="text" name="lastname" placeholder="Lastname">
                    <input type="text" name="age" placeholder="Age">
                    <input type="text" name="photo" placeholder="Upload photo">
                    <input type="text" name="photoalt" placeholder="Alternative text for photo">
                    <input type="text" name="desc" placeholder="Description">
                    <!-- PHP ERRORS WITH FORM -->
                    <p><?php 
                        echo $_SESSION["info"];
                    ?></p>
                    <input type="submit" name="insert" value="INSERT">
                </form>
                <a href="#" onclick="togglePersons()">Close</a>
                <?php
                // CONNECT TO DATABASE
                $db = mysqli_connect('localhost', 'root', '', 'dark');
                if ($_SERVER["REQUEST_METHOD"] == "POST") {

                        // VARIABLES
                        $name = $_POST['name'];
                        $lname = $_POST['lastname'];
                        $age = $_POST['age'];
                        $photo = $_POST['photo'];
                        $photoalt = $_POST['photoalt'];
                        $desc = $_POST['desc'];
                     
                    if(empty($name) || empty($lname) || empty($age) || empty($photo) || empty($photoalt) || empty($desc)){
                        $_SESSION["info"] = "All fields required" ;
                    }
                    else {
                        // SQL QUERY
                        $query = "INSERT INTO person(name, lastname, age, photo, photo_alt, description, id_admin) VALUES ('$name','$lname','$age','$photo','$photoalt','$desc','$admin')";

                        $run = mysqli_query($db, $query);

                        if($run){
                            $_SESSION["info"] = "";
                        }
                        else {
                            $_SESSION["info"] = "Data has not been added";
                        }
                    }
                }
                ?>
            </div>
            <!-- POPUP EVENTS -->
            <div id="popupEvents">
                <h2>Events</h2>
                <form method="POST" action="">
                <input type="text" name="event" placeholder="Events">
                <input type="text" name="desc" placeholder="Description...">
                <input type="text" name="photo" placeholder="Upload photo">
                <input type="text" name="photoalt" placeholder="Alternative text for photo">
                <!-- PHP ERRORS WITH FORM -->
                <p><?php 
                        echo $_SESSION["info"];
                    ?></p>
                <input type="submit" name="insert" value="INSERT">
            </form>
                <a href="#" onclick="toggleEvents()">Close</a>
                <?php
                // CONNECT TO DATABASE
                $db = mysqli_connect('localhost', 'root', '', 'dark');
                if ($_SERVER["REQUEST_METHOD"] == "POST") {

                        // VARIABLES
                        $event = $_POST['event'];
                        $desc = $_POST['desc'];
                        $photo = $_POST['photo'];
                        $photoalt = $_POST['photoalt'];
                     
                    if(empty($event) || empty($desc) || empty($photo) || empty($photoalt)){
                        $_SESSION["info"] = "All fields required" ;
                    }
                    else {
                        // SQL QUERY
                        $query = "INSERT INTO event_age(name, description, photo, photo_alt, id_admin) VALUES ('$event','$desc','$photo','$photoalt','$admin')";

                        $run = mysqli_query($db, $query);

                        if($run){
                            $_SESSION["info"] = "";
                        }
                        else {
                            $_SESSION["info"] = "Data has not been added";
                        }
                    }
                }
                ?>
            </div>
            <!-- POPUP YEARS -->
            <div id="popupYears">
                <h2>Years</h2>
                <form method="POST" action="">
                <input type="text" name="year" placeholder="Year">
                <input type="text" name="desc" placeholder="Description...">
                <!-- PHP ERRORS WITH FORM -->
                <p><?php 
                        echo $_SESSION["info"];
                    ?></p>
                <input type="submit" name="insert" value="INSERT">
                </form>
                <a href="#" onclick="toggleYears()">Close</a>
                <?php
                // CONNECT TO DATABASE
                $db = mysqli_connect('localhost', 'root', '', 'dark');
                if ($_SERVER["REQUEST_METHOD"] == "POST") {

                        // VARIABLES
                        $year = $_POST['year'];
                        $desc = $_POST['desc'];
                     
                    if(empty($year) || empty($desc)){
                        $_SESSION["info"] = "All fields required" ;
                    }
                    else {
                        // SQL QUERY
                        $query = "INSERT INTO year_season(year_s, description, id_admin) VALUES ('$year','$desc','$admin')";

                        $run = mysqli_query($db, $query);

                        if($run){
                            $_SESSION["info"] = "";
                        }
                        else {
                            $_SESSION["info"] = "Data has not been added";
                        }
                    }
                }
                ?>
            </div>
            <!-- POPUP SEASONS -->
            <div id="popupSeasons">
                <h2>Season</h2>
                <form method="POST" action="">
                <input type="text" name="season" placeholder="Season">
                <input type="text" name="desc" placeholder="Description...">
                <!-- PHP ERRORS WITH FORM -->
                <p><?php 
                        echo $_SESSION["info"];
                    ?></p>
                <input type="submit" name="insert" value="INSERT">
                </form>
                <a href="#" onclick="toggleSeasons()">Close</a>
                <?php
                // CONNECT TO DATABASE
                $db = mysqli_connect('localhost', 'root', '', 'dark');
                if ($_SERVER["REQUEST_METHOD"] == "POST") {

                        // VARIABLES
                        $season = $_POST['year'];
                        $desc = $_POST['desc'];
                     
                    if(empty($year) || empty($desc)){
                        $_SESSION["info"] = "All fields required" ;
                    }
                    else {
                        // SQL QUERY
                        $query = "INSERT INTO season(season, description, id_admin) VALUES ('$season', '$desc', '$admin')";

                        $run = mysqli_query($db, $query);

                        if($run){
                            $_SESSION["info"] = "";
                        }
                        else {
                            $_SESSION["info"] = "Data has not been added";
                        }
                    }
                }
                ?>
            </div>
    <!-- JAVASCRIPT -->
    <script src="../js/admin.js">
        // INDUCTION JAVASCRIPT
        togglePersons();
        toggleEvents();
        toggleYears();
        toggleSeasons();
    </script>
    <script src="../js/particles.js"></script>
    <script src="../js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</body>
</html>
<!-- PHP -->
<?php
    
?>