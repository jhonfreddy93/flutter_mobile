import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weatherflu/ui/animationsPage/slide_transition_page.dart';
import 'package:weatherflu/ui/cities/add/add_citys_page.dart';
import 'package:weatherflu/ui/comun/headerwidget.dart';
import 'package:weatherflu/ui/uicosntants.dart';

class CytiesPage extends StatelessWidget {
  const CytiesPage({Key key}) : super(key: key);

  /*void handleCytisPagePressed(BuildContext context) {
    Navigator.of(context).push(PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 1000),
      pageBuilder: (_, animation1, animation2) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0, 1),
            end: Offset(0, 0),
          ).animate(animation1),
          child: AddCytiesPage(),
        );

        //FadeTransition(
          //opacity: animation1,
          //child: AddCytiesPage(),
          //);
      },
    ));
  }*/

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
            /*onPressed: () => handleCytisPagePressed(context),*/
            onPressed: () {
              Navigator.push(
                  context, SlideTransitionPage(widget: AddCytiesPage()));
            },
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
                Expanded(
                  child: Center(
                    child: AutoSizeText(
                      'No tengo ciudades',
                      maxLines: 1,
                      style: GoogleFonts.allertaStencil(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
