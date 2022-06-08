import 'package:flutter/material.dart';
import 'package:ppc/widgets/widgets.dart';

class LearnHow extends StatelessWidget {
  const LearnHow({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .20,
      width: MediaQuery.of(context).size.width * .50,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Learn How FloQast Can ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Improve Your Month-End',
                style: TextStyle(
                  color: Color.fromARGB(255, 139, 197, 64),
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FTextField(hint: 'First Name'),
              const SizedBox(
                width: 10,
              ),
              const FTextField(hint: 'Email'),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  primary: const Color.fromARGB(255, 139, 197, 64),
                ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                child: const Text('SCHEDULE NOW'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class FTextField extends StatelessWidget {
  const FTextField({
    Key? key,
    required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: TextField(
        decoration:
            InputDecoration(hintText: hint, border: const OutlineInputBorder()),
      ),
    );
  }
}
