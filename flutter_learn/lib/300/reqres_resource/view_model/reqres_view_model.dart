import 'package:flutter_learn/300/reqres_resource/model/resource_model.dart';
import 'package:flutter_learn/300/reqres_resource/service/reqres_service.dart';
import 'package:flutter_learn/300/reqres_resource/view/reqres_view.dart';
import 'package:flutter_learn/cache/shared_cache_learn.dart';
import 'package:flutter_learn/product/service/project_dio.dart';
// import 'package:flutter_learn/product/service/project_network_manager.dart';

abstract class ReqresViewModel extends LoadingStateful<ReqresView> with ProjectDioMixin {
  late final IReqresService _reqresService;
  List<Data>? resource;

  @override
  void initState() {
    super.initState();
    _reqresService = ReqresService(reqresDio);
    // _reqresService = ReqresService(ProjectNetworkManager.instance.service);
    fetch();
  }

  Future<void> fetch() async {
    changeLoading();
    resource = (await _reqresService.fetchResource())?.data ?? [];
    changeLoading();
  }
}
