import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:provider/provider.dart';

import '../../providers/ai_response_provider.dart';

class PromptPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();
    final aiResponseProvider = context.read<AiResponseProvider>();
    final aiResponse = context.watch<AiResponseProvider>().response;
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 38.0, bottom: 20, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(aiResponse),
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
                      IconButton(onPressed: (){
                        if(formKey.currentState!.saveAndValidate()){
                          debugPrint("${formKey.currentState!.value}");
                          aiResponseProvider.ask(formKey.currentState!.value['promptField'].toString());
                        }
                      }, icon: Icon(Icons.send))
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
