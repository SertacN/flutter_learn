import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_learn/product/widgets/button/answer_button.dart';
import 'package:flutter_learn/product/widgets/button/loading_button.dart';
import 'package:flutter_learn/product/widgets/user_dropdown.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}
// Dropdawn menu yap. içine dummy data alsın.bunuda Callback Widget yap.

// Bir sayı dön random bir sayı.kontrol edip cevap verilecek.
// Bu cevaba göre butonun rengi değişecek.
// doğru ise yeşil, yanlış ise kırmızı yap
class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        UserDropdown(
          onUsers: (callBackUser) {
            inspect(callBackUser);
          },
        ),
        AnswerButton(
          onNumber: (number) {
            if (number % 2 == 0) return true;
            return false;
          },
        ),
        LoadingButton(
          title: 'Save',
          onClicked: () async {
            await Future.delayed(const Duration(seconds: 2));
          },
        )
      ]),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  static List<CallBackUser> dummyUser() {
    return [
      CallBackUser('sc', 1),
      CallBackUser('sc2', 2),
    ];
  }

  @override
  bool operator ==(covariant CallBackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
