import 'package:flutter/material.dart';
import 'package:weatherflu/ui/comun/headerwidget.dart';
import 'package:weatherflu/ui/uicosntants.dart';

class CytiesPage extends StatelessWidget {
  const CytiesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      floatingActionButton: Container(
          width: MediaQuery.of(context).size.width * 0.17,
          height: MediaQuery.of(context).size.width * 0.17,
          child: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: primaryColor,
            onPressed: () {},
          )),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: maxPagewidthinfo),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                HeaderWidget(
                  title: 'Mis ciudades',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
