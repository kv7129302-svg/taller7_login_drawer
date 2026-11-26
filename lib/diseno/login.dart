
import 'package:flutter/material.dart'; // Importa los componentes visuales de Flutter.
import 'aplicacion.dart'; // Importa la pantalla principal de la aplicación.

// Define el color verde claro de la aplicación.
const Color verdeClaro = Color(0xFF8BCB9B);

// Define un verde más oscuro para los botones.
const Color verdeOscuro = Color(0xFF267448);

// Crea la pantalla de inicio de sesión.
class Login extends StatefulWidget {
  // Constructor de la pantalla Login.
  const Login({super.key});

  // Crea el estado de la pantalla.
  @override
  State<Login> createState() => _LoginState();
} // Finaliza Login.

// Define el estado de la pantalla de inicio de sesión.
class _LoginState extends State<Login> {
  // Controlador para leer el nombre de usuario.
  final TextEditingController ctrlUsuario = TextEditingController();

  // Controlador para leer la contraseña.
  final TextEditingController ctrlContrasena = TextEditingController();

  // Función que valida los datos del usuario.
  void ingresar() {
    // Comprueba si el usuario y la contraseña son correctos.
    if (ctrlUsuario.text.trim() == 'usuario' &&
        ctrlContrasena.text == '1234') {
      // Navega a la pantalla principal cuando los datos son correctos.
      Navigator.push(
        // Utiliza el contexto actual.
        context,
        // Crea la ruta hacia la pantalla Aplicación.
        MaterialPageRoute(
          // Construye la pantalla de destino.
          builder: (context) => const Aplicacion(),
        ), // Finaliza MaterialPageRoute.
      ); // Finaliza Navigator.push.
    } else {
      // Muestra un mensaje cuando los datos son incorrectos.
      ScaffoldMessenger.of(context).showSnackBar(
        // Configura el mensaje de error.
        const SnackBar(
          // Escribe el aviso para el usuario.
          content: Text('Usuario o contraseña incorrectos.'),
          // Establece el fondo del mensaje.
          backgroundColor: Colors.red,
        ), // Finaliza SnackBar.
      ); // Finaliza ScaffoldMessenger.
    } // Finaliza la validación.
  } // Finaliza ingresar.

  // Libera los controladores al cerrar la pantalla.
  @override
  void dispose() {
    // Libera el controlador del usuario.
    ctrlUsuario.dispose();

    // Libera el controlador de la contraseña.
    ctrlContrasena.dispose();

    // Ejecuta la limpieza del estado.
    super.dispose();
  } // Finaliza dispose.

  // Construye la interfaz del Login.
  @override
  Widget build(BuildContext context) {
    // Retorna la estructura visual de la pantalla.
    return Scaffold(
      // Establece el fondo blanco.
      backgroundColor: Colors.white,

      // Crea la barra superior.
      appBar: AppBar(
        // Muestra el título Login.
        title: const Text('Login'),

        // Establece el fondo verde claro.
        backgroundColor: verdeClaro,

        // Coloca el título en color oscuro.
        foregroundColor: Colors.black87,

        // Evita la sombra de la barra.
        elevation: 0,
      ), // Finaliza AppBar.

      // Centra el formulario en la pantalla.
      body: Center(
        // Permite desplazar el contenido si es necesario.
        child: SingleChildScrollView(
          // Agrega espacio alrededor del formulario.
          padding: const EdgeInsets.all(25),

          // Organiza los controles verticalmente.
          child: Column(
            // Centra los controles horizontalmente.
            crossAxisAlignment: CrossAxisAlignment.stretch,

            // Define los elementos del formulario.
            children: [
              // Campo para ingresar el usuario.
              TextField(
                // Conecta el campo con su controlador.
                controller: ctrlUsuario,

                // Configura la apariencia del campo.
                decoration: InputDecoration(
                  // Muestra la sugerencia Usuario.
                  hintText: 'Usuario',

                  // Agrega un borde redondeado.
                  border: OutlineInputBorder(
                    // Define las esquinas redondeadas.
                    borderRadius: BorderRadius.circular(8),
                  ), // Finaliza OutlineInputBorder.
                  // Establece un fondo gris muy claro.
                  filled: true,
                  // Define el color del fondo.
                  fillColor: const Color(0xFFF7FAF7),
                ), // Finaliza InputDecoration.
              ), // Finaliza TextField.

              // Agrega espacio entre los campos.
              const SizedBox(height: 16),

              // Campo para ingresar la contraseña.
              TextField(
                // Conecta el campo con su controlador.
                controller: ctrlContrasena,

                // Oculta los caracteres de la contraseña.
                obscureText: true,

                // Configura la apariencia del campo.
                decoration: InputDecoration(
                  // Muestra una sugerencia.
                  hintText: 'Contraseña',

                  // Agrega un borde redondeado.
                  border: OutlineInputBorder(
                    // Define las esquinas redondeadas.
                    borderRadius: BorderRadius.circular(8),
                  ), // Finaliza OutlineInputBorder.
                  // Establece un fondo gris muy claro.
                  filled: true,
                  // Define el color del fondo.
                  fillColor: const Color(0xFFF7FAF7),
                ), // Finaliza InputDecoration.
              ), // Finaliza TextField.

              // Agrega espacio antes del botón.
              const SizedBox(height: 25),

              // Crea el botón para ingresar.
              ElevatedButton(
                // Ejecuta la validación al presionar el botón.
                onPressed: ingresar,

                // Configura el diseño del botón.
                style: ElevatedButton.styleFrom(
                  // Establece el fondo verde oscuro.
                  backgroundColor: verdeOscuro,

                  // Establece el texto blanco.
                  foregroundColor: Colors.white,

                  // Define la altura del botón.
                  minimumSize: const Size(double.infinity, 48),

                  // Redondea las esquinas.
                  shape: RoundedRectangleBorder(
                    // Define el radio de los bordes.
                    borderRadius: BorderRadius.circular(8),
                  ), // Finaliza RoundedRectangleBorder.
                ), // Finaliza ButtonStyle.

                // Escribe el texto del botón.
                child: const Text(
                  // Nombre del botón.
                  'Ingresar',

                  // Coloca el texto en negrita.
                  style: TextStyle(fontWeight: FontWeight.bold),
                ), // Finaliza Text.
              ), // Finaliza ElevatedButton.
            ], // Finaliza children.
          ), // Finaliza Column.
        ), // Finaliza SingleChildScrollView.
      ), // Finaliza Center.
    ); // Finaliza Scaffold.
  } // Finaliza build.
} // Finaliza _LoginState.
