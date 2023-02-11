import 'package:flutter/material.dart';
import 'package:whatapp_clone/utils/colors.dart';
import 'package:whatapp_clone/view/Homepage.dart';
import 'package:whatapp_clone/view/logindetails.dart';
import 'package:whatapp_clone/view/widgets/textfield.dart';

class OptScreen extends StatefulWidget {
  const OptScreen({Key? key}) : super(key: key);

  @override
  State<OptScreen> createState() => _OptScreenState();
}

class _OptScreenState extends State<OptScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Verify Phone",
                    style: TextStyle(
                      color: textColor,
                      fontSize: fontSizeHeading,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Enter the Otp send to number",
                  style: TextStyle(fontSize: fontSizeSubHeading),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TextFieldInput(),
                  TextFieldInput(),
                  TextFieldInput(),
                  TextFieldInput(),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't receive OTP?",
                    style: TextStyle(fontSize: fontSizeSubHeading),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HomePage(),
                          ),
                        );
                      },
                      child: const Text("RESEND OTP")),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>  const LoginDetails(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: textColor),
                child: Text(
                  'NEXT',
                  style: TextStyle(
                    color: loginButtonColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
