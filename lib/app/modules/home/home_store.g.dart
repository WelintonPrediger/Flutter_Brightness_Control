// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  Computed<bool>? _$toggleComputed;

  @override
  bool get toggle => (_$toggleComputed ??=
          Computed<bool>(() => super.toggle, name: '_HomeStoreBase.toggle'))
      .value;
  Computed<bool>? _$menuIsOpenComputed;

  @override
  bool get menuIsOpen =>
      (_$menuIsOpenComputed ??= Computed<bool>(() => super.menuIsOpen,
              name: '_HomeStoreBase.menuIsOpen'))
          .value;

  late final _$titleFontSizeAtom =
      Atom(name: '_HomeStoreBase.titleFontSize', context: context);

  @override
  double get titleFontSize {
    _$titleFontSizeAtom.reportRead();
    return super.titleFontSize;
  }

  @override
  set titleFontSize(double value) {
    _$titleFontSizeAtom.reportWrite(value, super.titleFontSize, () {
      super.titleFontSize = value;
    });
  }

  late final _$textFontSizeAtom =
      Atom(name: '_HomeStoreBase.textFontSize', context: context);

  @override
  double get textFontSize {
    _$textFontSizeAtom.reportRead();
    return super.textFontSize;
  }

  @override
  set textFontSize(double value) {
    _$textFontSizeAtom.reportWrite(value, super.textFontSize, () {
      super.textFontSize = value;
    });
  }

  late final _$subTitleFontSizeAtom =
      Atom(name: '_HomeStoreBase.subTitleFontSize', context: context);

  @override
  double get subTitleFontSize {
    _$subTitleFontSizeAtom.reportRead();
    return super.subTitleFontSize;
  }

  @override
  set subTitleFontSize(double value) {
    _$subTitleFontSizeAtom.reportWrite(value, super.subTitleFontSize, () {
      super.subTitleFontSize = value;
    });
  }

  late final _$brightnessAtom =
      Atom(name: '_HomeStoreBase.brightness', context: context);

  @override
  double get brightness {
    _$brightnessAtom.reportRead();
    return super.brightness;
  }

  @override
  set brightness(double value) {
    _$brightnessAtom.reportWrite(value, super.brightness, () {
      super.brightness = value;
    });
  }

  late final _$_toggleAtom =
      Atom(name: '_HomeStoreBase._toggle', context: context);

  @override
  bool get _toggle {
    _$_toggleAtom.reportRead();
    return super._toggle;
  }

  @override
  set _toggle(bool value) {
    _$_toggleAtom.reportWrite(value, super._toggle, () {
      super._toggle = value;
    });
  }

  late final _$_menuIsOpenAtom =
      Atom(name: '_HomeStoreBase._menuIsOpen', context: context);

  @override
  bool get _menuIsOpen {
    _$_menuIsOpenAtom.reportRead();
    return super._menuIsOpen;
  }

  @override
  set _menuIsOpen(bool value) {
    _$_menuIsOpenAtom.reportWrite(value, super._menuIsOpen, () {
      super._menuIsOpen = value;
    });
  }

  late final _$initPlatformBrightnessAsyncAction =
      AsyncAction('_HomeStoreBase.initPlatformBrightness', context: context);

  @override
  Future<void> initPlatformBrightness() {
    return _$initPlatformBrightnessAsyncAction
        .run(() => super.initPlatformBrightness());
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void upFontSize() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.upFontSize');
    try {
      return super.upFontSize();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void downFontSize() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.downFontSize');
    try {
      return super.downFontSize();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleMenu({required AnimationController animationController}) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.toggleMenu');
    try {
      return super.toggleMenu(animationController: animationController);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBrightness({required double bright}) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setBrightness');
    try {
      return super.setBrightness(bright: bright);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
titleFontSize: ${titleFontSize},
textFontSize: ${textFontSize},
subTitleFontSize: ${subTitleFontSize},
brightness: ${brightness},
toggle: ${toggle},
menuIsOpen: ${menuIsOpen}
    ''';
  }
}
