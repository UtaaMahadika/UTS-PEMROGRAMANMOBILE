import 'package:flutter/material.dart';
import 'package:etracer/main.dart';

class addhis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Isi Riwayat Pendidikan'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Form(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                    hintText: "Masukan nama universitas",
                    labelText: "Universitas",
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    hintText: "Masukan IPK anda",
                    labelText: "IPK",
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Halamannav()),
                    );
                  },
                  child: new Text('Simpan'),
                )
              ],
            ),
          ),
        ));
  }
}
