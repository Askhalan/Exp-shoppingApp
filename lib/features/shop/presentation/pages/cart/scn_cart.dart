// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fake_store/core/common/widgets/gap.dart';
import 'package:fake_store/core/constants/colors.dart';
import 'package:fake_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class ScnCart extends StatelessWidget {
  const ScnCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(JmSize.defaultSpace),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.all(JmSize.defaultSpace),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  color: JColor.secondary,
                  borderRadius: BorderRadius.circular(JSize.borderRadMd)),
              height: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                //--------- Image COntainer
                Row(
                  children: [
                    AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          decoration: BoxDecoration(
                              color: JColor.accent,
                              borderRadius:
                                  BorderRadius.circular(JSize.borderRadMd)),
                        )),
                         //--------- Details column
                JGap(w: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Blue T-Shirt",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                         Text("Blue T-Shirt",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 12)),
                      ],
                    ),
                   

                    //----------- Counter Row

                    Row(
                      children: [
                        CounterButton(
                            icon: Icons.add,
                            onPressed: () {},
                            color: Color.fromARGB(255, 238, 176, 171)),
                            JGap(w: 10,),
                        Text("2", style: Theme.of(context).textTheme.bodyLarge),
                        JGap(w: 10,),
                        CounterButton(
                            icon: Icons.remove,
                            onPressed: () {},
                            color: const Color.fromARGB(255, 224, 108, 100)),
                      ],
                    )
                  ],
                ),
                  ],
                ),

               

                //--------- Price column
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("\u{20B9} 299.0", style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 15),)
                  ],
                ),
              ]),
            );
          },
        ),
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
    this.icon,
    this.onPressed,
    this.color,
  });
  final IconData? icon;
  final void Function()? onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        child: Center(
            child: Icon(
          icon,
          size: 17,
        )),
      ),
    );
  }
}
