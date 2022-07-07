import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  final Image imageWidget;

  final Widget dataWidget;

  const WebLayout(
      {Key? key, required this.imageWidget, required this.dataWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [imageWidget],
                ),
              ),
              SizedBox(
                width: 400,
                child: dataWidget,
              )
            ],
          )
        ],
      ),
    );
  }
}
