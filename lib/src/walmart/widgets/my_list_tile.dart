import 'package:flutter/material.dart';
import 'package:todo_riderpod_1/src/walmart/pages/walmart_account_page.dart';

class MyListTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;
  final bool isNew;

  const MyListTile(
      {super.key,
      required this.title,
      this.subtitle,
      required this.icon,
      this.isNew = false});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      dense: true,
      leading: Icon(icon),
      title: Row(
        children: [
          Text(title,
              style:
                  textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(width: 10.0),
          Visibility(
            visible: isNew,
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.orange,
                borderRadius: BorderRadius.circular(2.0),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
              child: Text(
                'New',
                style:
                    textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: const Icon(Icons.chevron_right, size: Constans.iconSize),
    );
  }
}
