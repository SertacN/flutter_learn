import 'package:flutter/material.dart';
import 'package:flutter_learn/300/reqres_resource/model/resource_model.dart';
import 'package:flutter_learn/300/reqres_resource/service/reqres_service.dart';

class ReqresProvider extends ChangeNotifier {
  final IReqresService _reqresService;
  List<Data>? resource;
  bool isLoading = false;

  ReqresProvider(this._reqresService) {
    fetch();
  }

  Future<void> fetch() async {
    _changeLoading();
    resource = (await _reqresService.fetchResource())?.data ?? [];
    _changeLoading();
  }

  void _changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
