import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.house_rounded, color: Colors.white),
        titleSpacing: 0,
        title: const Text(
          'Smart Building',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
        actions: const [
          Icon(Icons.notifications, color: Colors.white),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavbarBottom(Icons.home, "Beranda", () {}),
            buildNavbarBottom(Icons.favorite, "Favorit", () {}),
            buildNavbarBottom(Icons.supervised_user_circle_rounded, "Saya", () {}),
          ],
        ),
      ),
      body: SingleChildScrollView(  // Tambahkan SingleChildScrollView di sini
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title Perusahaan
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Perusahaan',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // Container untuk tombol
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildElevatedButton("Minori"),
                      const SizedBox(width: 16),
                      buildElevatedButton("Nagomi"),
                      const SizedBox(width: 16),
                      buildElevatedButton("Takumi"),
                      const SizedBox(width: 16),
                      buildElevatedButton("Aji"),
                      const SizedBox(width: 16),
                      buildElevatedButton("Ayumi"),
                    ],
                  ),
                ),
              ),
              
              // Bagian Pilih Gedung, Lantai, Ruangan
              Padding(
                padding: const EdgeInsets.only(top: 15, right: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pilih',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildSelectionButton('Gedung'),
                        buildSelectionButton('Lantai'),
                        buildSelectionButton('Ruangan'),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Bagian Device Grid dengan Tombol On/Off
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Perangkat',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              
              // Grid untuk perangkat
              GridView.builder(
                shrinkWrap: true, // Agar grid bisa disusun di dalam SingleChildScrollView
                physics: const NeverScrollableScrollPhysics(), // Nonaktifkan scroll terpisah untuk grid
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Jumlah kolom dalam grid
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: 4, // Misalnya ada 4 perangkat
                itemBuilder: (context, index) {
                  return buildDeviceItem();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat tombol perusahaan
  ElevatedButton buildElevatedButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(fontSize: 16),
      ),
      child: Text(label),
    );
  }

  // Fungsi untuk membuat tombol pemilihan Gedung/Lantai/Ruangan
  ElevatedButton buildSelectionButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      ),
      child: Text(label),
    );
  }

  // Fungsi untuk membuat item perangkat dengan tombol On/Off
  Widget buildDeviceItem() {
    bool isOn = false; // Menggunakan state untuk status On/Off (bisa diganti dengan StatefulWidget untuk manajemen state)
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.devices,
            size: 48,
            color: Colors.blueAccent,
          ),
          const SizedBox(height: 8),
          const Text(
            'Lampu',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              isOn = !isOn; // Ganti status On/Off
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: isOn ? Colors.green : Colors.red,
            ),
            child: Text(isOn ? 'On' : 'Off'),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk bottom navbar
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
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
