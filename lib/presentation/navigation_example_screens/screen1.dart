import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttergrundlagen/presentation/widgets/custom_buton.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Screen 1"),
        centerTitle: true,
      ),
      body: Center(
        child: CustomButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          text: "Navigate Back",
          buttonColor: Colors.green,
        ),
      ),
    );
  }
}
