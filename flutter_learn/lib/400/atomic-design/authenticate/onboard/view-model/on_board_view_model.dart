import 'package:flutter_learn/400/atomic-design/authenticate/onboard/model/on_board_model.dart';
import 'package:mobx/mobx.dart';
part 'on_board_view_model.g.dart';

// ignore: library_private_types_in_public_api
class OnBoardViewModel = _OnBoardViewModelBase with _$OnBoardViewModel;

abstract class _OnBoardViewModelBase with Store {
  void init() {
    onBoardModel = List.generate(5, (index) => OnBoardModel(index.toString()));
  }

  late final List<OnBoardModel> onBoardModel;

  @observable
  int currentPageIndex = 0;

  @action
  void onPageChange(int value) {
    currentPageIndex = value;
  }
}
