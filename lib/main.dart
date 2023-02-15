import 'package:flutter/material.dart';
import 'package:sortify/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';

var kprimarygreen = Color(0xFF1FDF64);
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
//init firebase
  final Flutter<FirebaseApp>  _initialization = Firebase.initializeApp
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      //benching the const init
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home:FutureBuilder(
        future: _initialization
        builder: (context,hasError){
          if (shapshot.hasError){
            print("Error :(")
          }
          if (shapshot.connectionState == ConnectionState.done){
            return = MyHomePage(title: 'Flutter Demo Home Page');
          }
        }
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  final MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return LoginScreen();
  }
}
