<?php
$con = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
$query = mysqli_query($con, "DELETE FROM pin WHERE id = '" . $_GET['id'] . "'");
header('Location: http://tupoaihal/project/post.php?id=');
?>