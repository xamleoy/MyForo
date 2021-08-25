<?php

    session_start();
    define('TITLE',"ADForo"); 
    
    function strip_bad_chars( $input ){
        $output = preg_replace( "/[^a-zA-Z0-9_-]/", "", $input);
        return $output;
    }
    
    if(isset($_SESSION['userId']))
    {
        header("Location: index.php");
        exit();
    }
    
    include 'includes/HTML-head.php';
?>  
    </head>
    
    <body>


    <section id="cover">
        <div id="cover-caption">
            <div class="container">
                <div class="col-sm-10 offset-sm-1">
                    <img src='img/200.png'>
                    <h5 class="text-white">Login</h5>
                    <br>
                    <?php
                    
                        if(isset($_GET['error']))
                        {   /* comprobacion de todos los campos */
                            if($_GET['error'] == 'emptyfields')
                            {
                                echo '<div class="alert alert-danger" role="alert">
                                        <strong>Error: </strong>Complete todos los campos
                                      </div>';
                            }
                            else if($_GET['error'] == 'nouser')
                            {
                                echo '<div class="alert alert-danger" role="alert">
                                        <strong>Error: </strong>El Usuario No Existe
                                      </div>';
                            }
                            else if ($_GET['error'] == 'wrongpwd')
                            {;
                                echo '<div class="alert alert-danger" role="alert">
                                        <strong>Error: </strong>Contraseña Incorecta - 
                                         <a href="reset-pwd.php" class="alert-link">¿Has olvidado tu Contraseña?</a>
                                      </div>';
                            }
                            else if ($_GET['error'] == 'sqlerror')
                            {
                                echo '<div class="alert alert-danger" role="alert">
                                        <strong>Error: </strong>Error del sitio web. Comuníquese con el administrador para que lo arreglen
                                      </div>';
                            }
                            
                        }
                        else if(isset($_GET['newpwd']))
                        {
                            if($_GET['newpwd'] == 'passwordupdated')
                            {
                                echo '<div class="alert alert-success" role="alert">
                                        <strong>Password Updated </strong>Inicie sesión con su nueva contraseña
                                      </div>';
                            }
                        }
                    ?>
                    <!-- FORMULARIO DE LOGIN -->
                    <form method="post" action="includes/login.inc.php" class="form-inline justify-content-center">
                        <div class="form-group">
                            <label class="sr-only">Nombre de Usuario</label>
                            <input type="text" id="name" name="mailuid"
                                   class="form-control form-control-lg mr-1" placeholder="Nombre de Usuario">
                        </div>
                        <div class="form-group">
                            <label class="sr-only">Password</label>
                            <input type="password" id="password" name="pwd"
                                   class="form-control form-control-lg mr-1" placeholder="Password">
                        </div>
                        <input type="submit" class="btn btn-dark btn-lg mr-1" name="login-submit" value="Login">
                    </form>
                    <br><a href="signup.php" class="btn btn-light btn-lg mr-1">Registrarse</a>
                    
                    <br><br>
                    <div class="position-absolute login-icons">
                        <a href="contact.php">
                            <i class="fa fa-envelope fa-2x social-icon" aria-hidden="true"></i>
                        </a>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </section>

        
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js" ></script>
    </body>
</html>