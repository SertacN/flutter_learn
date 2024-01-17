import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_learn/300/reqres_resource/model/resource_model.dart';

enum _ReqresPath { resource }

abstract class IReqresService {
  IReqresService(this.dio);
  final Dio dio;
  Future<ResourceModel?> fetchResource();
}

class ReqresService extends IReqresService {
  ReqresService(super.dio);

  @override
  Future<ResourceModel?> fetchResource() async {
    final response = await dio.get(_ReqresPath.resource.name);
    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return ResourceModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
