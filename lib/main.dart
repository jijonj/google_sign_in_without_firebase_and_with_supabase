import 'package:flutter/material.dart';
import 'package:google_sign_in_supabase/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  /// TODO: update Supabase credentials with your own
  await Supabase.initialize(
    url: 'https://pspldnxfnjwbpxajjycw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBzcGxkbnhmbmp3YnB4YWpqeWN3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDUwNDgzMzMsImV4cCI6MjAyMDYyNDMzM30.b7nVBlh-cdxgahd_z2NsFkgOzVbyd2f0YuMlyldbw_c',
  );
  runApp(const MyApp());
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
