

import 'package:fake_store/core/common/widgets/containers/heading_container.dart';
import 'package:fake_store/core/constants/sizes.dart';
import 'package:fake_store/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class JAppbar extends StatelessWidget implements PreferredSizeWidget {
  JAppbar(
      {super.key,
      this.centerTitle = false,
      this.title,
      this.actions,
      this.showBackArrow = false,
      this.leadingIcon,
      this.leadingOnPressed,  this.horizontalpadding = JmSize.md, 
      this.heightPercentage=1});

final int heightPercentage;
  final bool centerTitle;
  final bool showBackArrow;
  final Widget? title;
  final IconData? leadingIcon;
  final VoidCallback? leadingOnPressed;
  List<Widget>? actions;
  final double horizontalpadding;

  @override
  Widget build(BuildContext context) {
    return JPrimaryHeaderContainer(
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
        leading: showBackArrow
            ? IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios_new))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed, icon: Icon(leadingIcon))
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(JDeviceUtil.getAppBarHeight()*heightPercentage);
}
