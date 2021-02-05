import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meem/uis/custom/custom_ui.dart';

class MemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/meme/funny_dog.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: CupertinoPopupSurface(
            isSurfacePainted: true,
            child: Column(
              children: [
                ListTile(
                  title: Text("Samuel Baraka"),
                  subtitle: Text("4 Hours Ago"),
                  trailing: CustomContextMenu(
                    child: Icon(Icons.more_vert),
                    actions: [Text("Save"), Text("Share")],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/meme/funny_dog.jpg',
                      fit: BoxFit.contain,
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Text(
                        "Smilig Dog",
                        style: TextStyle(fontSize: 40),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 20,
                      child: Text(
                        "What are you looking at",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: ListView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              ListTile(
                                title: Text("Elon Musk"),
                                subtitle: Text("That's so funny😂😂😂😂😂😂😂"),
                              ),
                              ListTile(
                                title: Text("JJ Olatunji"),
                                subtitle: Text("I'm rolling laughing😂"),
                              ),
                              ListTile(
                                title: Text("Donald Trump"),
                                subtitle: Text("Memes run the world🤣🤣🤣🤣"),
                              ),
                              ListTile(
                                title: Text("Khaligraph Jones"),
                                subtitle: Text("😂😂😂😂😂😂😂"),
                              ),
                              ListTile(
                                title: Text("Juicy J"),
                                subtitle: Text("😂😂👌👌"),
                              ),
                              ListTile(
                                title: Text("Cristiano Ronaldo"),
                                subtitle: Text("😂😂😂😂😂😂😂"),
                              ),
                              ListTile(
                                title: Text("Eden Hazard"),
                                subtitle: Text("🤦‍♂️🤦‍♂️😂😂😂"),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(CupertinoIcons.heart),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(Icons.share),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(Icons.save),
                              SizedBox(
                                height: 20,
                              ),
                              Icon(Icons.download_outlined)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
