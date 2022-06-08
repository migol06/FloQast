import 'package:flutter/material.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * .55,
      height: MediaQuery.of(context).size.height * .30,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.white.withOpacity(.3)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: getLogo()),
            const Flexible(
              child: Text(
                'Fastest, Most Accurate',
                style: TextStyle(
                    color: Color.fromARGB(255, 139, 197, 64),
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
            const Flexible(
              child: Text(
                'Way to Close Your Books!',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row getLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage(
            'flogo_final.png',
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            Text('The',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30)),
          ],
        ),
      ],
    );
  }
}
