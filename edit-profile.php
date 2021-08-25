<?php

    session_start();
    require 'includes/dbh.inc.php';
    
    define('TITLE',"Edit Profile | KLiK");
    
    if(!isset($_SESSION['userId']))
    {
        header("Location: login.php");
        exit();
    }
    
    include 'includes/HTML-head.php';  
?> 
</head>
<body>

    <?php include 'includes/navbar.php'; ?>
      <div class="container">
        <div class="row">
            <div class="col-sm-3">
            
                <?php include 'includes/profile-card.php'; ?>
                
            </div>
        <div class="col-sm-8 text-center" id="user-section">
              
              <img class="cover-img" id='blah-cover' src="img/user-cover.png">
              
              <form action="includes/profileUpdate.inc.php" method='post' enctype="multipart/form-data"
                    style="padding: 0 30px 0 30px;">
                    
              
                    <label class="btn btn-primary">
                        Cambiar Avatar <input type="file" id="imgInp" name='dp' hidden>
                    </label>
                    <img class="profile-img" id="blah"  src="#"> 


                    <?php  
                          if ($_SESSION['userLevel'] === 1)
                          {
                              echo '<img id="admin-badge" src="img/admin-badge.png">';
                          }
                    ?>

                    <h2><?php echo strtoupper($_SESSION['userUid']); ?></h2>
                    <br>
                  
                    <div class="form-row">
                      <div class="col">
                        <input type="text" class="form-control" name="f-name" placeholder="Nombres"
                               value="<?php echo $_SESSION['f_name'] ?>" >
                        <small id="emailHelp" class="form-text text-muted">Nombres</small>
                      </div>
                      <div class="col">
                        <input type="text" class="form-control" name="l-name" placeholder="Apellidos" 
                               value="<?php echo $_SESSION['l_name'] ?>" >
                        <small id="emailHelp" class="form-text text-muted">Apellidos</small>
                      </div>
                    </div>
                  
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" name="email" placeholder="email" 
                               value="<?php echo $_SESSION['emailUsers'] ?>" >
                        <small id="emailHelp" class="form-text text-muted">Nunca compartiremos su correo electrónico con nadie más.</small>
                    </div>
                  
                    <div class="form-group">
                                <label >Genero</label><br>
                                <input id="toggle-on" class="toggle toggle-left" name="gender" value="m" type="radio" 
                                    <?php 
                                        if ($_SESSION['gender'] == 'm'){ ?> 
                                            checked="checked"
                                    <?php } ?>>
                                <label for="toggle-on" class="btn-r">M</label>
                                <input id="toggle-off" class="toggle toggle-right" name="gender" value="f" type="radio"
                                    <?php if ($_SESSION['gender'] == 'f'){ ?> 
                                            checked="checked"
                                    <?php } ?>>
                                <label for="toggle-off" class="btn-r">F</label>
                    </div>
                  
                  <hr>
                  
                    <div class="form-group">
                        <label for="headline">Titulo de Perfil</label>
                        <input class="form-control" type="text" id="headline" name="headline" 
                               placeholder="Título de su perfil" value='<?php echo $_SESSION['headline']; ?>'><br>
                        
                        <label for="edit-bio">Perfil Biografico</label>
                        <textarea class="form-control" id="edit-bio" rows="10" name="bio" maxlength="5000"
                            placeholder="Qué quieres decirle a la gente sobre ti" 
                            ><?php echo $_SESSION['bio']; ?></textarea>
                    </div>
                  
                  <hr>
                  
                  <div class="form-group">
                        <label for="old-pwd">Cambiar Contraseña</label>
                        <input type="password" class="form-control" id="old-pwd" name="old-pwd"
                               placeholder="Contraseña actual">
                    </div>
                  
                    <div class="form-row">
                      <div class="col">
                        <input type="password" class="form-control" id="exampleInputPassword1" name="pwd"
                               placeholder="Nueva Contraseña">
                      </div>
                      <div class="col">
                        <input type="password" class="form-control" id="exampleInputPassword1" name="pwd-repeat"
                               placeholder="Repita la Nueva Contraseña">
                      </div>
                    </div>
                  
                  <br><input type="submit" class="btn btn-primary" name="update-profile" value="Actualizar Perfil">
                  
              </form>
              
              
          </div>
          <div class="col-sm-1">
            
          </div>
        </div>


      </div> <!-- /container -->


<?php include 'includes/footer.php'; ?>

                            

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
        
                            <script>
                                var dp = '<?php echo $_SESSION["userImg"]; ?>';
                                
                                $('#blah').attr('src', 'uploads/'+ dp);
                                
                                function readURL(input) {

                                    if (input.files && input.files[0]) {
                                      var reader = new FileReader();

                                      reader.onload = function(e) {
                                        $('#blah').attr('src', e.target.result);
                                        
                                      }

                                      reader.readAsDataURL(input.files[0]);
                                    }
                                  }

                                  $("#imgInp").change(function() {
                                    readURL(this);
                                  });
                                  
                                  
                            </script>
        
    </body>
</html>