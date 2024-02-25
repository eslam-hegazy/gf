import 'package:daldart/core/helpers/app_functions.dart';
import 'package:daldart/core/networking/models/post_model.dart';
import 'package:flutter/material.dart';

class ItemHome extends StatelessWidget {
  const ItemHome({super.key, required this.color, required this.postModel});
  final Color color;
  final PostModel postModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        launchUrlLink(urlLink: postModel.link);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(10),
          child: Column(
            children: [
              Container(
                height: 5,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(postModel.title,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 10),
                    Text(postModel.description),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
