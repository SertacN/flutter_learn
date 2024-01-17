import 'package:flutter_learn/300/baris_resource/model/baris_model.dart';
import 'package:flutter_learn/300/baris_resource/service/baris_service.dart';
import 'package:flutter_learn/300/baris_resource/view/baris_view.dart';
import 'package:flutter_learn/cache/shared_cache_learn.dart';
import 'package:flutter_learn/product/service/project_dio.dart';

abstract class BarisViewModel extends LoadingStateful<BarisView> with ProjectDioMixin {
  late final IBarisService _barisService;
  List<Data>? barisItem;
  @override
  void initState() {
    super.initState();
    _barisService = BarisService(barisDio);
    fetch();
  }

  Future<void> fetch() async {
    changeLoading();
    barisItem = (await _barisService.fetchBaris(BarisPath.product))?.data ?? [];
    changeLoading();
  }
}
