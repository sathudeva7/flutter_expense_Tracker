import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget implements PreferredSizeWidget {
  @override

  Widget build(BuildContext context) {
    
    return AppBar(
      title: Text('Expense Tracker'),
    );
  }
    @override
  Size get preferredSize => const Size.fromHeight(50);
}