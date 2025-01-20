import 'package:flutter/material.dart';

class DAppBarBottom extends StatelessWidget implements PreferredSizeWidget {
  const DAppBarBottom({super.key, required this.child});

  final Widget child;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 16);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: child,
    );
  }
}
