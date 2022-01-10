<?php 
    session_start();
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.png">
    <!-- CSS LINKS -->
    <link rel="stylesheet" href="../css/admin.css">
    <link rel="stylesheet" href="../css/animate.css">
    <title>Admin</title>
</head>
<body>
    <!-- PARTICLES-JS -->
    <div id="particles-js">
        <div id="container" class="boxGlow">
                <form id="login-box" action="" method="post">
                    <h1>DARK</h1>
                    <input type="text" name="username" placeholder="Username">
                    <input type="password" name="pass" placeholder="Password">
                    <input type="submit" name="login" value="Login">
                </form> 
                <!-- SUBTEXT -->
                <p id="subtext">SIC MUNDUS CREATUS EST</p>
        </div>
    </div>
    <!-- JAVASCRIPT -->
    <script src="../js/particles.js"></script>
    <script src="../js/app.js"></script>
</body>
</html>
<!-- PHP -->
<?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $db = mysqli_connect('localhost', 'root', '', 'dark');
        $login = $_POST['username'];
        $pass = $_POST['pass'];
        $submit = $_POST['login'];
        $error = "";
        $login_sql = "SELECT id_admin, login, pass FROM `admin` WHERE login = '$login' ";
        $result = mysqli_query($db, $login_sql);
        while ($row = mysqli_fetch_assoc($result)) {
            if(isset($submit)) {
                if($login == $row['login']) {
                    if($pass == $row['pass']) {
                        $error = "";    
                        $_SESSION["admin"] = $row['id_admin'];
                        header('Location: ./admin_managment.php'); 
                    }
                    else {
                        $error = "Invalid password or login";
                    } 
                }
                else {
                    $error = "Invalid password or login";
                }
            }
        }
}
mysqli_close($db);
echo $error;
?>