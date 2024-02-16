

<body>
    <header>
        <div class="cabeceraPrincipal">
            <div class="logoCabecera">
                <!--logo-->
                <img src="../img/logoCabecera.jpeg" alt="" id="imgLogoCabecera">
            </div>
            <div class="tituloCabecera">
                <h1>Apparking</h1>
            </div>
        </div>
    </header>
    <div class="contenedor">

        <div class="logo">
        </div>
        <div class="registro">
            <h2>Ingresar</h2>
            <form method="post">
                <input type="text" name="ingUsuario" value="" placeholder="Usuario" class="form-control" >
                <input type="password" name="ingPassword" value="" placeholder="Contraseña" class="form-control">
                <button class="login" type="submit" name="Ingresar" value="Ingresar">Ingresar</button>
                <p> ¿Olvido su contraseña? haga click <a class="clickAqui" href="Recuperar_contra.html">AQUÌ</a></p>
                <?php

                    $login = new ControladorUsuarios();
                    $login -> ctrIngresoUsuario();
        
                ?>
            </form>
        </div>
    </div>
<footer>
    AppArking
</footer>

</body>

</html>