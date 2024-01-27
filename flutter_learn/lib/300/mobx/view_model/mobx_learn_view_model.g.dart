// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_learn_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxLearnViewModel on _MobxLearnViewModelBase, Store {
  late final _$regresItemAtom =
      Atom(name: '_MobxLearnViewModelBase.regresItem', context: context);

  @override
  List<Data>? get regresItem {
    _$regresItemAtom.reportRead();
    return super.regresItem;
  }

  @override
  set regresItem(List<Data>? value) {
    _$regresItemAtom.reportWrite(value, super.regresItem, () {
      super.regresItem = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_MobxLearnViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fetchAsyncAction =
      AsyncAction('_MobxLearnViewModelBase.fetch', context: context);

  @override
  Future<void> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  late final _$_MobxLearnViewModelBaseActionController =
      ActionController(name: '_MobxLearnViewModelBase', context: context);

  @override
  void init() {
    final _$actionInfo = _$_MobxLearnViewModelBaseActionController.startAction(
        name: '_MobxLearnViewModelBase.init');
    try {
      return super.init();
    } finally {
      _$_MobxLearnViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeLoading() {
    final _$actionInfo = _$_MobxLearnViewModelBaseActionController.startAction(
        name: '_MobxLearnViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_MobxLearnViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
regresItem: ${regresItem},
isLoading: ${isLoading}
    ''';
  }
}
