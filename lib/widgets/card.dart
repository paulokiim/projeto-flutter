import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;

  CardWidget({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: Text(this.title)),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Icon(this.icon),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
