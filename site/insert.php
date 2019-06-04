<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
$file_tmp = $_FILES['img']['tmp_name'];
$file_name = $_FILES['img']['name'];
$query = mysqli_query($connect, "INSERT INTO pin (img, text, user_id) VALUES ('IMAGES/" . $file_name . "','" . $_POST['text'] . "','" . $_POST['id'] . "')");
move_uploaded_file($file_tmp, "IMAGES/" . $file_name);
header('Location: http://tupoaihal/project/post.php?id=' . $_POST['id'])
 ?>