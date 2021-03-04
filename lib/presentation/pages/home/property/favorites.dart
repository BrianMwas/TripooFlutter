
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
                "assets/images/empty_box_animation.json",
                height: 250,
                width: 250,
                fit: BoxFit.fill,
            ),
            const SizedBox(height: 50),
            Text("You dont have any favorites")
          ],
        )
      )
    );
  }
}
