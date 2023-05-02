import 'package:flutter/material.dart';
import 'package:my_project/constants/constants.dart';

class Verification1 extends StatefulWidget {
  const Verification1({Key? key}) : super(key: key);

  @override
  _Verification1State createState() => _Verification1State();
}

class _Verification1State extends State<Verification1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: cBackgrundColor,
        body: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: cColor),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 35,
                    child: Icon(
                      Icons.arrow_back,
                      size: 40,
                      color: cBackgrundColor,
                    ),
                  ),
                  Positioned(
                    width: 233,
                    height: 30,
                    left: 20,
                    top: 86,
                    child: Text(
                      'OTP verification',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: cBackgrundColor),
                    ),
                  ),
                  Positioned(
                    width: 260,
                    height: 40,
                    left: 20,
                    top: 124,
                    child: Text(
                      'Please enter your correct OTP for number verification process.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: cBackgrundColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            cSizedBoxH55,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OTP_TextField(),
                OTP_TextField(),
                OTP_TextField(),
                OTP_TextField(),
              ],
            ),
            cSizedBoxH55,
            Positioned(
              child: Container(
                child: Center(
                  child: Text(
                    'Verify'.toUpperCase(),
                    style: cTextStyle,
                  ),
                ),
                width: 320,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: cActive),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              'Resend OTP',
              style: cTextStyleRec,
            )
          ],
        ),
      ),
    );
  }
}

class OTP_TextField extends StatelessWidget {
  const OTP_TextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 50,
      child: TextField(
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide:
                    BorderSide(width: 3, color: cColor.withOpacity(0.5))),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
