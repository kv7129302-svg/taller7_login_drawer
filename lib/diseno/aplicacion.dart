
import 'package:flutter/material.dart'; // Importa los componentes visuales de Flutter.

// Define el color verde claro de la aplicación.
const Color verdeMenu = Color(0xFF8BCB9B);

// Define el color verde oscuro para los textos y botones.
const Color verdeMenuOscuro = Color(0xFF267448);

// Crea la pantalla principal de la aplicación.
class Aplicacion extends StatelessWidget {
  // Constructor de la pantalla principal.
  const Aplicacion({super.key});

  // Construye la interfaz de la aplicación.
  @override
  Widget build(BuildContext context) {
    // Retorna la estructura principal de la pantalla.
    return Scaffold(
      // Establece el fondo blanco.
      backgroundColor: Colors.white,

      // Crea la barra superior de la aplicación.
      appBar: AppBar(
        // Muestra el título de la aplicación.
        title: const Text('Aplicación'),

        // Establece el fondo verde claro.
        backgroundColor: verdeMenu,

        // Establece el color de los elementos de la barra.
        foregroundColor: Colors.black87,

        // Elimina la sombra de la barra superior.
        elevation: 0,
      ), // Finaliza AppBar.

      // Crea el menú lateral desplegable.
      drawer: Drawer(
        // Establece el fondo blanco del menú.
        backgroundColor: Colors.white,

        // Organiza los elementos del menú verticalmente.
        child: ListView(
          // Elimina el espacio superior predeterminado.
          padding: EdgeInsets.zero,

          // Define los elementos del menú lateral.
          children: [
            // Crea el encabezado del menú.
            DrawerHeader(
              // Configura el fondo del encabezado.
              decoration: const BoxDecoration(
                // Establece el color verde claro.
                color: verdeMenu,
              ), // Finaliza BoxDecoration.

              // Organiza el contenido del encabezado.
              child: Column(
                // Alinea los elementos a la izquierda.
                crossAxisAlignment: CrossAxisAlignment.start,

                // Distribuye los elementos verticalmente.
                mainAxisAlignment: MainAxisAlignment.center,

                // Define los elementos del encabezado.
                children: [
                  // Muestra un círculo como imagen de usuario.
                  const CircleAvatar(
                    // Define el color del círculo.
                    backgroundColor: Colors.white,

                    // Define el tamaño del círculo.
                    radius: 24,

                    // Muestra el ícono de persona.
                    child: Icon(
                      // Selecciona el ícono de usuario.
                      Icons.person,

                      // Establece el color verde.
                      color: verdeMenuOscuro,

                      // Define el tamaño del ícono.
                      size: 30,
                    ), // Finaliza Icon.
                  ), // Finaliza CircleAvatar.

                  // Agrega espacio debajo del ícono.
                  const SizedBox(height: 10),

                  // Muestra el nombre del usuario.
                  const Text(
                    // Escribe el nombre del usuario.
                    'Usuario',

                    // Configura el estilo del texto.
                    style: TextStyle(
                      // Establece el color del texto.
                      color: Colors.black87,

                      // Coloca el texto en negrita.
                      fontWeight: FontWeight.bold,

                      // Define el tamaño de letra.
                      fontSize: 16,
                    ), // Finaliza TextStyle.
                  ), // Finaliza Text.
                ], // Finaliza children.
              ), // Finaliza Column.
            ), // Finaliza DrawerHeader.

            // Crea la opción Inicio.
            ListTile(
              // Muestra el ícono de inicio.
              leading: const Icon(
                // Selecciona el ícono de casa.
                Icons.home_outlined,

                // Establece el color verde oscuro.
                color: verdeMenuOscuro,
              ), // Finaliza Icon.

              // Define el nombre de la opción.
              title: const Text('Inicio'),

              // Define la acción de la opción.
              onTap: () {
                // Cierra el menú lateral.
                Navigator.pop(context);
              }, // Finaliza onTap.
            ), // Finaliza ListTile.

            // Crea la opción Perfil.
            ListTile(
              // Muestra el ícono de perfil.
              leading: const Icon(
                // Selecciona el ícono de persona.
                Icons.person_outline,

                // Establece el color verde oscuro.
                color: verdeMenuOscuro,
              ), // Finaliza Icon.

              // Define el nombre de la opción.
              title: const Text('Perfil'),

              // Define la acción de la opción.
              onTap: () {
                // Cierra el menú lateral.
                Navigator.pop(context);

                // Muestra un mensaje informativo.
                ScaffoldMessenger.of(context).showSnackBar(
                  // Construye el mensaje emergente.
                  const SnackBar(
                    // Define el contenido del mensaje.
                    content: Text('Opción Perfil seleccionada.'),
                  ), // Finaliza SnackBar.
                ); // Finaliza ScaffoldMessenger.
              }, // Finaliza onTap.
            ), // Finaliza ListTile.

            // Crea la opción Configuración.
            ListTile(
              // Muestra el ícono de configuración.
              leading: const Icon(
                // Selecciona el ícono de ajustes.
                Icons.settings_outlined,

                // Establece el color verde oscuro.
                color: verdeMenuOscuro,
              ), // Finaliza Icon.

              // Define el nombre de la opción.
              title: const Text('Configuración'),

              // Define la acción de la opción.
              onTap: () {
                // Cierra el menú lateral.
                Navigator.pop(context);

                // Muestra un mensaje informativo.
                ScaffoldMessenger.of(context).showSnackBar(
                  // Construye el mensaje emergente.
                  const SnackBar(
                    // Define el contenido del mensaje.
                    content: Text('Opción Configuración seleccionada.'),
                  ), // Finaliza SnackBar.
                ); // Finaliza ScaffoldMessenger.
              }, // Finaliza onTap.
            ), // Finaliza ListTile.

            // Crea la opción Cerrar sesión.
            ListTile(
              // Muestra el ícono para cerrar sesión.
              leading: const Icon(
                // Selecciona el ícono de salida.
                Icons.logout,

                // Establece el color verde oscuro.
                color: verdeMenuOscuro,
              ), // Finaliza Icon.

              // Define el nombre de la opción.
              title: const Text('Cerrar sesión'),

              // Define la acción de la opción.
              onTap: () {
                // Regresa a la primera pantalla de navegación.
                Navigator.of(context).popUntil((route) => route.isFirst);
              }, // Finaliza onTap.
            ), // Finaliza ListTile.
          ], // Finaliza children.
        ), // Finaliza ListView.
      ), // Finaliza Drawer.

      // Define el contenido principal de la aplicación.
      body: Center(
        // Organiza el ícono y el mensaje verticalmente.
        child: Column(
          // Centra los elementos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,

          // Define los elementos del contenido.
          children: [
            // Muestra un ícono representativo de la aplicación.
            const Icon(
              // Selecciona el ícono de aplicación.
              Icons.dashboard_outlined,

              // Define el tamaño del ícono.
              size: 55,

              // Establece el color verde oscuro.
              color: verdeMenuOscuro,
            ), // Finaliza Icon.

            // Agrega espacio debajo del ícono.
            const SizedBox(height: 15),

            // Muestra el mensaje de bienvenida.
            const Text(
              // Escribe el mensaje solicitado.
              'Bienvenido a la aplicación',

              // Configura el estilo del mensaje.
              style: TextStyle(
                // Define el tamaño de letra.
                fontSize: 17,

                // Establece el color del texto.
                color: Colors.black87,
              ), // Finaliza TextStyle.
            ), // Finaliza Text.
          ], // Finaliza children.
        ), // Finaliza Column.
      ), // Finaliza Center.
    ); // Finaliza Scaffold.
  } // Finaliza build.
} // Finaliza Aplicacion.
