<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
$query = mysqli_query($connect, "INSERT INTO comments (text, pin_id, user_id) VALUES ('" . $_GET['text'] . "', '" . $_GET['pin_id'] . "', '" . $_GET['id'] . "')");
header('Location: http://tupoaihal/project/comment.php?pin_id=' . $_GET['pin_id'] . '&id=' . $_GET['id']);
 ?>