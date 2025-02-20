import 'package:flutter/material.dart';

class Detils extends StatelessWidget {
  final Prodect;
  Detils(this.Prodect);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Prodect.title),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(child: Image.network(Prodect.imageUrl)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                Prodect.price,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                Prodect.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
