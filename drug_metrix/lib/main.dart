import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Importing pages for the app.
import 'package:drug_metrix/pages/login.dart';
import 'package:drug_metrix/pages/homepage.dart';
import 'package:drug_metrix/pages/errorreport.dart';
import 'package:drug_metrix/pages/precaution.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const DrugMetrixApp());
}

// Main app class
class DrugMetrixApp extends StatelessWidget {
  const DrugMetrixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medication Error Reporting',
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.greenAccent,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.green),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.greenAccent,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.greenAccent),
          bodyMedium: TextStyle(fontSize: 18, color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        ),
      ),
      themeMode: ThemeMode.system,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const AuthenticationScreen(),
  // Other routes...
        '/homepage': (context) => const AdminDashboard(), // Admin dashboard route
        '/errorreportpage': (context) => const ErrorReportForm(), // Error report page route
        '/precaution.page': (context) => const PrecautionPage(), // Precaution page route
      },
    );
  }
}
