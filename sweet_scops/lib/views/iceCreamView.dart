import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IceCreamView extends StatefulWidget {
  const IceCreamView({super.key});

  @override
  State<IceCreamView> createState() => _IceCreamViewState();
}

class _IceCreamViewState extends State<IceCreamView> {
  Map<String, dynamic>? decodedIcecreams;
  @override
  void initState() {
    super.initState();
    loadIcecreams();
  }

  Future<void> loadIcecreams() async {
    final rawIcecream = await rootBundle.loadString("assets/icecream.json");
    final decodedIcecream = jsonDecode(rawIcecream);
    await Future.delayed(Duration(seconds: 1));
    print(decodedIcecream);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "IceCream",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "We have Something yummy for you",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          if (decodedIcecreams != null)
            Text("Icecream loaded")
          else
            Center(child: CircularProgressIndicator.adaptive())
        ],
      ),
    );
  }
}
