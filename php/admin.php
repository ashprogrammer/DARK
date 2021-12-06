<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/x-icon" href="../img/favicon.png">
    <link rel="stylesheet" href="../css/admin.css">
    <link rel="stylesheet" href="../css/animate.css">
    <title>Admin</title>
</head>
<body>
    <div id="particles-js">
        <div id="container" class="boxGlow">
                <form id="login-box" action="" method="post">
                    <h1>DARK</h1>
                    <input type="text" name="username" placeholder="Username">
                    <input type="password" name="passw" placeholder="Password">
                    <input type="submit" name="login" value="Login">
                </form> 
                <p id="subtext">SIC MUNDUS CREATUS EST</p>
        </div>
    </div>
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
    $login_sql = "SELECT login, pass FROM 'admin'; ";
    $result = mysqli_query($db, $login_sql);
    if(isset($submit)) {
        if($login == $result['login']) {
            if($pass == $result['pass']) {
                $error = "";
                header('Location: ./admin_managment.php');
            }
            else {
                $error = "Invalid password";
            } 
        }
        else {
            $error = "Invalid login";
        }
    }
}
?>

INSERT INTO `person`(`name`, `lastname`, `age`, `photo`, `photo_alt`, `id_admin`) VALUES ('Martha', 'Nielsen', '69', '../img/Persons/martha2003.jpg', 'Martha Nielsen 2020', '1');