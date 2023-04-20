import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Fashion App",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: [
          // Top profiles part
          SizedBox(
            height: 140,
            width: double.infinity,
            child: ListView(
              padding: const EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              children: [
                listItem('assets/model1.jpeg', "assets/chanellogo.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/model2.jpeg', "assets/louisvuitton.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/model3.jpeg', "assets/chloelogo.png"),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/model1.jpeg', "assets/chanellogo.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/model2.jpeg', "assets/louisvuitton.jpg"),
                const SizedBox(
                  width: 30,
                ),
                listItem('assets/model3.jpeg', "assets/chloelogo.png"),
                const SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          // Card
          
        ],
      ),
    );
  }

  listItem(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: "Montserrat", fontSize: 14, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}
