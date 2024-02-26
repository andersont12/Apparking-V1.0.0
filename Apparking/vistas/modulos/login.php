<body>
    <div class="contenedor">

        <div class="imagenLogin">

        </div>

        <div class="registro">
            <header>
                <div class="logo">
                    <img src="img/logoCabecera.jpeg" alt="">
                </div>
                <div class="tituloLogo">
                    <h2>Apparking</h2>
                </div>
            </header>
            <div class="contenidoLogin">
                <h2>Ingresar</h2>
                <form method="post">
                    <input type="text" name="ingUsuario" value="" placeholder="Usuario" class="form-control" >
                    <input type="password" name="ingPassword" value="" placeholder="Contraseña" class="form-control">
                    <button class="botonLogin" type="submit" name="Ingresar" value="Ingresar">Ingresar</button>
                    <p> ¿Olvido su contraseña? haga click <a class="clickAqui" href="Recuperar_contra.html">AQUÌ</a></p>
                    <?php

                        $login = new ControladorUsuarios();
                        $login -> ctrIngresoUsuario();
            
                    ?>
                </form>
            </div>
        </div>
    </div>
</body>
</html>