import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_learn/300/baris_resource/model/baris_model.dart';

enum BarisPath { product }

abstract class IBarisService {
  IBarisService(this.dio);
  final Dio dio;

  Future<BarisModel?> fetchBaris(BarisPath path);
}

class BarisService extends IBarisService {
  BarisService(super.dio);

  @override
  Future<BarisModel?> fetchBaris(BarisPath path) async {
    final response = await dio.get('${path.name}/getAll');
    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is Map<String, dynamic>) {
        return BarisModel.fromJson(jsonBody);
      }
    }
    return null;
  }
}
