import 'package:flutter/material.dart';
import 'package:todo_riderpod_1/src/walmart/widgets/my_list_tile.dart';

class MyColors {
  static final Color blue = Colors.blue.shade800;
  static const Color yellow = Colors.yellow;
  static const Color orange = Colors.orange;
  static const Color white = Colors.white;
}

class Constans {
  static const iconSize = 28.0;
}

final listDivider =
    const Divider(indent: 15.0, endIndent: 15.0, thickness: 0.5);

class WalmartAccountPage extends StatelessWidget {
  const WalmartAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final textStyle = DefaultTextStyle.of(context);

    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70.0,
        backgroundColor: MyColors.blue,
        actions: [
          _buildHeader(textTheme),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
      body: _buildBody(context, textTheme),
    );
  }

  SingleChildScrollView _buildBody(BuildContext ctx, TextTheme textTheme) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.,
        children: [
          Card(
            // surfaceTintColor: Colors.amber,
            color: MyColors.white,
            elevation: 2,
            child: ListTile(
              dense: true,
              // shape: BeveledRectangleBorder(side: BorderSide(width: 0.5)),
              // shape: Border.all(width: 0.2),

              leading: const Icon(Icons.mail_outline),
              title: RichText(
                text: TextSpan(
                    text: 'You have ',
                    style: textTheme.bodyMedium,
                    children: [
                      TextSpan(
                          text: '4 new messages',
                          style: textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
              ),
              // style: textStyle.style.copyWith(color: Colors.black))),
            ),
          ),
          const SizedBox(height: 10.0),
          _buildBodyPurchaseHistory(textTheme),
          const SizedBox(height: 20.0),
          Text(
            'My Items',
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 10.0),
          _buildBodyMyItems(),
          const SizedBox(height: 20.0),
          Text(
            'My Profile',
            style: textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 10.0),
          _buildBodyMyProfile(),
          const SizedBox(height: 10.0),
          SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () => Navigator.pop(ctx), child: Text('GO BACK')))
        ],
      ),
    );
  }

  Card _buildBodyMyItems() {
    return Card(
      child: Column(
        children: [
          const MyListTile(
              title: 'Reorder',
              subtitle: 'Easily rebuild your favorite items again',
              icon: Icons.list_alt),
          listDivider,
          const MyListTile(
              title: 'Lists',
              subtitle: 'Add your favorites to your lists',
              icon: Icons.favorite_outline),
          listDivider,
          const MyListTile(
            title: 'Subscriptions',
            subtitle: 'Easily rebuild your favorite items again',
            icon: Icons.sync_outlined,
            isNew: true,
          ),
          listDivider,
          const MyListTile(
              title: 'Registries',
              subtitle: 'Manage or create registy',
              icon: Icons.card_giftcard),
          listDivider,
          const MyListTile(
              title: 'Protection plans',
              subtitle: 'Peace of mind for everything you buy',
              icon: Icons.shield_outlined),
        ],
      ),
    );
  }

  Card _buildBodyMyProfile() {
    return Card(
      child: Column(
        children: [
          const MyListTile(
            title: 'Reviews',
            subtitle: 'Share your insight with others',
            icon: Icons.star_outline_outlined,
            isNew: true,
          ),
          listDivider,
          const MyListTile(
              title: 'Pets',
              subtitle: 'Add and manage pets',
              icon: Icons.favorite_outline),
          listDivider,
          const MyListTile(
              title: 'Vehicles',
              subtitle: 'Add and manage vehicles',
              icon: Icons.sync_outlined),
          listDivider,
          const MyListTile(
            title: 'Recipes',
            subtitle: 'View your saved recipes',
            icon: Icons.card_giftcard,
            isNew: true,
          ),
        ],
      ),
    );
  }

  Card _buildBodyPurchaseHistory(TextTheme textTheme) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          ListTile(
            dense: true,
            leading: const Icon(Icons.list_alt),
            title: Text(
              'Purchase history',
              style: textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: const Icon(Icons.chevron_right, size: Constans.iconSize),
            // style: textStyle.style.copyWith(color: Colors.black))),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Text(
                'Track your order status, start a return, or view purchase history and receipts'),
          )
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.shop_2_outlined), label: 'Shop'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart), label: 'My Items'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined), label: 'Services'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined), label: 'Account'),
      ],
    );
  }

  Expanded _buildHeader(TextTheme textTheme) {
    return Expanded(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(Icons.radio_sharp, color: MyColors.orange),
          ),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hi, Dariel',
                    style: textTheme.headlineSmall!
                        .copyWith(color: MyColors.white)),
                const Icon(Icons.settings, color: MyColors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}
