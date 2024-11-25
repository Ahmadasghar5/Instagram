import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram/utils/sizes.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: context.width,
          child: Column(
            children: [
              Row(
                children: [
                  Text("Instagram"),
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.message_sharp)),
                ],
              ),
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
