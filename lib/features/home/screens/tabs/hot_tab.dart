import 'package:daldart/features/widgets/item_home.dart';
import 'package:flutter/material.dart';

class HotTab extends StatelessWidget {
  const HotTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ItemHome(color: Colors.yellowAccent);
      },
    );
  }
}
