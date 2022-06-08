import 'package:flutter/material.dart';

class ScheduleDemo extends StatelessWidget {
  const ScheduleDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.width * .20,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 139, 197, 64)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Flexible(
            child: Text(
              'SCHEDULE A DEMO',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25),
            ),
          ),
          Flexible(
            child: Text(
              'Learn More About FloQast',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
