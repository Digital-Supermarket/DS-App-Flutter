import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class StartShopping extends StatefulWidget {
  @override
  _StartShopping createState() => _StartShopping();
}

class _StartShopping extends State<StartShopping> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: appBar("Start Shopping", context),
          backgroundColor: AppTheme.nearlyWhite,
          body: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Text(
                  "Start Shopping now",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 16,
                  right: 50,
                  left: 50,
                ),
                child: const Text(
                  "Choose to start shopping with a shopping list or without one",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 50),),
              buttons(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget appBar(title, context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: Colors.black, // add custom icons also
      ),
    ),
  );
}

Widget shoppingLists(text) {
  return InkWell(
    onTap: () {
      // Show to shopping lists here
    },
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget buttons() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 140,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: const Offset(4, 4),
                    blurRadius: 8.0),
              ],
            ),
            child: Material(
                color: Colors.transparent,
                child: shoppingLists("Shopping Lists")),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
          ),
          Container(
            width: 140,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    offset: const Offset(4, 4),
                    blurRadius: 8.0),
              ],
            ),
            child: Material(
                color: Colors.transparent,
                child: shoppingLists("Start Now")),
          ),
        ],
      ),
    ),
  );
}
