import 'package:flutter/material.dart';

const darkBlue = Color.fromARGB(255, 6, 1, 82);

class UhcHomePage extends StatelessWidget {
  const UhcHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: darkBlue,
        actions: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: _buildHeader(textTheme),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, right: 10.0, bottom: 50.0),
        child: Column(
          children: [
            _buildCard1(textTheme),
            SizedBox(height: 10.0),
            _buildCard2(textTheme),
            SizedBox(height: 10.0),
            _buildCard2(textTheme),
            SizedBox(height: 10.0),
            _buildCard2(textTheme),
            SizedBox(height: 10.0),
            _buildCard2(textTheme),
            SizedBox(height: 10.0),
            ListTile(
              // leading: Icon(Icons.attach_money),
              title: Text(
                'Spotlight',
                style: textTheme.headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.chevron_right),
            ),
            SizedBox(
              height: 100.0,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Card(
                        // decoration: BoxDecoration(),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('MEDICATIONS',
                                      style: textTheme.titleSmall),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    'Refills and Home Delivery',
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Easily fill prescriptions and get at-home',
                                    style: textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   // height: 100,
                            //   width: 100.0,
                            //   // width: double.infinity,
                            //   // color: Colors.lightBlue,
                            //   child: Container(
                            //     color: Colors.red,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Card(
                        // decoration: BoxDecoration(),
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('MEDICATIONS',
                                      style: textTheme.titleSmall),
                                  const SizedBox(height: 10.0),
                                  Text(
                                    'Refills and Home Delivery',
                                    style: textTheme.titleSmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Easily fill prescriptions and get at-home',
                                    style: textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   // height: 100,
                            //   width: 100.0,
                            //   // width: double.infinity,
                            //   // color: Colors.lightBlue,
                            //   child: Container(
                            //     color: Colors.red,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('GO BACK')))
          ],
        ),
      ),
    );
  }

  Card _buildCard1(TextTheme textTheme) {
    return Card(
      elevation: 8.0,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.list_alt),
            title: Text(
              'My Plan Overview',
              style: textTheme.titleMedium,
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text(
              'Cost Estimates',
              style: textTheme.titleMedium,
            ),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text(
              'Pay Premium',
              style: textTheme.titleMedium,
            ),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }

  Card _buildCard2(TextTheme textTheme) {
    return Card(
      elevation: 8.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Spending Rewards',
                style:
                    textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.list_alt),
                    title: Text(
                      'Family Plan Spending',
                      style: textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Medical In-Network',
                      style: textTheme.titleSmall,
                    ),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text(
                      'Cost Estimates',
                      style: textTheme.titleMedium,
                    ),
                    trailing: Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard),
              title: Text(
                'Rewards',
                style: textTheme.titleMedium,
              ),
              trailing: Icon(Icons.open_in_new),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(TextTheme textTheme) {
    return IntrinsicHeight(
      child: Row(
        children: [
          const CircleAvatar(
            child: Text(
              'DS',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          const SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dariel Subiros Munoz',
                style: textTheme.labelMedium!.copyWith(color: Colors.white),
              ),
              Text(
                'Home',
                style: textTheme.titleLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
