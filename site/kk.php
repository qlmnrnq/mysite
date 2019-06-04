 <!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <?php $connect = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
      $query = mysqli_query($connect, "SELECT * FROM users WHERE id =" . $_GET['id']);
       $user=$query->fetch_assoc() ?>
     
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Nonterest</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <?php echo '<a class="nav-link" href="http://tupoaihal/project/post.php?id=' . $user['id'] . '">Главная</a>'?>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="http://tupoaihal/project/login.php">Выйти</a>
      </li>
    </ul>
    <div class="row">
          <div class="col-1">
        <?php echo '<img class="w-100 rounded-circle" src="' . $user['avatar'] . '">';?>
      </div>
      <div class="col-2">
        <?php echo '<h2 >' . $user['username'] . '</h2>';?>
      </div>
      </div>
  </div>
</nav>
      
<div>
  <form action="insert.php" method="POST" enctype="multipart/form-data">
    <input type="file" name="img" placeholder="Картинка">
    <input type="" name="text" placeholder="Текст">
    <?php echo '<input type="hidden" name="id" value="' . $user['id'] . '">' ?>
    <?php echo '<input type="hidden" name="username" value="' . $user['username'] .'">' ?>
    <button>Добавить пост</button>
  </form>
</div>
<div>
<?php $con = mysqli_connect('127.0.0.1', 'root', '', 'aihal_pn_9');
    $query = mysqli_query($con, "SELECT * FROM pin INNER JOIN users ON pin.user_id = users.id") ;
    $querys = mysqli_query($con, "SELECT * FROM pin") ?>
    <?php for ($i=0; $i < $query->num_rows; $i++) { 
    $asd = $query->fetch_assoc(); 
    $add = $querys->fetch_assoc();?>
          <div>
            <?php echo '<img name="avatar" src="' . $asd['avatar'] . '">'; ?>
          </div>
          <div>
            <?php echo '<h2 name="username">' . $asd['username'] . '</h2>'; ?>
          </div>
          <div>
            <?php echo '<img name="img" src="' . $asd['img'] . '">'; ?>
          </div>
          <div>
            <?php echo '<p name="text">' . $asd['text'] . '</p>'; ?>
          </div>
        <form action="comment.php" method="GET">
            <?php echo '<input type="hidden" name="pin_id" value="' . $add['pin_id'] . '">'?>
            <?php echo '<input type="hidden" name="id" value="' . $user['id'] . '">'?>
            <button>Комментарии</button>
        </form>
      
<?php } ?>    
    </div>
 
 <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-4">
          <div class="card mb-4 shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
            <div class="card-body">
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div>
            </div>
          </div>
        </div>
         </body>
</html>