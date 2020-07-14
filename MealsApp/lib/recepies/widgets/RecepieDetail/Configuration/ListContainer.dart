import 'package:flutter/material.dart';
import '../../../../models/Meals.dart';

class ListContainer extends StatelessWidget {
  final Widget Function({@required String text, @required int index})
      childHandler;
  final List<String> list;
  final double height;
  final double width;

  ListContainer({
    @required this.childHandler,
    @required this.list,
    @required this.height,
    @required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: (ctx, index) => childHandler(
          text: list[index],
          index: index,
        ),
        itemCount: list.length,
      ),
      height: height,
      width: width,
    );
  }
}
