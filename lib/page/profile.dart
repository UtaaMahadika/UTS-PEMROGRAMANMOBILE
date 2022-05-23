import 'package:flutter/material.dart';
import 'package:etracer/page/addhistory.dart';

void main() {
  runApp(new MaterialApp(
    title: "Home",
    debugShowCheckedModeBanner: false,
    home: new Halamantiga(),
  ));
}

class Halamantiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('i'),
                    radius: 90,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Elon Mask",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  width: 400,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Riwayat Pendidikan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        elevation: 5,
                        child: ListTile(
                          title: Text('Universitas Esa Unggul'),
                          subtitle: Text('IPK : 4.0'),
                          trailing: new Column(
                            children: <Widget>[
                              new Container(
                                child: new IconButton(
                                  icon: new Icon(Icons.delete),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Center(
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => addhis()),
                              );
                            },
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              size: 24,
                            ),
                            padding: EdgeInsets.all(10),
                            shape: CircleBorder(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
