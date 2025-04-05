import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PromptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("this is data from generative ai"),
          FormBuilder(
              key: formKey,
              child: FormBuilderTextField(
                name: "promptField",
                keyboardType: TextInputType.text,
              ))
        ],
      ),
    );
  }
}
