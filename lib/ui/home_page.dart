import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:weatherflu/ui/cities/citys_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _maximeLines = 2;

  void handleCytisPagePressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => CytiesPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Positioned.fill(
          child: Image.asset('assets/welcome.jpg'),
        ),
        SafeArea(
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 250),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                  ),
                  const SizedBox(height: 80),
                  AutoSizeText(
                    'Hola, \nBienvendido',
                    textAlign: TextAlign.start,
                    maxLines: _maximeLines,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Que te parece si agregamos \nuna nueva ciudad?',
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 50),
                  RaisedButton(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      15,
                    )),
                    child: Text('Agregar Ciudad'),
                    onPressed: () => handleCytisPagePressed(context),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
