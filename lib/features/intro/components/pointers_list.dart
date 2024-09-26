import 'package:flutter/material.dart';
import 'package:tutorial/themes/colors.dart';

class PointersList extends StatelessWidget {
  final int selectedIndex;
  final int pointerLength;
  final Function(int)? onTap;

  const PointersList({this.selectedIndex = 0, this.pointerLength = 04, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 04,
      child: ListView.builder(
        shrinkWrap: true,
        clipBehavior: Clip.antiAlias,
        itemCount: pointerLength,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => _pointerItemCard(index),
      ),
    );
  }

  Widget _pointerItemCard(int index) {
    var selected = selectedIndex == index;
    return InkWell(
      onTap: onTap == null ? null : () => onTap!(index),
      child: Container(
        width: selected ? 40 : 24,
        margin: const EdgeInsets.symmetric(horizontal: 04),
        decoration: BoxDecoration(color: primary.withOpacity(selected ? 1 : 0.4), borderRadius: BorderRadius.circular(2)),
      ),
    );
  }
}
