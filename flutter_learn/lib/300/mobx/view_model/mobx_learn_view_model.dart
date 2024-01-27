import 'package:flutter_learn/300/reqres_resource/model/resource_model.dart';
import 'package:flutter_learn/300/reqres_resource/service/reqres_service.dart';
import 'package:flutter_learn/product/service/project_dio.dart';
import 'package:mobx/mobx.dart';
part 'mobx_learn_view_model.g.dart';

class MobxLearnViewModel = _MobxLearnViewModelBase with _$MobxLearnViewModel;

abstract class _MobxLearnViewModelBase with Store, ProjectDioMixin {
  @observable
  List<Data>? regresItem;
  late final IReqresService _reqresService;

  @action
  void init() {
    _reqresService = ReqresService(reqresDio);
  }

  @action
  Future<void> fetch() async {
    changeLoading();
    regresItem = (await _reqresService.fetchResource())?.data ?? [];
    changeLoading();
  }

  @observable
  bool isLoading = false;

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }
}
