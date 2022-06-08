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
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 200),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(child: getLogo(context)),
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
                ),
              ],
            ),
          ),
        ));
  }

  Widget getLogo(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
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
          children: [
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
              ),
            ),
            const Flexible(
              child: Text('The',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30)),
            ),
          ],
        ),
      ],
    );
  }
}
