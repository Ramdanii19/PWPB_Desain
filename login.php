<?php
    include_once("config.php");


    error_reporting(0);

    session_start();
    if (isset($_POST['submit'])) {
        $username = $_POST['username'];
        $password = ($_POST['password']);

        $query = "SELECT * FROM user WHERE username='$username' AND password='$password'";
        $result = mysqli_query($mysqli, $query);
        if ($result->num_rows > 0) {
            $row = mysqli_fetch_assoc($result);
            $_SESSION['username'] = $row['username'];
            header("Location: index.php");
        } else {
            echo "<script>alert('Username atau Password anda salah!')</script>";
        }
    }


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style_login.css">
    <title>Login</title>
</head>
<body>
    <div class="login-box">
        <h2>Login</h2>
        <form method="post">
            <div class="user-box">
                <!--<label>Username</label>-->
                <input type="text" name="username" placeholder="asdsa">
            </div>
            <div class="user-box">
                <!--<label>Password</label>-->
                <input type="password" name="password">
            </div>
            <a href="index.php">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <button type="submit" name="submit"> Login </button>
            </a>
        </form>
    </div>

   
</body>
</html>