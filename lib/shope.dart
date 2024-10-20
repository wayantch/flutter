// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tampilan/main.dart';
import 'package:tampilan/shopePay.dart';

class MyShopee extends StatefulWidget {
  const MyShopee({super.key});

  @override
  State<MyShopee> createState() => _MyShopeeState();
}

class _MyShopeeState extends State<MyShopee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF5722),
        title: Text(
          'Shopee',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.chat_bubble_rounded,
                color: Colors.white,
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavbarBottom(Icons.home, "Beranda", () {}),
            buildNavbarBottom(Icons.shopping_bag, "Produk", () {}),
            buildNavbarBottom(Icons.live_tv, "Live", () {}),
            buildNavbarBottom(Icons.notifications, "Notifikasi", () {}),
            buildNavbarBottom(Icons.person, "Saya", () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            }),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.5)),
                  ],
                  color: Colors.white),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildIconScroll('images/telephone-call.png', "Pulsa", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyShopeePay()),
                      );
                    }),
                    buildIconScroll('images/dish.png', 'ShopeeFood', () {}),
                    buildIconScroll('images/plus.png', 'ShopeePlus', () {}),
                    buildIconScroll(
                        'images/joystick.png', 'ShopeeGames', () {}),
                    buildIconScroll('images/mosque.png', 'Barokah', () {}),
                    buildIconScroll('images/totebag.png', 'ShopeeMall', () {}),
                    buildIconScroll('images/wallet.png', 'SPayLater', () {}),
                    buildIconScroll('images/offer.png', 'Termurah', () {}),
                    buildIconScroll('images/other.png', 'Lihat Semua', () {}),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shopee Live',
                          style: TextStyle(
                              color: Color(0xFFFF5722),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Lihat Semua >',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          for (var i = 0; i < 20; i++)
                            buildLive('https://via.placeholder.com/120x180'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rekomendasi Produk',
                          style: TextStyle(
                              color: Color(0xFFFF5722),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Lihat Semua >',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 138, 138, 138)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLive(String imageUrl) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 180,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Color.fromARGB(255, 156, 156, 156),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildIconScroll(String imagePath, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1, color: const Color.fromARGB(255, 91, 91, 91)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Image.asset(imagePath, width: 30, height: 30),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget buildNavbarBottom(IconData icon, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24,
          ),
          Text(
            label,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
