import 'package:flutter/material.dart';
import 'package:udemyclone/pages/home/widgets/grid_item/grid_item.dart';

class GridSectionWidget extends StatelessWidget {
  const GridSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1
          ),
          padding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 16,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return GridItemWidget();
          },
        );
      },
    );
  }
}
