import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'form_widgets/form_widget.dart';

class NewProperty extends StatefulWidget {
  @override
  _NewPropertyState createState() => _NewPropertyState();
}

class _NewPropertyState extends State<NewProperty> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 32,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(EvaIcons.arrowBackOutline),
                ),
                const SizedBox(height: 20),
                Text(
                  "Basic\nInformation",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    fontFamily: "ProductSans",
                    color: Theme.of(context).primaryColorDark
                  ),
                ),
                const SizedBox(height: 20),
                CreatePropertyFormWidget(formKey: _formKey)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

