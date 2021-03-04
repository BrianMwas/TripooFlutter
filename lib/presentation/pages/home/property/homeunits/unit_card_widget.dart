import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tripoo/presentation/routes/route.gr.dart';

class UnitCard extends StatelessWidget {
  const UnitCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ExtendedNavigator.of(context).push(Routes.editUnitView);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
            children: [
              Container(
                  height: 200,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CarouselSlider.builder(
                      itemCount: 4,
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 2),
                      ),
                      itemBuilder: (context, itemCount, _) {
                        return CachedNetworkImage(
                          imageUrl: "https://source.unsplash.com/random",
                          width: 150,
                          height: 200,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  )
              ),
              Container(
                  height: 200,
                  width: 150,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.black87.withOpacity(0.25),
                            Colors.black87
                          ]
                      )
                  ),
                  child: Stack(
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("BedSitter", style: TextStyle(color: Theme.of(context).primaryColor,),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Mul12",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: "ProductSans",
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4.0),
                                    child: Icon(
                                      EvaIcons.wifi,
                                      color: Theme.of(context).primaryColor,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ]
                        ),
                        Positioned(
                            top: 5,
                            right: 5,
                            child: Row(
                                children: const [
                                  Icon(
                                      EvaIcons.heart,
                                      color: Colors.redAccent
                                  ),
                                  SizedBox(width: 4),
                                  Text("3", style: TextStyle(color: Colors.white))
                                ]
                            )
                        )
                      ]
                  )
              ),
            ]
        ),
      ),
    );
  }
}