import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:tampilan/dana.dart';
import 'package:tampilan/latihanpage.dart';
import 'package:tampilan/latihanpage2.dart';
import 'package:tampilan/latihanpage3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 200,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {
                print('Page changed: $value');
              },

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              autoPlayInterval: 3000,

              /// Loops back to first slide.
              isLoop: true,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.network(
                  'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_640.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://cdn.pixabay.com/photo/2013/07/18/20/26/sea-164989_640.jpg',
                  fit: BoxFit.cover,
                ),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGe0L2660Zd-9CiHTXfAimoA5I_v2LEb9-0Q&s',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LatihanPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Halaman Latihan",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LatihanPage2(),
                          ),
                        );
                      },
                      child: const Text("Halaman Latihan 2"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Latihanpage3(),
                          ),
                        );
                      },
                      child: const Text("Halaman Latihan 3"),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // height: 100,
                        // width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MyDana(),
                                ));
                              },
                              child: Text(
                                "Halaman Dana",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // height: 100,
                        // width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MyDana(),
                                ));
                              },
                              child: Text(
                                "Halaman Shoppe",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 188, 89),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // height: 100,
                        // width: 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MyDana(),
                                ));
                              },
                              child: Text(
                                "Halaman Shoppe Pay",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
