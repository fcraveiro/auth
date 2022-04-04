import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_auth/screens/dashboard.dart';
import 'package:supabase_auth/screens/sign_in_screen.dart';
import 'package:supabase_auth/screens/sign_up_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://pfadasbrbkwhqcecijnp.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBmYWRhc2JyYmt3aHFjZWNpam5wIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NDUzODMxMTYsImV4cCI6MTk2MDk1OTExNn0.LUQhDSpu3PzeahG7rCjxKXVffo0FUYgxQ5jq47vMbc0',
      authCallbackUrlHostname: 'login-callback', // optional
      debug: true // optional
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const SignInScreen(),
        '/signup': (_) => const SignUpScreen(),
        '/dashboard': (_) => const DashboardScreen(),
      },
    );
  }
}
