import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:insure_bot/Pages/home.dart';
import 'package:insure_bot/models/models.dart';
import 'package:insure_bot/providers/user_provider.dart';
import 'package:provider/provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent.shade400,
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  "Hi, I'm InsureBot",
                  textScaleFactor: 3.5,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Flexible(child: SizedBox(height: 30.0)),
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal.shade900,
                            width: 1.5,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal.shade900,
                            width: 1.5,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal.shade900,
                            width: 1.5,
                          ),
                        ),
                        labelText: "What should I call you ?",
                        labelStyle: TextStyle(
                          color: Colors.teal.shade900,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.85,
                        ),
                        prefixIcon: const Icon(Icons.person_rounded),
                        prefixIconColor: Colors.teal.shade900,
                      ),
                      cursorColor: Colors.teal.shade900,
                      cursorWidth: 2.0,
                      cursorRadius: const Radius.circular(50.0),
                      maxLines: 1,
                      enableInteractiveSelection: true,
                      enableSuggestions: true,
                      keyboardType: TextInputType.name,
                    ),
                  ),
                ),
              ),
              const Flexible(child: SizedBox(height: 15.0)),
              Flexible(
                child: MaterialButton(
                  onPressed: () {
                    if (usernameController.text.isNotEmpty) {
                      Provider.of<UserProvider>(context, listen: false)
                          .setUser(BotUser(name: usernameController.text));

                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomePage()));
                    } else {
                      Fluttertoast.showToast(
                        msg: "Please enter your name     ",
                        webShowClose: true,
                      );
                    }
                  },
                  splashColor: Colors.teal.shade900.withOpacity(0.1),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Text(
                          "Let's get started",
                          textScaleFactor: 1.3,
                          style: TextStyle(
                            color: Colors.teal.shade900,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Flexible(child: SizedBox(width: 3.0)),
                      Flexible(
                        flex: 2,
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.teal.shade900,
                          size: 20.0,
                        ),
                      ),
                    ],
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
