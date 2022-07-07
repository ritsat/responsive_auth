import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webChild;

  final Widget mobileChild;

  const ResponsiveLayout(
      {Key? key, required this.webChild, required this.mobileChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Card(
                elevation: 12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                //Using LayoutBuilder for responsive UI
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    Widget childWidget = mobileChild;
                    if (constraints.maxWidth > 800) {
                      childWidget = webChild;
                    }
                    return childWidget;
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
