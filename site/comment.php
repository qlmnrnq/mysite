<!DOCTYPE html>
<html>
	<head>
		<title>Комментарии</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>
	<body>
		<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
		$query = mysqli_query($connect, "SELECT * FROM users WHERE id = " . $_GET['id'] . "");
		$asd = $query->fetch_assoc(); ?>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
    			<ul class="navbar-nav mr-auto">
        			<li class="nav-item active">
        				<?php echo '<a class="nav-link" href="http://tupoaihal/project/post.php?id=' . $asd['id'] . '">Главная</a>'?>
       				</li>
        			<li class="nav-item active">
        				<a class="nav-link" href="http://tupoaihal/project/login.php">Выйти</a>
        			</li>
					<div class="row">
				 		<div class="col-2">
				 			<?php echo '<img class="rounded-circle w-100 h-100" src="' . $asd['avatar'] . '">';?>
				 		</div>
						<div class="col-2">
							<?php echo '<h2>' . $asd['username'] . '</h2>';?>			
						</div>
			    	</div>
    			</ul>
  			</div>
		</nav>
<?php $quer = mysqli_query($connect, "SELECT * FROM pin INNER JOIN users ON pin.user_id = users.id WHERE pin.pin_id = " . $_GET['pin_id'] . ""); 
 $ssd = $quer->fetch_assoc(); ?>
		<div class="card" style="width: 18rem;">
			<?php echo '<img src="' . $ssd['img'] . '" class="card-img-top" alt="...">' ?>
				<div class="card-body">
			    	<h5 class="card-title"><?php echo $ssd['text'] ?></h5>
			   		<div class="row">
			    	<?php echo '<img class="h-50 w-25 rounded-circle" name="avatar" src="' . $ssd['avatar'] . '">'; ?>
			    	<?php echo '<h2 name="username">' . $ssd['username'] . '</h2>'; ?>
			    </div>
			</div>
		</div>
<h1>Коментарии</h1>
<?php $querys = mysqli_query($connect, "SELECT * FROM comments INNER JOIN users ON comments.user_id = users.id WHERE pin_id = " . $_GET['pin_id'] . "");
for ($i=0; $i < $querys->num_rows; $i++) {
$comment = $querys->fetch_assoc(); ?>
		<div class="row">
			<?php echo '<img class="col-1 w-100 h-100 rounded-circle" src="' . $comment['avatar'] . '">' ?>
	 		<h5>
		 		<?php echo $comment['username'] ?>
			</h5>
	 	</div>
	 	<div>
	 		<h2>
				<?php echo $comment['text'] ?>
			</h2>
	 	</div>
<?php } ?>
		<form action="add_comment.php" method="GET">
				<?php echo '<input type="hidden" name="id" value="' . $asd['id'] . '">' ?>
				<?php echo '<input type="hidden" name="pin_id" value="' . $ssd['pin_id'] . '">' ?>
				<input type="text" name="text">
				<button class="btn btn-primary">Отправить</button>
		</form>
	</body>
</html>