import 'package:flutter/material.dart';

class CreatePropertyFormWidget extends StatelessWidget {
  const CreatePropertyFormWidget({
    Key key,
    @required GlobalKey<FormState> formKey,
  }) : _formKey = formKey, super(key: key);

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          children: [
            TextFormField(
                cursorColor: Theme
                    .of(context)
                    .accentColor,
                decoration: const InputDecoration(
                    labelText: "Property name",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder()
                )
            ),
            const SizedBox(height: 15),
            TextFormField(
                cursorColor: Theme
                    .of(context)
                    .accentColor,
                decoration: const InputDecoration(
                    labelText: "Simple description",
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    helperText: "Short description about your property",
                    border: OutlineInputBorder()
                )
            ),
            const SizedBox(height: 15),
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLength: 400,
              maxLines: 7,
              cursorColor: Theme
                  .of(context)
                  .accentColor,
              decoration: const InputDecoration(
                  labelText: "Simple summary",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: OutlineInputBorder()
              ),

            ),
            const SizedBox(height: 15),
            DropdownButtonFormField(
              hint: const Text("Choose location"),
              items: ["Nairobi", "Mombasa", "Kisumu", "Eldoret", "Kisii"]
                  .map((e) => DropdownMenuItem(
                  value: e,
                  child: Text(e)
              ),
              ).toList(),
              onChanged: (v) {
                print("changed location $v");
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            RaisedButton(
                elevation: 0,
                onPressed: () {
                  print("submit");
                },
                color: Theme.of(context).primaryColorDark,
                child: const Text("Continue", style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: 0.2,
                ),
                )
            )
          ]
      ),
    );
  }
}
