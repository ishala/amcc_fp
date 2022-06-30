import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _secureText1 = false;
  bool _secureText2 = false;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveState = <MaterialState>{
        MaterialState.hovered,
        MaterialState.pressed,
        MaterialState.focused,
      };
      if (states.any(interactiveState.contains)) {
        return Colors.black;
      }
      return Color(0xffffFF7360);
    }

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
          SizedBox(
            height: mainSize.height * 0.075,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 48, left: 49),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login',
                textAlign: TextAlign.start,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: mainSize.height * 0.025,
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
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 48, left: 49),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
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
              obscureText: _secureText1,
              decoration: InputDecoration(
                  fillColor: Color(0xff3E4553),
                  filled: true,
                  hintText: 'Masukkan password..',
                  hintStyle: GoogleFonts.openSans(color: Color(0xff6F7075)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _secureText1 = !_secureText1;
                      });
                    },
                    icon: Icon(_secureText1
                        ? Icons.visibility
                        : Icons.visibility_off_rounded),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(height: mainSize.height * 0.04),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42.0),
                child: Checkbox(
                    value: isChecked,
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Syarat & Ketentuan',
                    style: GoogleFonts.poppins(
                        fontSize: 12, color: Color(0xffFF7360)),
                  )),
            ],
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
                    'Login',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ))),
          SizedBox(
            height: mainSize.height * 0.024,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 2,
                width: 118,
                color: Colors.white,
              ),
              Text(
                'atau',
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              Container(
                height: 2,
                width: 118,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: mainSize.height * 0.028,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 55.0),
                child: Container(
                  height: 36,
                  width: 118,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/google.png',
                        width: 22,
                        height: 22,
                      ),
                      Text(
                        'Google',
                        style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 36,
                width: 118,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/facebook.png',
                      width: 22,
                      height: 22,
                    ),
                    Text(
                      'Facebook',
                      style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: mainSize.height * 0.024,
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
                    'Sign Up',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ))),
        ],
      ),
    );
  }
}
