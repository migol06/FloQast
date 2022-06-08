import 'package:flutter/material.dart';
import 'package:ppc/widgets/widgets.dart';

class ScheduleDemo extends StatelessWidget {
  const ScheduleDemo({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.width * .20,
      decoration: BoxDecoration(color: Color.fromARGB(255, 139, 197, 64)),
    );
  }
}
