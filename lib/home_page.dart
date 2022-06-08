import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
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
        ],
      ),
    );
  }
}
