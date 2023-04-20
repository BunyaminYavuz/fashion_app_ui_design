import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  var imgPath;
  DetailPage({super.key, this.imgPath});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            left: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                width: MediaQuery.of(context).size.width - 30,
                height: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey),
                                image: const DecorationImage(
                                    image: AssetImage("assets/dress.jpg"),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "LAMINATED",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text(
                              "Luois vuitton",
                              style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 200,
                              height: 50,
                              child: const Text(
                                "One button V-neck sling long-sleeved waist female stitching dress",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 14,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 15, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$9999",
                            style: TextStyle(
                                fontFamily: "Montserrat", fontSize: 24),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 32),
                            child: FloatingActionButton(
                              child: Icon(Icons.arrow_forward_ios),
                              onPressed: () {},
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 90,
            child: Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("LAMINATED", style: TextStyle(fontFamily: "Montserrat", color: Colors.white, fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
