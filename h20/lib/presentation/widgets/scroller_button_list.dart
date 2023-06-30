import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h20/presentation/state_managers/water_tracker.dart';

class ScrollerButtonItem {
  final String title;
  final int value;

  ScrollerButtonItem(this.title, this.value);
}

class ScrollerButtonList extends StatefulWidget {
  const ScrollerButtonList(
      {super.key,
      required this.items,
      this.scrollDirection,
      this.selectedIndex});

  final List<ScrollerButtonItem> items;
  final Axis? scrollDirection;
  final int? selectedIndex;

  @override
  State<ScrollerButtonList> createState() => _ScrollerButtonListState();
}

class _ScrollerButtonListState extends State<ScrollerButtonList> {
  late int selectItemIndex;

  @override
  void initState() {
    super.initState();
    if (widget.items.isNotEmpty) {
      selectItemIndex = widget.selectedIndex ?? 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        primary: false,
        shrinkWrap: true,
        itemCount: widget.items.length,
        scrollDirection: widget.scrollDirection ?? Axis.horizontal,
        itemBuilder: (context, index) {
          return selectItemIndex == index
              ? ElevatedButton(
                  onPressed: () {
                    // Increment water intake
                    Get.find<WaterTracker>()
                        .incrementWaterIntake(
                            widget.items.elementAt(index).value);
                  },
                  child: Text(widget.items[index].title),
                )
              : OutlinedButton(
                  onPressed: () {
                    selectItemIndex = index;
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  child: Text(widget.items[index].title),
                );
        },
        separatorBuilder: (_, __) {
          return const SizedBox(
            width: 8,
            height: 8,
          );
        },
      ),
    );
  }
}
