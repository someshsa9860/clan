import 'package:clan/providers/all_in_one.dart';
import 'package:clan/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (ctx)=>AllInOneProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.montserrat(color: Colors.white)
          )
        ),

        home: const Dashboard(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
