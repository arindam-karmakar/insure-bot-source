class InsureMessage {
  String body;
  String? user;
  bool isBot, waitForResponse;
  List<dynamic>? resp;

  InsureMessage({
    required this.body,
    this.user,
    required this.isBot,
    required this.waitForResponse,
    this.resp,
  });
}

List<InsureMessage> insureConversation = [
  InsureMessage(
    body: "I'm InsureBot & I'm here to help you out with your insurance needs!",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body:
        "Please answer few questions, so that I can recommend the right products for you...",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body: "What do you want to insure?",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body: "Please select the type of insurance you need:",
    isBot: false,
    waitForResponse: true,
    resp: ["Health Insurance", "Vehicle Insurance", "Gadget Insurance"],
  ),
  InsureMessage(
    body: "For how long you want the insurance?",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body: "Please select the term of insurance you need:",
    isBot: false,
    waitForResponse: true,
    resp: ["1 year", "2 years", "3 years", "5 years"],
  ),
  InsureMessage(
    body: "How often do you want to pay?",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body: "Please select the frequency of payment:",
    isBot: false,
    waitForResponse: true,
    resp: ["Monthly", "Quarterly", "Yearly", "At Once"],
  ),
  InsureMessage(
    body: "How much coverage area do you want?",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body: "Please select the area of service:",
    isBot: false,
    waitForResponse: true,
    resp: ["India Only", "International"],
  ),
  InsureMessage(
    body: "Do you have any specific company in mind?",
    isBot: true,
    waitForResponse: false,
  ),
  InsureMessage(
    body: "Please select company preference:",
    isBot: false,
    waitForResponse: true,
    resp: [
      "ABC pvt. ltd.",
      "Instant Q",
      "M Insurances",
      "Finance Z",
      "GH Inc.",
      "Any",
    ],
  ),
  InsureMessage(
    body:
        "Finding the best insurance policies for you {user.name}, Please wait...",
    isBot: true,
    waitForResponse: false,
  ),
];
