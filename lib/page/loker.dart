import 'package:flutter/material.dart';
import 'package:etracer/page/addhistory.dart';

void main() {
  runApp(new MaterialApp(
    title: "Bangun Datar",
    home: new Halamandua(),
  ));
}

class Halamandua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lowongan Pekerjaan'),
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
                child: Image.network('https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/09/09/4275572739.png'),
              ),
              title: Text('PT. Mayora'),
              subtitle: Text('Posisi : Karyawan'),
              trailing: new Column(
                children: [
                  new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.navigate_next),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: SizedBox(
                height: 100,
                width: 100,
                child: Image.network('i'),
              ),
              title: Text('PT. Denso'),
              subtitle: Text('Posisi : Operator'),
              trailing: new Column(
                children: [
                  new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.navigate_next),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            child: ListTile(
              leading: SizedBox(
                height: 100,
                width: 100,
                child: Image.network('g'),
              ),
              title: Text('PDAM'),
              subtitle: Text('Posisi : Teknisi'),
              trailing: new Column(
                children: [
                  new Container(
                    child: new IconButton(
                      icon: new Icon(Icons.navigate_next),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
