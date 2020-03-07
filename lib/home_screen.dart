import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController animationController;
  bool multiple = true;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 0));
    return true;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      body: FutureBuilder<bool>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          } else {
            return Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  appBar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                        ),
                        appLogoMainPage(),
                        welcomeText("Welcome Username!"),
                        mainButton("Start Shopping"),
                        buttonDescription(
                            "Scan items, add to your cart, chekout using your phone!"),
                        mainButton("Shopping List"),
                        buttonDescription(
                            "Create, review, or edit your shopping lists!"),
                        mainButton("Statistics"),
                        buttonDescription(
                            "Review most purchased items, stats, spendings and more!"),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget appBar() {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Digi Mart',
                  style: TextStyle(
                    fontSize: 22,
                    color: AppTheme.darkText,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, right: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
              color: Colors.white,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                      BorderRadius.circular(AppBar().preferredSize.height),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget mainButton(String text) {
  return Center(
      child: Container(
    padding: const EdgeInsets.only(top: 10.0),
    width: 300,
    height: 50,
    child: FlatButton(
      onPressed: () {
        print("this is a test");
      },
      color: const Color(0xFF045474),
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      padding: EdgeInsets.all(4.0),
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0)),
      child: Text(text),
    ),
  ));
}

Widget buttonDescription(String text) {
  return Padding(
    padding: const EdgeInsets.only(right: 50, left: 50),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

Widget welcomeText(String text) {
  return Padding(
    padding: const EdgeInsets.only(right: 50, left: 50),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: const Color(0xFF638568)),
          ),
        ),
      ),
    ),
  );
}

Widget appLogoMainPage() {
  return Container(
    height: 120,
    width: 120,
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: AppTheme.grey.withOpacity(0.6),
            offset: const Offset(4.0, 4.0),
            blurRadius: 8),
      ],
    ),
    child: ClipRRect(
      //borderRadius: const BorderRadius.all(),
      child: Image.asset('assets/images/logo.png'),
    ),
  );
}
