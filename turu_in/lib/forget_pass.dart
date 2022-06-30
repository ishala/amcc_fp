import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size mainSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff313642),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 111, left: 85, right: 66),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.bed,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Text('Turu.in',
                    style: GoogleFonts.robotoMono(
                        fontSize: 37,
                        fontWeight: FontWeight.w400,
                        color: Colors.white))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 146, right: 48, left: 49),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Lupa Password',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: mainSize.height * 0.09,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 48, left: 49),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Email',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, right: 48, left: 49),
            child: TextField(
              style: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
              decoration: InputDecoration(
                  fillColor: Color(0xff3E4553),
                  filled: true,
                  hintText: 'Masukkan email..',
                  hintStyle: GoogleFonts.openSans(color: Color(0xff6F7075)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: mainSize.height * 0.063,
          ),
          Container(
              width: 194,
              height: 45,
              decoration: BoxDecoration(
                  color: Color(0xffFF7360),
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Kirim',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )))
        ],
      ),
    );
  }
}
