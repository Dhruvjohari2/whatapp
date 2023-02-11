import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:whatapp_clone/utils/colors.dart';
import 'package:whatapp_clone/view/optscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  String phone = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
                opacity: 0.5,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 70),
                      child: Text(
                        'Verify your phone number',
                        style: TextStyle(
                          color: textColor,
                          fontSize: fontSizeHeading,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/icons/three_dot.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'WhatsApp will send an SMS message(carrier charges may apply) to verify your phone number. Enter your country code and phone number',
                    style: TextStyle(
                      fontSize: fontSizeSubHeading,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: IntlPhoneField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'IN',
                    onChanged: (phone) {
                      debugPrint(phone.completeNumber);
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>  const OptScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: textColor),
                  child: const Text('NEXT'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
