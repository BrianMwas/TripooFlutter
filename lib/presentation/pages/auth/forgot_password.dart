import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Forgot ",
                style: TextStyle(
                    fontFamily: "ProductSans",
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.headline4.fontSize),
                children: [
                  TextSpan(
                    text: "Password",
                    style: TextStyle(
                      fontFamily: "ProductSans",
                      fontWeight: FontWeight.w800,
                      color: Theme.of(context).accentColor,
                      fontSize: Theme.of(context).textTheme.headline4.fontSize,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
                height: 6,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(3.0),
                )),
            const SizedBox(height: 15),
            Text(
              "An email will be sent if an account exists.",
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyText1.fontSize),
            ),
            const SizedBox(height: 12),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    cursorColor: Theme.of(context).accentColor,
                    decoration: const InputDecoration(
                      helperText: "Email Address used when you registered",
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      labelText: "yours@example.com",
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    validator: (v) {
                      if (v.isEmpty) {
                        return "Please enter your email";
                      }

                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  RaisedButton(
                      color: Theme.of(context).accentColor,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          print("current state ${_formKey.currentState}");
                        }
                      },
                      child: Text("Send",
                          style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .fontSize,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
