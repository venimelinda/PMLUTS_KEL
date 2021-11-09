import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card1 extends StatefulWidget {
  @override
  _Card1 createState() => _Card1();
}

class _Card1 extends State<Card1> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pendaftaran"),
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              // TextField(),
              TextField(
                decoration: new InputDecoration(
                  labelText: "no pendaftaran",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              TextField(
                decoration: new InputDecoration(
                  labelText: "Nis",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              TextField(
                decoration: new InputDecoration(
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              TextField(
                decoration: new InputDecoration(
                  labelText: "jenis kelamin",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              TextField(
                decoration: new InputDecoration(
                  labelText: "alamat",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              TextField(
                decoration: new InputDecoration(
                  labelText: "jurusan",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),

              RaisedButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blue,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildItemMenu(String image, String text) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Card1()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 7,
            offset: Offset(0, 2), // changes position of shadow
          )
        ], color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            ClipRect(
                child: Image.asset(
              image,
              width: 100,
              height: 80,
              fit: BoxFit.fill,
            )),
            SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
