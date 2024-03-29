<aside class="main-sidebar">

	 <section class="sidebar">

		<ul class="sidebar-menu">

		<?php

		if($_SESSION["perfil"] == "Administrador")
		{

			echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			<li>

				<a href="usuarios">

					<i class="fa fa-user"></i>
					<span>Usuarios</span>

				</a>

			</li>
			
			<li>

				<a href="mascotas">

					<i class="fa fa-product-hunt"></i>
					<span>Mascotas</span>

				</a>

			</li>
			
			<li>

				<a href="salir">

					<i class="fa fa-product-hunt"></i>
					<span>salir</span>

				</a>

			</li>'
			;

		}else{
			if($_SESSION["perfil"] == "Tenedor de la mascota")
			{

			echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			
			<li>

				<a href="mascotas">

					<i class="fa fa-product-hunt"></i>
					<span>Mascotas</span>

				</a>

			</li>';
		}
		}


		?>

		</ul>

	 </section>

</aside>