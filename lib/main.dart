
import 'package:flutter/material.dart'; // Importa los componentes visuales.
import 'diseno/login.dart'; // Importa la pantalla de inicio de sesión.

// Función principal que inicia la aplicación.
void main() {
  // Ejecuta la aplicación Flutter.
  runApp(const MyApp());
} // Finaliza main.

// Crea el widget principal de la aplicación.
class MyApp extends StatelessWidget {
  // Constructor del widget principal.
  const MyApp({super.key});

  // Construye la aplicación.
  @override
  Widget build(BuildContext context) {
    // Configura la aplicación.
    return MaterialApp(
      // Oculta el banner de desarrollo.
      debugShowCheckedModeBanner: false,

      // Establece el nombre de la aplicación.
      title: 'Taller 7 UAE',

      // Configura el tema general.
      theme: ThemeData(
        // Establece el color verde principal.
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF8BCB9B)),

        // Activa Material Design 3.
        useMaterial3: true,
      ), // Finaliza ThemeData.

      // Establece Login como primera pantalla.
      home: const Login(),
    ); // Finaliza MaterialApp.
  } // Finaliza build.
} // Finaliza MyApp.
