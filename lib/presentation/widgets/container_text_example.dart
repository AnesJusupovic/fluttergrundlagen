import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerTestExample extends StatelessWidget {
  const ContainerTestExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      // width: 300,
      decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            color: Colors.black,
            width: 4,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(10),
          elevation: 8,
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("Test Example",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
      ),
    );
  }
}
