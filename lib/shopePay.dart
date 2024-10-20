import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Color(0xFFFF5722),
        title: Text(
          'Pulsa, Tagihan & Tiket',
          style: TextStyle(
              fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
        ),
        titleSpacing: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10)),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.list,
                color: Colors.white,
              )),
          Text(
            'Pesanan',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
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
                      padding: EdgeInsets.all(10),
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
          ],
        ),
      ),
    );
  }

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
}
