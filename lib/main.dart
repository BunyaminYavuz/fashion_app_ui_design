import 'package:fashion_app_ui_design/detail_page.dart';
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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
            controller: tabController,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.more,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.play_arrow,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.navigation,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
            ]),
      ),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              //color: Colors.indigo.shade300,
              elevation: 4,
              child: Container(
                width: double.infinity,
                height: 500,
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/model1.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Daisy",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "49 mins ago",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 12,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          size: 22,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "This official website features a ribbed knit zipper jacket that is"
                      " modern and stylish. It looks very temparement and is recommend to friends.",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailPage(imgPath: "assets/modelgrid1.jpeg")));
                          },
                          child: Hero(
                            tag: "assets/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width: (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage("assets/modelgrid1.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 95,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage("assets/modelgrid2.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 95,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                  image: AssetImage("assets/modelgrid3.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              " # Louis vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Colors.brown),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: const Center(
                            child: Text(
                              " # Chloe",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 12,
                                  color: Colors.brown),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.reply,
                          size: 32,
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1.4k",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.brown.withOpacity(0.4)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.comment_outlined,
                          size: 32,
                          color: Colors.brown.withOpacity(0.2),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "280",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 16,
                              color: Colors.brown.withOpacity(0.4)),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.favorite,
                                size: 32,
                                color: Colors.red,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2.5k",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    color: Colors.brown.withOpacity(0.4)),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
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
