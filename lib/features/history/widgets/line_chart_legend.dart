import 'package:flutter/material.dart';

class LineChartLegend extends StatelessWidget {
  const LineChartLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 2.5,
              backgroundColor: Color.fromRGBO(75, 135, 185, 1),
            ),
            const SizedBox(width: 5),
            Text(
              'Wellness',
              style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 12, fontWeight: FontWeight.w100),
            ),
          ],
        ),
        Row(
          children: [
            const CircleAvatar(
              radius: 2.5,
              backgroundColor: Color.fromRGBO(192, 108, 132, 1),
            ),
            const SizedBox(width: 5),
            Text(
              'Baseline',
              style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 12, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ],
    );
  }
}
