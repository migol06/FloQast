import 'package:flutter/material.dart';
import 'package:ppc/widgets/learn_how.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('ppc-floqast-banner.jpg'),
                    fit: BoxFit.fill)),
          ),
          Positioned(top: height * .10, child: LogoContainer()),
          Positioned(
              bottom: height * .10,
              left: width * .15,
              child: Row(
                children: [
                  ScheduleDemo(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Schedule A Demo'),
                          Text('Learn More About FloQast'),
                        ]),
                  ),
                  LearnHow()
                ],
              ))
        ],
      ),
    );
  }
}
