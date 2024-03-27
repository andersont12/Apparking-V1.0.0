

<div class="content-wrapper">

  <section class="content">

     <div class="row">
       
        <div class="col-lg-12">

          <?php

          if($_SESSION["perfil"] =="Administrador"){
          
           include "Superadmin/template.html";

          }
        
          else
          {
            if($_SESSION["perfil"] =="Tenedor de la mascota")
            {
          
              include "informacion.php";
   
            }
            else
            {
              include "ingreso";
            }
          }

          ?>

        </div>

    </div>

  </section>
 
</div>
