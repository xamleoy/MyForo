<?php

    session_start();
    define('TITLE',"Contacto");
    
    include 'includes/HTML-head.php';
    include 'includes/email-server.php';
?>  

	<link rel="stylesheet" type="text/css" href="css/contact-util.css">
	<link rel="stylesheet" type="text/css" href="css/contact-main.css">
</head>
    
<body>

    
    <?php
    
        if(isset($_SESSION['userId']))
        {
            include 'includes/navbar.php';
        }
        
        use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception; 
        
        require 'PHPMailer/src/Exception.php';
        require 'PHPMailer/src/PHPMailer.php';  
        require 'PHPMailer/src/SMTP.php';
        
        
        // check for header injection
        function has_header_injection($str){
            return preg_match('/[\r\n]/',$str);
        }
    
        if (isset($_POST['contact_submit'])){
            
            
            
            if(!isset($_SESSION['userId']))
            {
                $email = trim($_POST['email']);
                $name = trim($_POST['first-name']).' '.trim($_POST['last-name']);
            }
            else
            {
                $email = trim($_SESSION['emailUsers']);
                $name = 'User: '.$_SESSION['userUid'];
            }
            
            $msg = $_POST['message'];
            
            
            if (has_header_injection($name) || has_header_injection($email)){
                die(); 
            }
            
            if (! $name || ! $email || ! $msg){
                echo '<h4 class="error">Complete todo los campos.</h4>'
                . '<a href="contact.php" class="button block">volver atras para reintentar</a>';
                exit;
            }
            
            
            $to = $email;
            
            $subject = "$name te envió un mensaje a través de tu formulario de contacto";
            
            $message = "<strong>Nombre:</strong> $name<br>" 
                    . "<strong>Email:</strong> <i>$email</i><br><br>"
                    . "<strong>Mensaje:</strong><br><br>$msg";
            
            if (isset($_POST['subscribe']))
            {
                $message .= "<br><br><br>"
                            . "<strong>IMPORTANT:</strong> Por favor añadir <i>$email</i> "
                            . "a tu lista de correos.<br>";
            }
            
            
            $mail = new PHPMailer(true);            
            
            try {
                $mail->isSMTP();                                      
                $mail->Host = 'smtp.gmail.com';                      
                $mail->SMTPAuth = true;                              
                $mail->Username = $SMTPuser;                              
                $mail->Password = $SMTPpwd;             
                $mail->SMTPSecure = 'tls';                           
                $mail->Port = 587;                                    
                
                //Recipients
                $mail->setFrom($to, $SMTPtitle);
                $mail->addAddress($SMTPuser, $SMTPtitle);     

                //Content
                $mail->isHTML(true);                                  
                $mail->Subject = $subject;
                $mail->Body    = $message;
 
                $mail->send();
            } 
            catch (Exception $e) {
                echo '<h4 class="error">No se pudo enviar el mensaje. Error de envío: '. $mail->ErrorInfo
                        .'</h4>';
            }
        }
    ?>

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="post" action="">
				<span class="contact100-form-title">
                Mandanos un mensaje
				</span>

                                <?php 
                                    if(!isset($_SESSION['userId']))
                                    {
                                ?>
                            
                                <label class="label-input100" for="first-name">Dinos tu nombre *</label>
				<div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Nombres">
					<input id="first-name" class="input100" type="text" name="first-name" placeholder="Nombres">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Apellidos">
					<input class="input100" type="text" name="last-name" placeholder="Apellidos">
					<span class="focus-input100"></span>
				</div>
                                
                                <label class="label-input100" for="email">Ingresa tu email *</label>
				<div class="wrap-input100 validate-input" data-validate = "requiere un email valido: example@abc.xyz">
					<input id="email" class="input100" type="text" name="email" placeholder="example@email.com">
					<span class="focus-input100"></span>
				</div>
                                
                                <?php
                                    }
                                ?>
				
                                
                                <div class="checkbox-animated my-4">
                                    <input id="checkbox_animated_1" type="checkbox" name="subscribirse" value="subscribe">
                                    <label for="checkbox_animated_1">
                                        <span class="check"></span>
                                        <span class="box"></span>
                                        Suscribirse para mas actualizaciones
                                    </label>
                                </div>

				<label class="label-input100" for="message">Mensaje *</label>
				<div class="wrap-input100 validate-input" data-validate = "Mensaje requerido">
                                    <textarea id="message" class="input100" name="message" rows="8"
                                                  placeholder="Escribe tu mensaje"></textarea>
					<span class="focus-input100"></span>
				</div>
                                
				<div class="container-contact100-form-btn">
                                    
                                    <input type="submit" class="contact100-form-btn" 
                                           name="contact_submit" value="Enviar Mensaje">
                                    
				</div>
			</form>

			<div class="contact100-more flex-col-c-m" style="background-image: url('img/contact.jpg');">
				<div class="flex-w size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-map-marker"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Acerca de nosotros
						</span>

						<span class="txt2">
                                                    descripcion<br>
                                                    descripcion descripcion
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-phone-handset"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Mas servicios
						</span>

						<span class="txt3">
							otrosservicios.html
						</span>
					</div>
				</div>

				<div class="dis-flex size1 p-b-47">
					<div class="txt1 p-r-25">
						<span class="lnr lnr-envelope"></span>
					</div>

					<div class="flex-col size2">
						<span class="txt1 p-b-20">
							Soporte General
						</span>

						<span class="txt3">
							elultimollamadodivino@gmail.com
						</span>
					</div>
				</div>
                            <?php
                                if(!isset($_SESSION['userId']))
                                {
                                    echo '<a class="contact100-form-btn" href="login.php">Pagina de Inicio de Sesíon</a>';
                                }
                            ?>
			</div>
		</div>
	</div>

        
        <?php include 'includes/footer.php'; ?>
        <script src="js/contact-main.js"></script>
	
<?php include 'includes/HTML-footer.php' ?>