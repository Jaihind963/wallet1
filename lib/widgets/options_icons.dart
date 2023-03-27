import 'package:flutter/material.dart';

class OptionsIcon extends StatelessWidget {
  final Myicon;
  final String Mytext;
  const OptionsIcon({Key? key, required this.Myicon, required this.Mytext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            icon: Icon(Myicon),
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(Mytext)
      ],
    );
  }
}

class RowOptions extends StatelessWidget {
  const RowOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10)),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.auto_graph_outlined),
          ),
        ),
      ],
    );
  }
}
