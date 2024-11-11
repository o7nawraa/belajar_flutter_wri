import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
//layout disusun 3, ada atas bawah=column, kanan kiri=row, bertumpuk
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //widget paling dasar dari aplikasi. widget : kalimat berawalan besar. parameter : berawalan kecil
        //material app berguna untuk run di awal
        home: Scaffold(
      //digunakan sebagai kanvas
      appBar: AppBar(
        //tampilan atas (widget)
        title: Text("Logoip"),
      ),
      body: Container(
        //widget itu cuma punya satu anak
        padding: EdgeInsets.only(left: 24, right: 24),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          //bisa menampung banyak widget
          // mainAxisAlignment: MainAxisAlignment.start, //meratakan tampilan kata sumbu Y (start, center, end)
          crossAxisAlignment:
              CrossAxisAlignment.start, //meratakan tampilan kata sumbu X ()
          children: [
            Padding( 
              //digunakan untuk memberi jarak
              padding: const EdgeInsets.only(bottom: 24, top: 24),
              child: Text(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ), //alt + shift + f untuk merapikan code baris
            Text(
                'Enter your email and password to login'), //ctrl spasi digunakan untuk memunculkan saran code
            Padding(
              //seperti blok lego, dia sebagai wadah
              padding: const EdgeInsets.only(
                  top:
                      32), //di dalam wadah ketika kita ingin menjalankan perintah, maka inilah fungsinya parameter
              child: Text('Email'),
            ),
            TextField(
              //digunakan untuk membuat tabel isian
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          10) //digunakan untuk mendesain pinggiran tabel
                      )),
            ), //widget baru harus diakhiri dengan ,
            Padding(//jarak border, padding ke dalam, margin ke luar
              //digunakan untuk memberikan jarak
              padding: const EdgeInsets.only(top: 16),
              child: Text('Password'), //kalau tanpa padding langsung text
            ),
            TextField(
              obscureText:
                  true, //kalau dia password ketika bernilai true maka akan otomatis menjadi *
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            Container(
              //container digunakan untuk memberi ukuran atau wadah agar dapat diatur text aligb
              padding: EdgeInsets.only(top: 16), //memberi jarak
              width: double
                  .maxFinite, //width = panjang nya akan maksimal kiri kanan
              child: Text('Forgot Password?',
                  textAlign:
                      TextAlign.end, //digunakan untuk rata kiri, tengah, kanan
                  style: TextStyle(
                      color: Colors.blue) //digunakan untuk memberi warna
                  ),
            ),
            Container( //untuk merapikan alt + shift + f tapi harus dikasi , dulu setiap akhir kurung, koma ibarat akhir baris
              padding: EdgeInsets.only(top: 20),
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text("Login"),
              ),
            ) //on pressed digunakan ketika kita menekan tombol maka akan lanjut ke tahap berikutnya
          ],
        ),
      ),
    ));
  }
}
