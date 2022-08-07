import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

void launchWs(number, message, link) async {
  String urlWs = 'whatsapp://send?phone=$number&text=$message&text=$link';
  await launchUrl(Uri.parse(urlWs));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/adele.jpeg'),
            ),
          ),
          elevation: 0,
          backgroundColor: const Color(0xff0087f5),
          title: Text(
            'Compartir App',
            style: GoogleFonts.montserrat(
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Text(
                'Invita a parceritos a sumarse a Joei Driver',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Por una carrera más justa para todos',
                style: GoogleFonts.montserrat(
                  fontSize: 18,
                  color: const Color(0xff0087f5),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Image.asset('assets/images/recomendar-aplicacion.jpg'),
              const SizedBox(
                height: 50,
                width: 300,
                child: ShareButton(),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                height: 50,
                width: 300,
                child: ShareButtonDriver(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShareButtonDriver extends StatelessWidget {
  const ShareButtonDriver({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            side: const BorderSide(width: 1.0, color: Color(0xff0087f5)),
            primary: Colors.white,
            shadowColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {},
        child: Text(
          'Referir un conductor',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: const Color(0xff0087f5),
          ),
          textAlign: TextAlign.center,
        ));
  }
}

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            side: const BorderSide(width: 1.0, color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        onPressed: () {
          launchWs(
              '+58 414 258 9352',
              'Únete a joie driver, por una carrera justa para todos, https://play.google.com/store/apps/details?id=com.ciddras.joiedriver',
              '');
        },
        child: Text(
          'Compartir a un parcero',
          style: GoogleFonts.montserrat(
            fontSize: 18,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
