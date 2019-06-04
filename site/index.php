
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Регистрация</title>
  </head>
  <body class="text-center">
    <form action="reg.php" method="POST" enctype="multipart/form-data">
  <h1 class="h3 mb-3 font-weight-normal">Зарегистрироваться</h1>
        <input class="form-control" type="text" name="username" placeholder="Имя пользователя">
        <input class="form-control" type="text" name="name" placeholder="Имя и фамилия">
        <input class="form-control" type="password" name="password" placeholder="Пароль">
        <input class="form-control" type="file" name="avatar" placeholder="Аватар">
  <button class="btn btn-lg btn-primary btn-block" type="submit">Зарегистрироваться</button>
  <a href="http://tupoaihal/project/login.php">Есть аккаунт? Войти</a>
</form>
</body>
</html>
