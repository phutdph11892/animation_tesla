import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesla_app/utils/constranins.dart';

class DoorLook extends StatelessWidget {
  const DoorLook({
    Key? key,
    required this.press,
    required this.isLock,
  }) : super(key: key);

  final VoidCallback press;
  final bool isLock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: defaultDuration,
        //Still shows no animation why
        //both of them are same widget
        //flutter think are same
        //now flutter knows they are not same
        //now its look like what we want
        //but not 100%
        //we need to add jumping effects
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: isLock
            ? SvgPicture.asset(
          "assets/icons/door_lock.svg",
          key: const ValueKey("lock"),
        )
            : SvgPicture.asset(
          "assets/icons/door_unlock.svg",
          key: const ValueKey("unlock"),
        ),
      ),
    );
  }
}
