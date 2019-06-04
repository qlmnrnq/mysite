<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>
	<body class="">
		<?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
			$query = mysqli_query($connect, "SELECT * FROM users WHERE id =" . $_GET['id']);
			$user=$query->fetch_assoc() ?>
		<nav class="sticky-top navbar navbar-expand-lg navbar-light bg-light">
  			<div class="collapse navbar-collapse" id="navbarSupportedContent">
    			<ul class="navbar-nav mr-auto">
      				<li class="nav-item active">
        				<?php echo '<a class="nav-link" href="http://tupoaihal/project/post.php?id=' . $user['id'] . '">Главная</a>'?>
      				</li>
				    <li class="nav-item active">
				    	<a class="nav-link" href="http://tupoaihal/project/login.php">Выйти</a>
				    </li>
				    <form action="insert.php" method="POST" enctype="multipart/form-data">
						<input type="file" name="img" placeholder="Картинка">
						<input type="" name="text" placeholder="Текст">
						<?php echo '<input type="hidden" name="id" value="' . $user['id'] . '">' ?>
						<?php echo '<input type="hidden" name="username" value="' . $user['username'] .'">' ?>
						<button class="btn btn-primary">Добавить пост</button>
					</form>
					<div class="row">
	 					<div class="col-2">
	 						<?php echo '<img class="rounded-circle w-100 h-100" src="' . $user['avatar'] . '">';?>
	 					</div>
						<div class="col-2">
							<?php echo '<h2 >' . $user['username'] . '</h2>';?>			
						</div>
      				</div>
    			</ul>
  			</div>
		</nav>
		<div class="row mx-auto">
		<?php $con = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
				$query = mysqli_query($con, "SELECT * FROM pin INNER JOIN users ON pin.user_id = users.id") ;
				$querys = mysqli_query($con, "SELECT * FROM pin") ?>
				<?php for ($i=0; $i < $query->num_rows; $i++) { 
				$asd = $query->fetch_assoc(); 
				$add = $querys->fetch_assoc();?>
				<div class="card col-3" style="width: 18rem;">
			 		<?php echo '<img src="' . $asd['img'] . '" class="card-img-top" alt="...">' ?>
	  					<div class="card-body">
						    <h5 class="card-title"><?php echo $asd['text'] ?></h5>
						    <div class="row">
						    		<?php echo '<h2 name="username col-2">' . $asd['username'] . '</h2>'; ?>
						    </div>
						    <form action="comment.php" method="GET">
								<?php echo '<input type="hidden" name="pin_id" value="' . $add['pin_id'] . '">'?>
								<?php echo '<input type="hidden" name="id" value="' . $user['id'] . '">'?>
								<button class="btn btn-primary">Комментарии</button>
							</form>
						</div>
				</div>
		<?php } ?>    
		</div>
	</body>
</html>