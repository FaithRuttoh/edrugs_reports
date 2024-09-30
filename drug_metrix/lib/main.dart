import 'package:drug_metrix/pages/precaution.dart';
import 'package:flutter/material.dart';

// Importing the pages for login, register, and homepage functionality.
import 'package:drug_metrix/pages/login.dart';
import 'package:drug_metrix/pages/register.dart';
import 'package:drug_metrix/pages/homepage.dart';
import 'package:drug_metrix/pages/myincident.dart';

// The main function is the entry point of the app.
// It calls the runApp() method to start the drug_metrixApp.
void main() {
  runApp(drug_metrixApp()); // Starts the drug_metrixApp widget.
}

// PocketBankingApp class, which is a StatelessWidget.
// This defines the overall structure and theme of the app.
class drug_metrixApp extends StatelessWidget {
  const drug_metrixApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root widget of the app.
    return MaterialApp(
      title:
          'Medication Error Reporting', // Title of the app displayed in the task manager.

      // Defining the theme for the app.
      theme: ThemeData(
        primaryColor:
            Colors.green, // Setting green as the primary color for the app.

        // Defining a color scheme with green as the primary swatch.
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green, // Using a green color scheme.
        ).copyWith(
          secondary:
              Colors.greenAccent, // Setting geenAccent as the secondary color.
        ),

        // Defining text themes for various parts of the app.
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.green), // Styling for large headlines.
          bodyMedium: TextStyle(
              fontSize: 18, color: Colors.black), // Styling for body text.
        ),

        // Defining the default button style for older buttons.
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green, // Teal color for buttons.
          textTheme: ButtonTextTheme
              .primary, // Ensures that button text color is suitable for the button background.
        ),

        // Styling for modern ElevatedButtons.
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .green, // Setting green as the background color for ElevatedButtons.
          ),
        ),
      ),

      // Defining the dark theme for the app.
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.green, // green as the primary color for dark mode.

        // Defining a color scheme for dark mode.
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch:
              Colors.green, // Using green as the main color in dark mode.
        ).copyWith(
          secondary: Colors
              .greenAccent, // green Accent as the secondary color in dark mode.
        ),

        // Defining text themes for dark mode.
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent), // Styling for headlines in dark mode.
          bodyMedium: TextStyle(
              fontSize: 18,
              color: Colors.white), // Styling for body text in dark mode.
        ),

        // Styling for ElevatedButtons in dark mode.
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.green, // Teal background for buttons in dark mode.
          ),
        ),
      ),

      // Setting the app to automatically switch between light and dark mode based on the system settings.
      themeMode: ThemeMode.system, // System-defined theme mode (light/dark).

      // Defining the initial route of the app, which is the login page.
      initialRoute: '/',

      // Defining the routes for navigation between different pages.
      routes: {
        '/': (context) => const LoginPage(), // Root route loads the LoginPage.
        '/register': (context) =>
            const RegisterPage(), // '/register' route loads the RegisterPage.
        '/homepage': (context) =>
            const Homepage(),
           // '/dashboard' route loads the HomePage.
      '/myincidentPage':(context)=>
            MyIncidentPage(),
       '/precaution.page':(context)=>const PrecautionPage(),

      }
    );
  }
}
