import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Bangun Datar",
    home: new Halamansatu(),
  ));
}

class Halamansatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 5,
            child: ListTile(
              leading: SizedBox(
                height: 100,
                width: 100,
                child: Image.network('data:image/png;base64,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'),
              ),
              title: Text('Bangun Sukses Multiindo'),
              subtitle: Text('Hallo selamat siang, kami sedang....'),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: SizedBox(
                height: 100,
                width: 100,
                  child: Image.network('https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/09/09/4275572739.png'),
              ),
              title: Text('Mayora'),
              subtitle: Text('Hallo selamat siang, kami sedang....'),
            ),
          ),
        ],
      ),
    );
  }
}
