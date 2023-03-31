<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!--Bootstrap
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">  </div>
  <!-- Custom styles for templates -->
      <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/album/">
      <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <h1>Datos de la Persona</h1>
        <form action="SvPersona" method="POST">
            <p><label>Dni: </label> <input type="text" name="dni"></p>
            <p><label>Nombre: </label> <input type="text" name="nombre"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido"></p>
            <p><label></label>Teléfono: <input type="text" name="telefono"></p>
            <button type="submit" >Enviar</button>
        </form>
        <h1>Ver lista de Personas</h1>
        <p>Si desea ver las personas haga click en el boton <b>mostrar personas</b></p>
        <form action="SvPersona" method="GET">
            <button type="submit">Mostrar Personas</button>
        </form>
        
        <h1>Eliminar Personas</h1>
        <p>Ingrese la id de la persona a eliminar</p>
        <form action="SvEliminar" method="POST">
            <p><label>Id: </label> <input type="text" name="id_eliminar"></p>
            <button type="submit">Eliminar</button>
            
        <h1>Editar Personas</h1>
        <p>Ingrese la id de la persona a modificar</p>
        <form action="SvEditar" method="GET">
            <p><label>Id: </label> <input type="number" name="id_buscar"></p>
            <button type="submit">Buscar</button>
        </form>
        
        <!-- <div class="banner">
  <div class="form-signin">
            <img src="" alt="">
            <h1>Iniciar sesión</h1>
            <form>
                <label for="username">Usuario</label>
                <br>
                <input type="email" class="form-control" placeholder="Usuario">
                <label for="password">Contraseña</label>
                <br>
                <input type="password" class="form-control" placeholder="Contraseña">
                <button type="button" class="btn btn-outline" style="margin-bottom: 20px;">Ingresar</button><br>
                <a href="#">Olvide mi contraseña</a><br>
                <a href="#">Crear cuenta</a>
            </form>
  </div>
</div>
           -->
    </body>
</html>
