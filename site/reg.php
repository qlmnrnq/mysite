<?php $con = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
$file_tmp = $_FILES['avatar']['tmp_name'];
$file_name = $_FILES['avatar']['name'];
$query = mysqli_query($con, "INSERT INTO users (username, name, password, avatar) VALUES ('" . $_POST['username'] . "', '" . $_POST['name'] . "', '" . $_POST['password'] . "', 'IMAGES/" . $file_name . "')");
move_uploaded_file($file_tmp, "IMAGES/" . $file_name);
header('Location: http://tupoaihal/project/login.php');
 ?>