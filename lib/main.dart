import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geoflutterfire2/geoflutterfire2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() async{

  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: NearbyLocation(),
    );
  }
}
class NearbyLocation extends StatelessWidget{
  NearbyLocation({Key? key}) : super(key: key);


  final geo = GeoFlutterFire();
  final _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            // child: MapSample()

            ),
          ),
        ),
      );

  }

}

