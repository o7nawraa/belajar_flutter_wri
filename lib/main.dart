import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //widget paling dasar dari aplikasi. widget : kalimat berawalan besar. parameter : berawalan kecil
    //material app berguna untuk run di awal
     home : Scaffold ( //digunakan sebagai kanvas
      appBar: AppBar( //tampilan atas (widget)
        title : Text("Logoip"),
      ),
      body: Container( //widget itu cuma punya satu anak
        padding: EdgeInsets.only(left: 24, right: 24),
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column( //bisa menampung banyak widget
            // mainAxisAlignment: MainAxisAlignment.start, //meratakan tampilan kata sumbu Y (start, center, end)
            crossAxisAlignment : CrossAxisAlignment.start, //meratakan tampilan kata sumbu X () 
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom : 24, top: 24),
              child: Text(
                'Sign in to your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ), //alt + shift + f untuk merapikan code baris
            Text ('Enter your email and password to login'),
          ],
        ),

      ),
     )
    );
  }
}
