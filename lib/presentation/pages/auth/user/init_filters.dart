import 'package:cool_stepper/cool_stepper.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';


class InitFilters extends StatefulWidget {
  @override
  _InitFiltersState createState() => _InitFiltersState();
}

class _InitFiltersState extends State<InitFilters> {
  final PageController _controller = PageController(initialPage: 0);
  int _currentPage = 0;
  int _noOfPages = 3;

  List<Widget> _buildPageIndicator() {
    final List<Widget> list = [];
    for(int i = 0; i < _noOfPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Color(0xffF2F8FD)
              ]
            )
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                child: FlatButton(
                  onPressed: () {},
                  child: const Text("Skip",
                    style: TextStyle(
                      fontFamily: "ProductSans",
                      fontSize: 20.0,
                    ),
                  )
                )
              ),
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                child: PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Lottie
                                .asset(
                                "assets/images/rocket.json",
                                height: 250,
                                width: 250,
                                fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Let's get started",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: Theme.of(context).textTheme.headline4.fontSize,
                              color: Colors.black87
                            ),
                          ),
                          const Text("Please choose your preferences."),
                          const SizedBox(height: 20),
                          CustomCheckBoxGroup(
                            horizontal: true,
                            buttonTextStyle: const ButtonTextStyle(
                              selectedColor: Color(0xff00CF91),
                              unSelectedColor: Color(0xffF2F8FD),
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            buttonLables:const [
                              "Rent",
                              "Buy"
                            ],
                            buttonValuesList:const [
                              "RENT",
                              "BUY"
                            ],
                            defaultSelected: "RENT",
                            padding: 12,
                            width: 40,
                            enableButtonWrap: false,
                            checkBoxButtonValues: (values) {
                              print("values $values");
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Lottie
                                .asset(
                              "assets/images/rocket.json",
                              height: 250,
                              width: 250,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Let's get started",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: Theme.of(context).textTheme.headline4.fontSize,
                                color: Colors.black87
                            ),
                          ),
                          const Text("Please choose your preferences."),
                          const SizedBox(height: 20),
                          CustomCheckBoxGroup(
                            horizontal: true,
                            buttonTextStyle: const ButtonTextStyle(
                              selectedColor: Color(0xff00CF91),
                              unSelectedColor: Color(0xffF2F8FD),
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            buttonLables:const [
                              "Rent",
                              "Buy"
                            ],
                            buttonValuesList:const [
                              "RENT",
                              "BUY"
                            ],
                            defaultSelected: "RENT",
                            padding: 12,
                            width: 40,
                            enableButtonWrap: false,
                            checkBoxButtonValues: (values) {
                              print("values $values");
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Lottie
                                .asset(
                              "assets/images/rocket.json",
                              height: 250,
                              width: 250,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Let's get started",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: Theme.of(context).textTheme.headline4.fontSize,
                                color: Colors.black87
                            ),
                          ),
                          const Text("Please choose your preferences."),
                          const SizedBox(height: 20),
                          CustomCheckBoxGroup(
                            horizontal: true,
                            buttonTextStyle: const ButtonTextStyle(
                              selectedColor: Color(0xff00CF91),
                              unSelectedColor: Color(0xffF2F8FD),
                              textStyle: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            buttonLables:const [
                              "Rent",
                              "Buy"
                            ],
                            buttonValuesList:const [
                              "RENT",
                              "BUY"
                            ],
                            defaultSelected: "RENT",
                            padding: 12,
                            width: 40,
                            enableButtonWrap: false,
                            checkBoxButtonValues: (values) {
                              print("values $values");
                            },
                          )
                        ],
                      ),
                    ),
                  ]
                )
              ),
              if (_currentPage != _noOfPages - 1) Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: FlatButton(
                      onPressed: () {
                        print("Next");
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                        );
                      },
                      child: const Text("Next", style: TextStyle(fontSize: 22.0,),),
                    )
                  ),
              ) else Container()
            ]
          )
        ),
      ),
      bottomSheet: _currentPage == _noOfPages - 1 ? Container(
        height: 100,
        width: double.infinity,
        color: Theme.of(context).accentColor,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: Text(
              "Continue",
              style: TextStyle(
                fontFamily: "ProductSans",
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w600
              ),
            ),
          )
        )
      ) : Container(),
    );
  }
}
