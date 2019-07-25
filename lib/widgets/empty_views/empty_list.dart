import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'No transactions added yet!',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 200,
          child: new SvgPicture.asset(
            'assets/images/box.svg',
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
