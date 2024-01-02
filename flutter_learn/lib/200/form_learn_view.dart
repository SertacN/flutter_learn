import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  final GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        onChanged: () {},
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return (value?.isNotEmpty ?? false) ? null : 'boş geçilemez';
              },
            ),
            TextFormField(validator: FormFieldValidator().validateForm),
            DropdownButtonFormField<String>(
              validator: FormFieldValidator().validateForm,
              items: const [
                DropdownMenuItem(value: 'a', child: Text('data')),
                DropdownMenuItem(value: 'b', child: Text('data2')),
                DropdownMenuItem(value: 'c', child: Text('data3')),
              ],
              onChanged: (value) {},
            ),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    // ignore: avoid_print
                    print('okey');
                  }
                },
                child: const Text('Save'))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? validateForm(String? value) {
    return (value?.isNotEmpty ?? false) ? null : 'boş geçilemez';
  }
}
