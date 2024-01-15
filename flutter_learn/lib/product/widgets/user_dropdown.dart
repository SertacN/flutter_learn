import 'package:flutter/material.dart';
import 'package:flutter_learn/300/call_back_learn.dart';

class UserDropdown extends StatefulWidget {
  const UserDropdown({super.key, required this.onUsers});
  final void Function(CallBackUser callBackUser) onUsers;
  @override
  State<UserDropdown> createState() => _UserDropdownState();
}

class _UserDropdownState extends State<UserDropdown> {
  CallBackUser? _users;

  void _handleChange(CallBackUser? callBackUser) {
    setState(() {
      _users = callBackUser;
    });
    if (_users != null) {
      widget.onUsers.call(_users!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser?>(
      value: _users,
      items: CallBackUser.dummyUser().map((e) {
        return DropdownMenuItem(
          value: e,
          child: Text(e.name),
        );
      }).toList(),
      onChanged: _handleChange,
    );
  }
}
