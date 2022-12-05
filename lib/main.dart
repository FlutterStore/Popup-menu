import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Poppupbuttronn(),
    );
  }
}

class Poppupbuttronn extends StatefulWidget {
  const Poppupbuttronn({ Key? key }) : super(key: key);

  @override
  State<Poppupbuttronn> createState() => _PoppupbuttronnState();
}

class _PoppupbuttronnState extends State<Poppupbuttronn> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        title: const Text("PopupMenuButton",style: TextStyle(fontSize: 15),),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            icon: const FaIcon(FontAwesomeIcons.ellipsisVertical,color: Colors.white,size: 22,),
            color: Colors.white,
              onSelected: (value) 
              {
                if(value == 0)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()));
                }
                if(value == 1)
                {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                }
                if(value == 2)
                {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                }
                if(value == 3)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()));
                }
                if(value == 4)
                {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                }
                if(value == 5)
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()));
                }
              },
              offset: const Offset(1, 0),
              itemBuilder: (context) => [
              const PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'New group',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ),
              const PopupMenuItem<int>(
                value: 1,
                child: Text(
                  'New broadcast',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ),
              const PopupMenuItem<int>(
                value: 2,
                child: Text(
                  'Linked devices',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ),
              const PopupMenuItem<int>(
                value: 3,
                child: Text(
                  'Starred messages',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ),
              const PopupMenuItem<int>(
                value: 4,
                child: Text(
                  'Payments',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              ),
              const PopupMenuItem<int>(
                value: 5,
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                )
              )
            ]
          )
        ],
      ),
      body: const SafeArea(
        child: Center(child: Text("Welcome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Home Page",style: TextStyle(fontSize: 15),),
        centerTitle: true,
      ),
      body: const Center(child: Text("Successoft Infotech",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}