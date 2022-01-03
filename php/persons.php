<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/animate.css">
    <link rel="stylesheet" href="../css/main.css">
    <title>DARK | Unofficial fandom</title>
</head>
<body>
    <!-- NAVBAR -->
    <nav id="navbar">
        <div class="menu-opt">
            <div class="menu-btn">
                <img src="../img/favicon.png" alt="menu-button" id="menu-img">
            </div>
        </div>
        <ul class="menu">
            <h2>DA<span class="reverse-letter">R</span>K</h2>
            <li><a href="./persons.html">Persons</a></li>
            <li><a href="./events.html">Events</a></li>
            <li><a href="./years.html">Years</a></li>
            <li><a href="./index.html">Seasons</a></li>
            <p>&copy;Szymon Bajor & Liliana Cichecka</p>
        </ul>
    </nav>
    <!-- TITLE -->
    <div id="title">
        <h2>Persons</h2>
    </div>
    <!-- MAIN -->
    <div id="main">
        <!-- PHP -->
        <?php 
            $db = mysqli_connect('localhost', 'root', '', 'dark');
            $sql = "SELECT p.Name, p.lastname, p.photo, y.year_s FROM connect_table ct 
                JOIN person p ON ct.id_person = p.id_person
                JOIN year_season y ON ct.id_year = y.id_year
                WHERE y.id_year = '1' ";
            $result = mysqli_query($db, $sql);
                while($row = mysqli_fetch_assoc($result)) {
                    echo ' <div id = "wrapper">
                    <a href="#modalbox"><img src= '.$row['photo'].' alt="Bernd" class="img"></a>
                </div>
                <div id="modalbox" class="modal">
                    <div class="modalcontent">
                        <h1>'.$row['Name'].' '.$row['lastname'].'</h1>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus asperiores magnam temporibus repellat aliquid, incidunt dolores ratione dolor consequuntur aut?</p>
                        <a href="#" class="modalclose">&times;</a>
                    </div>
                </div>';
                }
            mysqli_close($db);
        ?>
       <!-- <div id = "wrapper">
        <a href="#modalbox"><img src="../img/Persons/bernd1913.jpg" alt="Bernd" class="img"></a>
    </div>
    <div id="modalbox" class="modal">
        <div class="modalcontent">
            <h1>Name Person</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Delectus asperiores magnam temporibus repellat aliquid, incidunt dolores ratione dolor consequuntur aut?</p>
            <a href="#" class="modalclose">&times;</a>
        </div>
    </div> -->
    </div>
    <!-- FOOTER -->
    <footer id="foot">
        <audio id="themeMusic">
            <source src="../music/theme.mp3" type="audio/mp3">
        </audio>
    </footer>
    <!-- JS -->
    <script src="../js/main.js"></script>
</body>
</html>
