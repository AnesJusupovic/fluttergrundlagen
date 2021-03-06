import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class Moon extends StatelessWidget {
  const Moon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 30,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: const [
              Color(0xFF8983F7),
              Color(0xFFA3DAF8),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          )),
    );
  }
}
