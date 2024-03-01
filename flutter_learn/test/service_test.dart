import 'package:flutter_learn/300/reqres_resource/model/resource_model.dart';
import 'package:flutter_learn/300/reqres_resource/service/reqres_service.dart';
import 'package:flutter_learn/product/service/project_network_manager.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final IReqresService reqresService;
  List<Data>? model;
  setUp(() {
    reqresService = ReqresService(ProjectNetworkManager.instance.reqresDio);
  });
  test('Reqres Fetch Test', () async {
    model = await _fetch(reqresService);
    expect(model, isNotEmpty);
  });
}

Future<List<Data>?> _fetch(IReqresService reqresService) async {
  return (await reqresService.fetchResource())?.data ?? [];
}
