import 'package:flutter/material.dart';
import 'package:todo_riderpod_1/src/pages/uhc_home_page.dart';
import 'package:todo_riderpod_1/src/walmart/pages/walmart_account_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WalmartAccountPage()));
                  },
                  child: const Text('Walmart Demo')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UhcHomePage()));
                  },
                  child: const Text('UHC Demo')),
            ],
          ),
        ),
      ),
    );
  }
}
