import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_wake/flutter_screen_wake.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

// ignore: library_private_types_in_public_api
class HomeStore = _HomeStoreBase with _$HomeStore;
abstract class _HomeStoreBase with Store {

  @observable
  double titleFontSize = 20.0;

  @observable
  double textFontSize = 14.0;

  @observable
  double subTitleFontSize = 16.0;

  @observable
  double brightness = 0.0;

  @observable
  bool _toggle = false;

  @observable
  bool _menuIsOpen = false;

  @computed
  bool get toggle => _toggle;

  @computed
  bool get menuIsOpen => _menuIsOpen;

  @action
  Future<void> initPlatformBrightness() async {
    try {
      brightness = await FlutterScreenWake.brightness;
    } on PlatformException {
      brightness = 1.0;
    }
  }

  @action
  void upFontSize() {
    titleFontSize++;
    textFontSize++;
    subTitleFontSize++;
  }

  @action
  void downFontSize() {
    titleFontSize--;
    textFontSize--;
    subTitleFontSize--;
  }

  @action
  void toggleMenu({required AnimationController animationController}) {
    _menuIsOpen ? animationController.reverse() : animationController.forward();
    _menuIsOpen = !menuIsOpen;
  }

  @action
  void setBrightness({required double bright}) {
    brightness = bright;
    FlutterScreenWake.setBrightness(brightness);
    brightness < 0.4 ? _toggle = true : _toggle = false;
  }
}