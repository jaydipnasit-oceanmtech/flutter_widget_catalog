import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/provider_logic.dart';
import 'package:flutter_application_1/provider/provider_view.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_application_1/views/Widget_Screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CommonCalss(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme:
            ThemeData(brightness: Brightness.light, scaffoldBackgroundColor: Colors.white, primaryColor: Colors.amber),
        // darkTheme:
        //     ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Colors.black, primaryColor: Colors.amber),

        home: ProdviderScreen(),
      ),
    );
  }
}
