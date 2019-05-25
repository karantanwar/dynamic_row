library dynamic_row;

import 'package:flutter/material.dart';

class DyRow extends StatelessWidget {
  final List<Widget> children;
  final double maxWidth;
  final double maxWidthForMedium;
  final double maxWidthForSmall;
  final double maxWidthForLarge;
  final int breakForMedium;
  final int breakForLarge;

  final int breakForSmall;
  final CrossAxisAlignment crossAxisAlignmentRow;
  final CrossAxisAlignment crossAxisAlignmentColumn;
  final MainAxisAlignment mainAxisAlignmentRow;
  final MainAxisAlignment mainAxisAlignmentColumn;

  DyRow(
      {this.breakForSmall = 3,
      this.breakForMedium = 4,
      this.breakForLarge = 0,
      this.crossAxisAlignmentRow = CrossAxisAlignment.center,
      this.crossAxisAlignmentColumn = CrossAxisAlignment.center,
      this.mainAxisAlignmentColumn = MainAxisAlignment.start,
      this.mainAxisAlignmentRow = MainAxisAlignment.start,
      this.children,
      this.maxWidth,
      this.maxWidthForLarge,
      this.maxWidthForMedium,
      this.maxWidthForSmall});

  Widget getDyRow(int widthLimit) {
    List<Widget> columnChildren = [];
    int columnSize = (children.length / widthLimit).ceil();
    for (int i = 0; i < columnSize; i++) {
      List<Widget> rowChildren = [];
      if (i == columnSize - 1) {
        rowChildren = children.sublist(i * widthLimit, children.length - 1);
      } else {
        rowChildren = children.sublist(i * widthLimit, ((i + 1) * widthLimit) - 1);
      }

      columnChildren.add(Row(
        crossAxisAlignment: crossAxisAlignmentRow,
        mainAxisAlignment: mainAxisAlignmentRow,
        children: rowChildren,
      ));
    }

    return Column(
      crossAxisAlignment: crossAxisAlignmentColumn,
      mainAxisAlignment: mainAxisAlignmentColumn,
      children: columnChildren,
    );
  }

  Widget getRowForMedium() {
    return Row(
      crossAxisAlignment: crossAxisAlignmentRow,
      mainAxisAlignment: mainAxisAlignmentRow,
      children: children,
    );
  }

  Widget getRowForLarge() {
    return Row(
      crossAxisAlignment: crossAxisAlignmentRow,
      mainAxisAlignment: mainAxisAlignmentRow,
      children: children,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (maxWidth <= maxWidthForSmall) {
      return getDyRow(breakForSmall);
    } else if (maxWidth > maxWidthForSmall && maxWidth <= maxWidthForMedium) {
      return getDyRow(breakForMedium);
    }

    return getDyRow(maxWidthForLarge == 0 ? children.length : maxWidthForLarge);
  }
}
