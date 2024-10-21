import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:tampilan/ShopeePayPulsa.dart';
import 'package:tampilan/main.dart';

class MyShopeePay extends StatefulWidget {
  const MyShopeePay({super.key});

  @override
  State<MyShopeePay> createState() => _MyShopeePayState();
}

class _MyShopeePayState extends State<MyShopeePay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 244, 92, 10),
        leading: Icon(
          Icons.wallet,
          color: Colors.white,
        ),
        title: Text(
          'Selamat Pagi',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        titleSpacing: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
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
            buildNavbarBottom(Icons.money_rounded, "Finance", () {}),
            buildNavbarBottom(Icons.qr_code_2_rounded, "QRIS", () {}),
            // SizedBox(),
            buildNavbarBottom(Icons.history, "Riwayat", () {}),
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
        child: Container(
          child: Column(
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 92, 10),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                  // padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'ShopeePay',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          'Rp 303',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          'SPayLater',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          child: Text(
                                            'Aktifkan sekarang',
                                            style: TextStyle(
                                                color: const Color.fromARGB(
                                                    255, 255, 85, 0)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildIconColumn(Icons.qr_code_scanner, "Pindai"),
                            buildIconColumn(
                                Icons.account_balance_wallet, "Kode Bayar"),
                            buildIconColumn(Icons.send_sharp, "Transfer"),
                            buildIconColumn(
                                Icons.request_page_outlined, "Transfer Bank"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(0.5))
                              ],
                            ),
                          ),
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
                                buildEighticon('images/phone-call.png',
                                    "Pulsa & Data",  () {
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyShopeePayPulsa(),));
                                    }),
                                buildEighticon('images/google-play.png',
                                    "Play Store",  () {}),
                                buildEighticon('images/award.png', "SPayLater",
                                     () {}),
                                buildEighticon('images/joystick.png',
                                    "SEA Bank",  () {}),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                buildEighticon('images/plugin.png',
                                    "ShopeeFood",  () {}),
                                buildEighticon('images/coupon.png',
                                    "Virtual Akun",  () {}),
                                buildEighticon('images/google-play.png',
                                    "Google Play",  () {}),
                                buildEighticon('images/application.png',
                                    "Semua",  () {}),
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
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.abc),
                          Text(
                              'Upgrade Shopee Pay plus dan nikmati Transfer gratis unlimited'),
                          Container(
                            child: Text('>'),
                          )
                        ],
                      ),
                    ),
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
                            'https://foto.kontan.co.id/GVqQFeHSsp0qH7SUZ0Z8a9DJyjU=/smart/2023/06/30/1213522166p.jpg'),
                        imageNetwork(
                            'https://foto.kontan.co.id/GVqQFeHSsp0qH7SUZ0Z8a9DJyjU=/smart/2023/06/30/1213522166p.jpg'),
                        imageNetwork(
                            'https://foto.kontan.co.id/GVqQFeHSsp0qH7SUZ0Z8a9DJyjU=/smart/2023/06/30/1213522166p.jpg'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
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

  Widget buildEighticon(
      String imagePath, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
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
}
