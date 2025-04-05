import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PromptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 38.0, bottom: 20, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("this is data from generative ai"),
            FormBuilder(
                key: formKey,
                child: Container(
                  padding: EdgeInsets.only(right:12,left: 22),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      Expanded(
                        child: FormBuilderTextField(
                          name: "promptField",
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Enter text here',
                            border: InputBorder.none, // Removes the underline
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.send))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
