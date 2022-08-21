import 'package:flutter/material.dart';
import 'package:flutter_locale/generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  S.load(const Locale('th'));
                });
              },
              child: Text(S.of(context).changeLocaleToTH),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  S.load(const Locale('en'));
                });
              },
              child: Text(S.of(context).changeLocaleToEN),
            ),
          ],
        ),
      ),
    );
  }
}
