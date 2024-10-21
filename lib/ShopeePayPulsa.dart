import 'package:flutter/material.dart';

class MyShopeePayPulsa extends StatefulWidget {
  const MyShopeePayPulsa({super.key});

  @override
  State<MyShopeePayPulsa> createState() => _MyShopeePayPulsaState();
}

class _MyShopeePayPulsaState extends State<MyShopeePayPulsa> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pulsaData = [
      {'judul': '5rb', 'harga': 'Rp.7.000'},
      {'judul': '10rb', 'harga': 'Rp.14.000'},
      {'judul': '15rb', 'harga': 'Rp.17.000'},
      {'judul': '20rb', 'harga': 'Rp.20.000'},
      {'judul': '25rb', 'harga': 'Rp.25.000'},
      {'judul': '30rb', 'harga': 'Rp.30.000'},
      {'judul': '50rb', 'harga': 'Rp.50.000'},
      {'judul': '100rb', 'harga': 'Rp.100.000'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 244, 92, 10),
        title: const Text(
          'Pulsa',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '087781189068',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Text('Kontak: Wyn'),
                  ],
                ),
                const Icon(
                  Icons.contact_page,
                  size: 30,
                  color: Color.fromARGB(255, 255, 106, 0),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Pulsa',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 255, 98, 0),
                      ),
                    ),
                    Text('Data', style: TextStyle(fontSize: 14)),
                    Text('Roaming', style: TextStyle(fontSize: 14)),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                  ),
                  itemCount: pulsaData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            pulsaData[index]['judul']!,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            pulsaData[index]['harga']!,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
