<?php

    session_start();
    
    define('TITLE',"Create Category | KLiK");
    
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
    
    <div class="bg-contact2" style="background-image: url('img/black-bg.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form" method="post" action="includes/create-category.inc.php">
					<span class="contact2-form-title">
						Crear Categoria
					</span>

                                        <span class="text-center">
                                        <?php
                                            if(isset($_GET['error']))
                                            {
                                                if($_GET['error'] == 'emptyfields')
                                                {
                                                    echo '<h5 class="text-danger">*Complete todos los campos</h5>';
                                                }
                                                else if ($_GET['error'] == 'catnametaken')
                                                {
                                                    echo '<h5 class="text-danger">*Ya existe una categoría con el mismo nombre</h5>';
                                                }
                                                else if ($_GET['error'] == 'sqlerror')
                                                {
                                                    echo '<h5 class="text-danger">*Error del sitio web: comuníquese con el administrador para solucionar el problema</h5>';
                                                }
                                            }
                                            else if (isset($_GET['catcreation']) == 'success')
                                            {
                                                echo '<h5 class="text-success">*Categoria creada con exito</h5>';
                                            }
                                        ?>
                                        </span>
                                    
					<div class="wrap-input2 validate-input" data-validate="Nombre requerido">
						<input class="input2" type="text" name="cat_name">
						<span class="focus-input2" data-placeholder="Nombre de la Categoría"></span>
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Descripcion requerida">
						<textarea class="input2" name="cat_description"></textarea>
						<span class="focus-input2" data-placeholder="Descripcion de la categoría"></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
                                                        <button class="contact2-form-btn" type="submit" name="create-cat">
                                                        Añadir categoría
                                                        </button>
                                                        
						</div>
					</div>
                                    <div class="text-center">
                                        <br><br><a class="btn btn-light btn-lg btn-block" href="categories.php">
                                        Ver categorías</a>
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
