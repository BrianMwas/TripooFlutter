import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:supercharged/supercharged.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

class PropertyCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.singleUnitView);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 5.0, 2.0, 0.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Card(
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:8.0, left: 8.0, right: 8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                          children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: CachedNetworkImage(
                            imageUrl: "https://source.unsplash.com/weekly?house",
                            fit: BoxFit.cover,
                            height: 150,
                            width: MediaQuery.of(context).size.width * 0.75,
                          ),
                        ),
                        Positioned(
                          top: 5.0,
                          right: 5.0,
                          child: LikeButton(
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: Theme.of(context).primaryColor,
                              dotSecondaryColor:
                                  Theme.of(context).primaryColorDark,
                            ),
                            likeBuilder: (bool isLiked) {
                              if (isLiked) {
                                return const Icon(EvaIcons.heart,
                                    color: Colors.red);
                              } else {
                                return const Icon(
                                  EvaIcons.heartOutline,
                                  color: Colors.black,
                                );
                              }
                            },
                          ),
                        ),
                      ]),
                      const SizedBox(height: 10),
                      Text("KSH 25000",
                          style: TextStyle(
                            color: "#00CF91".toColor(),
                          )),
                      Text(
                        "Mulu Apartments",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: "ProductSans"),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "BEDSITTER",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                        ),
                      )
                    ]),
              )),
        ),
      ),
    );
  }
}
