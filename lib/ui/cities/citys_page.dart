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
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxPageWidth),
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
    );
  }
}
