import 'package:flutter/material.dart';
import 'package:whatapp_clone/utils/colors.dart';
import 'package:whatapp_clone/view/topnavbar.dart';

class LoginDetails extends StatefulWidget {
  const LoginDetails({Key? key}) : super(key: key);

  @override
  State<LoginDetails> createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
  String _number = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Whatsapp Profile'),
            backgroundColor: textColor,
          ),
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
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/icons/user.png",
                          width: 120,
                          height: 120,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          'User Name',
                          style: TextStyle(
                              color: textColor, fontSize: fontSizeSubHeading),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: fontSizeHeading,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            onChanged: (text) => _number = text,
                            validator: (value) {
                              if (value == null || value.length < 2) {
                                return null;
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                              color: textColor, fontSize: fontSizeSubHeading),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            style: TextStyle(
                              fontSize: fontSizeHeading,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              counterText: '',
                            ),
                            maxLength: 10,
                            onChanged: (text) => _number = text,
                            validator: (value) {
                              if (value == null || value.length < 2) {
                                return null;
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'About',
                          style: TextStyle(
                              color: textColor, fontSize: fontSizeSubHeading),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: fontSizeHeading,
                            ),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                            onChanged: (text) => _number = text,
                            validator: (value) {
                              if (value == null || value.length < 2) {
                                return null;
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,MaterialPageRoute(builder: (_) => const TopNavbar()),
                      );
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: textColor),
                    child: const Text('Next'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
