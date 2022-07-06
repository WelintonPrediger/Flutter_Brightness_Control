import 'package:ex_control_brightness/app/modules/home/_export_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '_export_component_files.dart';

class FabMenuButton extends StatefulWidget {

  final HomeStore homeStore;

  const FabMenuButton({Key? key, required this.homeStore}) : super(key: key);

  @override
  State<FabMenuButton> createState() => _FabMenuButtonState();
}

class _FabMenuButtonState extends State<FabMenuButton> with SingleTickerProviderStateMixin {

  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
    widget.homeStore.initPlatformBrightness();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      clipBehavior: Clip.none,
      delegate: FabVerticalDelegate(animation: animationController),
      children: [
        FloatingActionButton(
            child: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animationController),
            onPressed: () => widget.homeStore.toggleMenu(animationController: animationController)
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () {
            setState(() {
              widget.homeStore.downFontSize();
            });
          },
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              widget.homeStore.upFontSize();
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            children: [
              AnimatedCrossFade(
                  firstChild: const Icon(Icons.brightness_7_rounded, size: 30),
                  secondChild: const Icon(Icons.brightness_3_rounded, size: 30),
                  crossFadeState: widget.homeStore.toggle ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                  duration: const Duration(seconds: 1)
              ),
              Expanded(
                child: Observer(
                  builder: (context) => Slider(
                    value: widget.homeStore.brightness,
                    onChanged: (value) => widget.homeStore.setBrightness(bright: value)
                  )
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
