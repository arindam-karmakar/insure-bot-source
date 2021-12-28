import 'package:flutter/material.dart';
import 'package:insure_bot/Pages/welcome.dart';
import 'package:insure_bot/providers/user_provider.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const InsureBot());
}

class InsureBot extends StatefulWidget {
  const InsureBot({Key? key}) : super(key: key);

  static void restartApp(BuildContext context) =>
      context.findAncestorStateOfType<_InsureBotState>()!.restartApp();

  @override
  _InsureBotState createState() => _InsureBotState();
}

class _InsureBotState extends State<InsureBot> {
  Key sessionKey = UniqueKey();

  void restartApp() => setState(() {
        sessionKey = UniqueKey();
      });

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: sessionKey,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserProvider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.teal),
          home: const WelcomePage(),
        ),
      ),
    );
  }
}
