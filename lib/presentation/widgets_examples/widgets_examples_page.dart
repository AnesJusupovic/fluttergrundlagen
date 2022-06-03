import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttergrundlagen/application/theme_service.dart';
import 'package:fluttergrundlagen/presentation/widgets/container_text_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/custom_buton.dart';
import 'package:fluttergrundlagen/presentation/widgets/media_query_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/page_view_example.dart';
import 'package:fluttergrundlagen/presentation/widgets/profile_picture.dart';
import 'package:fluttergrundlagen/presentation/widgets/rectangular_image.dart';
import 'package:fluttergrundlagen/presentation/widgets/row_expanded_example.dart';
import 'package:provider/provider.dart';

class WidgetsExamplesPage extends StatelessWidget {
  const WidgetsExamplesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
            leading: Icon(Icons.home, size: 20),
            centerTitle: true,
            backgroundColor: Colors.blue[200],
            title: Text("Widgets Examples")),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                ContainerTestExample(),
                SizedBox(
                  height: 30,
                ),
                RowExpandedExample(),
                SizedBox(
                  width: 10,
                ),
                ProfilePicture(),
                SizedBox(
                  height: 30,
                ),
                RectImage(),
                SizedBox(
                  height: 30,
                ),
                MediaQueryExample(),
                SizedBox(
                  height: 30,
                ),
                PageViewExample(),
                SizedBox(
                  height: 30,
                ),
                IconButton(
                  splashColor: Colors.blue,
                  onPressed: () {
                    print("Icon Button pressed!");
                  },
                  icon: Icon(Icons.home, color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    print("Text Button Pressed!");
                  },
                  child: Container(
                    color: Colors.grey,
                    child: Text(
                      "Text Button",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/screen2");
                    },
                    text: "Go to Screen 2",
                    buttonColor: Colors.blue[200]!),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/screen1");
                  },
                  text: "Go to Screen 1",
                  buttonColor: Colors.green[200]!,
                ),
                SizedBox(
                  width: 15,
                ),
                Switch(
                    value: Provider.of<ThemeService>(context).isDarkModeOn,
                    onChanged: (value) {
                      Provider.of<ThemeService>(context, listen: false)
                          .toggleTheme();
                    }),
              ],
            ),
          ),
        ));
  }
}
