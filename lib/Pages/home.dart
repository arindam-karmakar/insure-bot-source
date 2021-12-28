import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:insure_bot/database/policies.dart';
import 'package:insure_bot/database/queries.dart';
import 'package:insure_bot/main.dart';
import 'package:insure_bot/models/models.dart';
import 'package:insure_bot/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String _sourceCodeUrl =
      "https://github.com/arindam-karmakar/insure-bot-source";
  final String _compiledCodeUrl =
      "https://github.com/arindam-karmakar/insure-bot";
  final String _msLearnUrl =
      "https://docs.microsoft.com/en-in/users/arindamkarmakar/";

  _launchLink(String _url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  bool updateMessage = false;

  int temp = 0;

  List<Map<String, dynamic>> currentStateConversation = [];

  // String? insureType, insureTerm, insurePay, insureArea, insureCompany;

  List<String> insureFilters = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      currentStateConversation.add({
        'input': false,
        'data': InsureMessage(
          body:
              "Hello ${Provider.of<UserProvider>(context, listen: false).user!.name}",
          isBot: true,
          waitForResponse: false,
        ),
      });
    });

    addConv();
  }

  void addConv() async {
    for (int i = temp; i < insureConversation.length; i++) {
      if (!insureConversation[i].waitForResponse) {
        await Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
          setState(() {
            currentStateConversation.insert(
              0,
              {
                'input': false,
                'data': insureConversation[i],
              },
            );
          });
        });
      } else {
        await Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
          setState(() {
            currentStateConversation.insert(
              0,
              {
                'input': false,
                'data': insureConversation[i],
              },
            );
            currentStateConversation.insert(
              0,
              {
                'input': true,
                'data': Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      for (var j = 0;
                          j < insureConversation[i].resp!.length;
                          j++)
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ActionChip(
                            label: Text(
                                "${j + 1}. ${insureConversation[i].resp![j]}"),
                            backgroundColor:
                                Colors.tealAccent.shade400.withOpacity(0.4),
                            pressElevation: 4.0,
                            onPressed: () {
                              setState(() {
                                insureFilters
                                    .add(insureConversation[i].resp![j]);

                                currentStateConversation.removeAt(0);
                                currentStateConversation.removeAt(0);

                                currentStateConversation.insert(
                                  0,
                                  {
                                    'input': false,
                                    'data': InsureMessage(
                                      body: insureConversation[i].resp![j],
                                      isBot: false,
                                      waitForResponse: false,
                                    ),
                                  },
                                );
                              });
                              addConv();
                            },
                          ),
                        ),
                    ],
                  ),
                ),
              },
            );

            temp = i + 1;
          });
        });

        break;
      }
    }

    if (insureFilters.length == 5) {
      setState(() {
        currentStateConversation.insert(
          0,
          {
            'input': true,
            'data': Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 30.0,
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: CircularProgressIndicator(color: Colors.teal.shade900),
                ),
              ),
            ),
          },
        );
      });

      await getPoliciesFromDatabase();
    }
  }

  Future<void> getPoliciesFromDatabase() async {
    List<IBPolicy> _myPolicies = [];

    for (var i = 0; i < allPolicies.length; i++) {
      if (insureFilters[0] == allPolicies[i].insuranceType &&
          insureFilters[1] == allPolicies[i].term) {
        setState(() {
          _myPolicies.add(allPolicies[i]);
        });
      }
    }

    await Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        currentStateConversation.removeAt(0);
        currentStateConversation.removeAt(0);

        currentStateConversation.insert(0, {
          'input': false,
          'data': InsureMessage(
            body:
                "Here're the best policies matching your needs ( showing both International & India only ): ",
            isBot: true,
            waitForResponse: false,
          ),
        });

        currentStateConversation.insert(0, {
          'input': true,
          'data': Align(
            alignment: Alignment.topLeft,
            child: Wrap(
              children: [
                for (var k = 0; k < _myPolicies.length; k++)
                  GestureDetector(
                    onTap: () =>
                        Fluttertoast.showToast(msg: "Details coming soon!"),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 225.0),
                      child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.tealAccent.shade400.withOpacity(0.1),
                            border: Border.all(
                              color: Colors.teal.shade900,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 3,
                                child: Center(
                                  child: Text(
                                    _myPolicies[k].policyName,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textScaleFactor: 1.5,
                                    style: TextStyle(
                                      color: Colors.teal.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Divider(
                                  color: Colors.teal.shade900.withOpacity(0.15),
                                  thickness: 2.0,
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Text(
                                          _myPolicies[k].term,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.teal.shade900,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      child: RotatedBox(
                                        quarterTurns: 1,
                                        child: Divider(
                                          color: Colors.teal.shade900
                                              .withOpacity(0.15),
                                          thickness: 1.0,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Center(
                                        child: Text(
                                          "₹ ${_myPolicies[k].price}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: Colors.teal.shade900,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Center(
                                  child: Text(
                                    _myPolicies[k].serviceArea,
                                    maxLines: 1,
                                    textScaleFactor: 1.1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.teal.shade900,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    BotUser? _currentUser =
        Provider.of<UserProvider>(context, listen: false).user;

    List<Widget> actionChips = [
      ActionChip(
        label: const Text("Source Code ( Flutter )"),
        labelStyle: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
        ),
        avatar: ImageIcon(
          const AssetImage("assets/icons/github.png"),
          color: Colors.teal.shade900,
        ),
        backgroundColor: Colors.tealAccent.shade400.withOpacity(0.3),
        side: BorderSide(
          color: Colors.teal.shade900,
          width: 1.5,
        ),
        padding: const EdgeInsets.all(12.0),
        pressElevation: 0.0,
        onPressed: () => _launchLink(_sourceCodeUrl),
      ),
      ActionChip(
        label: const Text("Compiled code ( Web App )"),
        labelStyle: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
        ),
        avatar: ImageIcon(
          const AssetImage("assets/icons/github.png"),
          color: Colors.teal.shade900,
        ),
        backgroundColor: Colors.tealAccent.shade400.withOpacity(0.3),
        side: BorderSide(
          color: Colors.teal.shade900,
          width: 1.5,
        ),
        padding: const EdgeInsets.all(12.0),
        pressElevation: 0.0,
        onPressed: () => _launchLink(_compiledCodeUrl),
      ),
      ActionChip(
        label: const Text("Microsoft Learn Profile"),
        labelStyle: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
        ),
        avatar: ImageIcon(
          const AssetImage("assets/icons/microsoft.png"),
          color: Colors.teal.shade900,
        ),
        backgroundColor: Colors.tealAccent.shade400.withOpacity(0.3),
        side: BorderSide(
          color: Colors.teal.shade900,
          width: 1.5,
        ),
        padding: const EdgeInsets.all(12.0),
        pressElevation: 0.0,
        onPressed: () => _launchLink(_msLearnUrl),
      ),
      ActionChip(
        label: const Text("About"),
        labelStyle: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
        ),
        avatar: Center(
          child: Icon(
            Icons.info_rounded,
            color: Colors.teal.shade900,
            size: 18.0,
          ),
        ),
        backgroundColor: Colors.tealAccent.shade400.withOpacity(0.3),
        side: BorderSide(
          color: Colors.teal.shade900,
          width: 1.5,
        ),
        padding: const EdgeInsets.all(12.0),
        pressElevation: 0.0,
        onPressed: () =>
            Fluttertoast.showToast(msg: "InsureBot by Arindam Karmakar."),
      ),
      ActionChip(
        label: const Text("Restart Bot"),
        labelStyle: TextStyle(
          color: Colors.teal.shade900,
          fontWeight: FontWeight.bold,
        ),
        avatar: Center(
          child: Icon(
            Icons.replay_circle_filled_rounded,
            color: Colors.teal.shade900,
            size: 18.0,
          ),
        ),
        backgroundColor: Colors.tealAccent.shade400.withOpacity(0.3),
        side: BorderSide(
          color: Colors.teal.shade900,
          width: 1.5,
        ),
        padding: const EdgeInsets.all(12.0),
        pressElevation: 0.0,
        onPressed: () {
          currentStateConversation.clear();

          InsureBot.restartApp(context);
        },
      ),
      (_width < _height)
          ? Center(
              child: Text(
                "A project by Arindam Karmakar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "A project by",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6.0),
                Text(
                  "Arindam Karmakar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    ];

    Container chatArea = Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.teal.shade900.withOpacity(0.5),
          width: 2.0,
        ),
      ),
      child: ListView.builder(
        reverse: true,
        itemCount: currentStateConversation.length,
        itemBuilder: (BuildContext context, int index) {
          if (!currentStateConversation[index]['input']) {
            return Align(
              alignment: (currentStateConversation[index]['data'].isBot)
                  ? Alignment.topLeft
                  : Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(12.0),
                constraints: BoxConstraints(
                    maxWidth: (_width < _height) ? _width * 0.7 : 300.0),
                decoration: BoxDecoration(
                  color: (currentStateConversation[index]['data'].isBot)
                      ? Colors.grey[300]
                      : Colors.tealAccent.shade400.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(
                  currentStateConversation[index]['data']
                      .body
                      .toString()
                      .replaceAll(
                        RegExp(r'{user.name}'),
                        _currentUser!.name,
                      ),
                  textScaleFactor: 1.1,
                ),
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: currentStateConversation[index]['data'],
            );
          }
        },
      ),
    );

    return Consumer<UserProvider>(
      builder: (context, _userData, _) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.tealAccent.shade400,
          title: const Text("InsureBot"),
          titleTextStyle: TextStyle(
            color: Colors.teal.shade900,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: (_width < _height)
              ? Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return actionChips[index];
                        },
                        separatorBuilder: (context, index) {
                          return RotatedBox(
                            quarterTurns: 1,
                            child: Divider(
                              color: Colors.teal.shade900.withOpacity(0.2),
                              indent: 10.0,
                              endIndent: 10.0,
                              thickness: 1.5,
                              height: 32.0,
                            ),
                          );
                        },
                        itemCount: actionChips.length,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: chatArea,
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return actionChips[index];
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.teal.shade900.withOpacity(0.2),
                            indent: 20.0,
                            endIndent: 20.0,
                            thickness: 1.5,
                            height: 32.0,
                          );
                        },
                        itemCount: actionChips.length,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: chatArea,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
