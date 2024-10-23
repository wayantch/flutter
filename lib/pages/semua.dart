import 'package:flutter/material.dart';

class MySemua extends StatelessWidget {
  const MySemua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Semua Produk & Layanan'),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Bagian pertama
            buildScrollableContainer(context),
            const SizedBox(height: 10),
            // Bagian kedua
            buildScrollableContainer(context),
          ],
        ),
      ),
    );
  }

  Widget buildScrollableContainer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: const Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.5), blurRadius: 0.2)
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Baris pertama
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildEighticon(
                      'images/phone-call.png', "Pulsa & Data", () {}),
                  buildEighticon('images/smartphone.png', "Pulsa", () {}),
                  buildEighticon('images/letter-s.png', "SPayLater", () {}),
                  buildEighticon('images/joystick.png', "SEA Bank", () {}),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildEighticon('images/dish.png', "ShopeeFood", () {}),
                  buildEighticon('images/accounts.png', "Virtual Akun", () {}),
                  buildEighticon('images/google-play.png', "Google Play", () {}),
                  buildEighticon('images/application.png', "Semua", () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MySemua(),
                    ));
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildEighticon('images/dish.png', "ShopeeFood", () {}),
                  buildEighticon('images/accounts.png', "Virtual Akun", () {}),
                  buildEighticon('images/google-play.png', "Google Play", () {}),
                  buildEighticon('images/application.png', "Semua", () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MySemua(),
                    ));
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildEighticon('images/dish.png', "ShopeeFood", () {}),
                  buildEighticon('images/accounts.png', "Virtual Akun", () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEighticon(String imagePath, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Image.asset(
              imagePath,
              width: 40,
              height: 40,
            ),
          ),
          Text(
            label,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
