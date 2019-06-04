<!DOCTYPE html>
<html>
	<head>
		<title>Вход</title>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>
	<body class="text-center">
    <form action="check.php" method="POST" enctype="multipart/form-data">
  <h1 class="h3 mb-3 font-weight-normal">Войти</h1>
        <input class="form-control" type="text" name="username" placeholder="Имя пользователя">
        <input class="form-control" type="password" name="password" placeholder="Пароль">
    	<button class="btn btn-lg btn-primary btn-block" type="submit">Вход</button>
    	<a href="http://tupoaihal/project/">Регистрация</a>
</form>
</body>
</html>