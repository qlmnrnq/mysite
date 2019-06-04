<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
$query = mysqli_query($connect, "SELECT * FROM users WHERE username ='" . $_POST['username'] . "' AND password = '" .  $_POST['password'] . "'");
$asd = $query->fetch_assoc();
if($query->num_rows == 0){
	header('Location: http://tupoaihal/project/login.php');
} else {
	header('Location: http://tupoaihal/project/post.php?id=' . $asd['id']);
};
?>