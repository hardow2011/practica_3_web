<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Crear usuario</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="/css/miEstilo.css" rel="stylesheet" >

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div style="flex-grow: 1; justify-content:flex-start; padding:0;">
            <#if !conectado??>
                <a class="nav-link" href="/login">Login</a>
            <#else>
                <a class="nav-link" href="/logout">Logout (${nombreUsuario})</a>
            </#if>
        </div>
        <div style="display:flex; justify-content:flex-end; padding:0;">
        <a class="nav-link" href="/carro-compra/vista-tienda">Comprar</a>
        <a class="nav-link" href="/carro-compra/ventas-productos">Ventas realizadas</a>
        <a class="nav-link" href="/crud-productos/listar">Administrar productos</a>
        <a class="nav-link" href="/crear-usuario">Crear usuario</a>
        <a class="nav-link" href="/carro-compra/compras">Carrito(${tamagnoCarritoCompra})</a>
        </div>
      </div>
    </nav>
    <div class="container">
        <div class="jumbotron">
            <h1 class="display-4">Crear usuario</h1>
        </div> 
        <form enctype="application/x-www-form-urlencoded" action=${accion} method="post">
          <div class="form-group">
            <label for="usuarioInput">Usuario</label>
            <input type="text" class="form-control" id="usuarioInput" name="usuario" required/><br>
            <label for="nombreInput">Nombre</label>
            <input type="text" class="form-control" id="nombreInput" name="nombre" required/><br>
            <label for="passwordInput">Contraseña</label>
            <input type="password" class="form-control" id="passwordInput" name="password" required/><br/>
            <input type="submit" class="btn btn-success confirmar" value="Crear usuario"/>
          </div>
        </form>
    </div> 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>