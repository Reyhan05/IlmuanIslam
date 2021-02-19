import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String nama;
  final String asal;
  final String image;

  const DetailPage({Key key, this.nama, this.asal, this.image})
      : super(key: key);

  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Detail' + widget.nama,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.network(widget.image),
          ),
          Text(
            widget.nama,
            style: TextStyle(color: Colors.blue, fontSize: 24.0),
          ),
          Text(widget.nama),
        ],
      ),
    );
  }
}
