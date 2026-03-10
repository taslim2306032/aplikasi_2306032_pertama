import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto', // Default tapi biar rapi
        scaffoldBackgroundColor: Colors.grey[100], // Background aplikasi yang lebih soft
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red[800],
          leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          title: Text(
            "Aplikasi Pertamaku",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_none, color: Colors.white),
              onPressed: () {},
            ),
            SizedBox(width: 8),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header Berita/Profil
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // Gambar Utama Berita yang Membulat
                      Hero(
                        tag: 'photo',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "https://cdn.pixabay.com/photo/2014/10/07/13/48/mountain-477832_1280.jpg",
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "HALLO NAMA SAYA TASLIM GANTENG",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.red[800],
                          letterSpacing: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Selamat datang di artikel pertama saya! Di sini kita mencoba membuat tampilan UI pada Flutter menjadi lebih modern, responsif, dan tentunya sangat keren.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[700],
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Tanda Kategori ala Chip Modern
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.local_fire_department, size: 18, color: Colors.red[800]),
                              SizedBox(width: 6),
                              Text(
                                "Artikel Baru",
                                style: TextStyle(
                                  color: Colors.red[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.trending_up, size: 18, color: Colors.blue[800]),
                              SizedBox(width: 6),
                              Text(
                                "Populer",
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    SizedBox(height: 30),

                    // Title Bagian Komentar
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Komentar Netizen",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "Lihat Semua",
                          style: TextStyle(
                            color: Colors.red[800],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),

                    // List Komentar dengan Tampilan Modern
                    ListView(
                      physics: NeverScrollableScrollPhysics(), // Karena udah dibungkus SingleChildScrollView
                      shrinkWrap: true,
                      children: [
                        _buildCommentItem(
                          name: "John Doe",
                          comment: "Wah desain app-nya sekarang jauh lebih elegan 💯",
                          time: "10 mnt yang lalu",
                          colorSwatch: Colors.blue,
                        ),
                        _buildCommentItem(
                          name: "Mary Jane",
                          comment: "Keren sekali mas Taslim, mantap pokoknya!",
                          time: "32 mnt yang lalu",
                          colorSwatch: Colors.pink,
                        ),
                        _buildCommentItem(
                          name: "Alex Smith",
                          comment: "Tampilannya sangat bersih, saya suka warna merahnya.",
                          time: "1 jam yang lalu",
                          colorSwatch: Colors.green,
                        ),
                        _buildCommentItem(
                          name: "Diana Prince",
                          comment: "Ditambah dark mode mungkin makin keren 😍",
                          time: "5 jam yang lalu",
                          colorSwatch: Colors.purple,
                        ),
                        _buildCommentItem(
                          name: "Bruce Wayne",
                          comment: "Tutorial yang sangat bagus.",
                          time: "Kemarin",
                          colorSwatch: Colors.grey, // Perhatikan ini Colors.grey tipe MaterialColor
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        // Tombol Mengambang (Floating Action Button) yang Modern
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Aksi saat diklik (bisa dipake nanti)
          },
          backgroundColor: Colors.red[800],
          elevation: 4,
          child: Icon(Icons.add_comment, color: Colors.white),
        ),
      ),
    );
  }

  // Widget bantuan untuk membuat list komentar lebih rapi kodenya
  Widget _buildCommentItem({
    required String name,
    required String comment,
    required String time,
    required MaterialColor colorSwatch,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 4), // bayangan jatuh ke bawah sedikit
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: colorSwatch[100],
          radius: 26,
          child: Text(
            name[0], // Inisial nama
            style: TextStyle(
              color: colorSwatch[800],
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              time,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            comment,
            style: TextStyle(
              color: Colors.grey[700],
              height: 1.4,
            ),
          ),
        ),
      ),
    );
  }
}