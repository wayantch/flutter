import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:tampilan/main.dart';

class MyDana extends StatefulWidget {
  const MyDana({super.key});

  @override
  State<MyDana> createState() => _MyDanaState();
}

class _MyDanaState extends State<MyDana> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 21, 145, 247),
          leading: Icon(
            Icons.flag_circle,
            size: 24,
            color: Colors.white,
          ),
          title: Container(
            child: Row(
              children: [
                Text(
                  "Rp",
                  style: TextStyle(
                      color: Color.fromARGB(255, 208, 208, 208),
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(width: 10),
                Text("2.377",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
                SizedBox(
                  width: 4,
                ),
                Container(
                  child: Icon(
                    Icons.visibility_off,
                    color: Colors.white,
                    size: 12,
                  ),
                ),
              ],
            ),
          ),
          titleSpacing: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail_outline_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavbarBottom(Icons.flag_circle, "Beranda", () {}),
              buildNavbarBottom(Icons.library_books_sharp, "Aktivitas", () {}),
              buildNavbarBottom(Icons.qr_code_2_rounded, "PAY", () {}),
              // SizedBox(),
              buildNavbarBottom(Icons.wallet, "Dompet", () {}),
              buildNavbarBottom(Icons.supervised_user_circle, "Saya", () {
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
                child: Container(
                  color: Color.fromARGB(255, 21, 145, 247),
                  height: 150,
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildIconColumn(Icons.qr_code_scanner, "Pindai"),
                            buildIconColumn(
                                Icons.account_balance_wallet, "Isi Saldo"),
                            buildIconColumn(Icons.send_sharp, "Kirim"),
                            buildIconColumn(
                                Icons.request_page_outlined, "Minta"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 255, 255, 255),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.5))
                      ],
                    ),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildEighticon('images/phone-call.png', "Pulsa & Data", Colors.blue),
                                buildEighticon('images/google-play.png', "Play Store", Colors.blue),
                                buildEighticon('images/award.png', "A+ Reward", Colors.blue),
                                buildEighticon('images/joystick.png', "Games", Colors.blue),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildEighticon('images/plugin.png', "Mini Games", Colors.blue),
                                buildEighticon('images/coupon.png', "Dana Deals", Colors.blue),
                                buildEighticon('images/lightning.png', "Listrik", Colors.blue),
                                buildEighticon('images/application.png', "Semua", Colors.blue),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.5))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Feed',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Cari tahu kabar terbaru!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              'TELUSURI',
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    ImageSlideshow(
                      width: double.infinity,
                      height: 200,
                      initialPage: 0,
                      indicatorColor: Colors.blue,
                      indicatorBackgroundColor: Colors.grey,
                      onPageChanged: (value) {
                        print('Page changed: $value');
                      },
                      autoPlayInterval: 5000,
                      isLoop: true,
                      children: [
                        imageNetwork(
                            'https://media.suara.com/pictures/970x544/2022/07/07/75395-dana-digital-02-dana.jpg'),
                        imageNetwork(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUMGX8YzoAKGD9QJ2bggNqwryvpaEXZl6WJA&s'),
                        imageNetwork(
                            'https://a.m.dana.id/danaweb/promo/1728031703-WebsiteBanner-BNR-LoyalUsers.png'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: Colors.black.withOpacity(0.5))
                      ]),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'DANA Deals',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Voucher terbaik di dekat kamu!',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 5),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.blue),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Text(
                                'TELUSURI',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ImageSlideshow(
                              width: double.infinity,
                              height: 100,
                              initialPage: 0,
                              indicatorColor: Colors.blue,
                              indicatorBackgroundColor: Colors.grey,
                              onPageChanged: (value) {
                                print('Page changed: $value');
                              },
                              // autoPlayInterval: 5000,
                              isLoop: true,
                              children: [
                                imageNetwork2(
                                    'https://www.topkata.com/wp-content/uploads/2024/05/contoh-iklan-telkomsel-siaga-970x250-1.jpeg'),
                                imageNetwork2(
                                    'https://lh3.googleusercontent.com/CaVxMh2_0V3_i5i-dRxYSjJCr2ccMmnkoquziplKQUsLtSyF0pPP2TYbHPSr1YfDT1oZ0WTf8LxkcJmRtwUp9YauAE2sBBzoiCI=s0'),
                                imageNetwork2(
                                    'https://beritadewata.com/wp-content/uploads/2021/04/Paket-Akrab.jpg'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.5))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Terbaru untukmu',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                ),
                                Text(
                                  'Kabar baik minggu ini!',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Text(
                              'LIHAT SEMUA',
                              style: TextStyle(color: Colors.blue),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }

// Ini widget buat navbar bottom
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

// Ini Widget image 1
  Widget imageNetwork(String imageUrl) {
    return Container(
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ));
  }

// Ini Widget image 2
  Widget imageNetwork2(String imageUrl) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ));
  }

// ini widget buat icon yang ada 4 itu
  Widget buildIconColumn(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }

// ini buat yang ada 8 icon ituF
  Widget buildEighticon(String imagePath, String label, Color color) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Image.asset(
            imagePath,
            width: 30,
            height: 30,
          ),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    );
  }
  Widget buildEighticon2(String imagePath, String label, Color color) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Image.asset(
            imagePath,
            width: 30,
            height: 30,
          ),
        ),
        Text(
          label,
          style: TextStyle(color: Colors.black, fontSize: 12),
        ),
      ],
    );
  }
}
