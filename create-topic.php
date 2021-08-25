<?php

    session_start();
    include_once 'includes/dbh.inc.php';
    
    define('TITLE',"Crear Foro | AD");
    
    if(!isset($_SESSION['userId']))
    {
        header("Location: login.php");
        exit();
    }
    
    include 'includes/HTML-head.php';
?>  

        <link rel="stylesheet" type="text/css" href="css/comp-creation.css">
</head>

<body>

    <?php include 'includes/navbar.php'; ?>
    
    
    <div class="bg-contact2" style="background-image: url('img/banner.png');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form" method="post"  action="includes/create-topic.inc.php">
					<span class="contact2-form-title">
						Crear Foro
					</span>
                                    
                                        <span class="text-center">
                                        <?php
                                            if(isset($_GET['error']))
                                            {
                                                if($_GET['error'] == 'emptyfields')
                                                {
                                                    echo '<h5 class="text-danger">*Complete todos los campos</h5>';
                                                }
                                                else if ($_GET['error'] == 'sqlerror')
                                                {
                                                    echo '<h5 class="text-danger">*Error del sitio web: comuníquese con el administrador para solucionar el problema</h5>';
                                                }
                                            }
                                            else if (isset($_GET['operation']) == 'success')
                                            {
                                                echo '<h5 class="text-success">*Foro creado con éxito</h5>';
                                            }
                                        ?>
                                        </span>
                                    
                                    <?php
                                        $sql = "select cat_id, cat_name from categories;";
                                        $stmt = mysqli_stmt_init($conn);    

                                        if (!mysqli_stmt_prepare($stmt, $sql))
                                        {
                                            die('sql error');
                                        }
                                        else
                                        {
                                            mysqli_stmt_execute($stmt);
                                            $result = mysqli_stmt_get_result($stmt);

                                            if (mysqli_num_rows($result) == 0)
                                            {
                                                echo "<h5 class='text-center text-muted'>No puede crear un tema antes de que el administrador lo cree "
                                                . "some categories</h5>";
                                            }
                                            else
                                            {
                                    ?>
                                    
                                    

					<div class="wrap-input2 validate-input" data-validate="Nombre Requerido">
						<input class="input2" type="text" name="topic-subject">
						<span class="focus-input2" data-placeholder="Asunto del Foro"></span>
					</div>
                                    

                                        <label>Categoria</label>
                                        <select  class="form-control" name="topic-cat" >
                                        <?php 
                                            while($row = mysqli_fetch_assoc($result))
                                            {
                                                echo '<option value='.$row['cat_id'].'>' . $row['cat_name'] . '</option>';
                                            }
                                        ?>
                                        </select><br><br>
                                        
                                    
					<div class="wrap-input2 validate-input" data-validate = "Decripcion Requerida">
						<textarea class="input2" name="post-content"></textarea>
						<span class="focus-input2" data-placeholder="Descripcion del Foro"></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
                                                        <button class="contact2-form-btn" type="submit" name="create-topic">
								Crear Foro
							</button>
						</div>
					</div>
                                    
                                    
                                    
                                    <?php
                                            }
                                        }
                                    ?>
                                        
                                    <div class="text-center">
                                        <br><br><a class="btn btn-light btn-lg btn-block" href="topics.php">
                                            Ver Foros</a>
                                    </div>
				</form>
			</div>
		</div>
	</div>
    
    
        
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
        <script src="js/creation-main.js"></script>
    </body>
</html>
