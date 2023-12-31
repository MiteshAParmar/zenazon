import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  var opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 2),
          child: Container(
            color: Colors.black54,
            width: 100,
            height: 50,
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
            onPressed: () {
              //show dialog box with animated opacity
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AboutDialog(
                        applicationName: 'Animated Opacity',
                        applicationVersion: '1.0.0',
                        applicationIcon: Icon(Icons.adb),
                        children: [
                          Text('This is a test dialog box'),
                          Text('This is a test dialog box'),
                          Text('This is a test dialog box'),
                          Text('hello'),
                          Text('hello'),

                          // AnimatedOpacity(
                        ],
                      ));

              opacity = (opacity == 0) ? 1.0 : 0;
              setState(() {});
            },
            child: Text('Close')),
      ],
    );
  }
}
