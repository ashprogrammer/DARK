<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/admin_panel.css">
    <title>Admin Managment</title>
</head>
<body>
        <div id="blur">
            <nav id="nav"> 
                <h1>DARK</h1>
            </nav>
            <main id="main">
                <p><span class="delay">Choose one options</span></p>
            </main>
            <div class="opt">
                <p><a href="#" onclick="togglePersons()" id="personDelay">Persons</a></p>
                <p><a href="#" onclick="toggleEvents()" id="eventsDelay">Events</a></p>
                <p><a href="#" onclick="toggleYears()" id="yearsDelay">Years</a></p>
                <p><a href="#" onclick="toggleSeasons()" id="seasonDelay">Seasons</a></p>
            </div>
            <div class="desc">
                <p>You can add a new persons, events, years and seasons. Later this information going to database and final website</p>
                <p>----------------------------------------------------------------------------------------------------------------</p>
                <p>When adding photos, you need to enter a file path, e.g. '../img/photo.jpg'</p>
            </div>
        </div>
            <div id="popupPersons">
                <h2>Persons</h2>
                <input type="text" name="name" placeholder="Name">
                <input type="text" name="lastname" placeholder="Lastname">
                <input type="text" name="age" placeholder="Age">
                <input type="text" name="desc" placeholder="Description">
                <input type="text" name="photo" placeholder="Upload photo">
                <input type="submit" name="insert" value="INSERT">
                <a href="#" onclick="togglePersons()">Close</a>
            </div>
            <div id="popupEvents">
                <h2>Events</h2>
                <input type="text" name="event" placeholder="Events">
                <input type="text" name="desc" placeholder="Description...">
                <input type="text" name="photo" placeholder="Upload photo">
                <input type="submit" name="insert" value="INSERT">
                <a href="#" onclick="toggleEvents()">Close</a>
            </div>
            <div id="popupYears">
                <h2>Years</h2>
                <input type="text" name="year" placeholder="Year">
                <input type="text" name="desc" placeholder="Description...">
                <input type="submit" name="insert" value="INSERT">
                <a href="#" onclick="toggleYears()">Close</a>
            </div>
            <div id="popupSeasons">
                <h2>Season</h2>
                <input type="text" name="season" placeholder="Season">
                <input type="text" name="desc" placeholder="Description...">
                <input type="submit" name="insert" value="INSERT">
                <a href="#" onclick="toggleSeasons()">Close</a>
            </div>
    <!-- JS -->
    <script src="../js/admin.js">
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