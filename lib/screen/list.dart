import 'package:flutter/material.dart';
import '../model/prodect.dart';
import '../screen/detils.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Cakes ',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: 'Merriweather'),
        ),
        backgroundColor: Color.fromARGB(255, 255, 177, 177),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: prodectList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(prodectList[index].title),
              subtitle: Text(prodectList[index].price),
              leading: Image.network(prodectList[index].imageUrl),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detils(prodectList[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
