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
    return Hero(
      tag: widget.imgPath,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.imgPath), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
