import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../providers/ai_response_provider.dart';

class PromptPageService {
  final GlobalKey<FormBuilderState> formKey;
  final BuildContext context;

  PromptPageService({required this.formKey, required this.context});

  bool validateInput(){
    return formKey.currentState!.saveAndValidate();
  }

  void makeAiCall(AiResponseProvider aiResponseProvider, prompt){
    if (validateInput()){
      aiResponseProvider.ask(prompt);
    }
  }

}