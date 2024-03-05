import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('xdxdd'),
            subtitle: Text('Tempor eiusmod amet irure eu commodo nulla qui adipisicing non ea elit reprehenderit exercitation ea.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  style: TextButton.styleFrom(foregroundColor:AppTheme.primary),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: (){}, 
                  style: TextButton.styleFrom(foregroundColor:AppTheme.primary),
                  child: const Text('Ok')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}