import 'package:flutter/material.dart';
import 'package:rp_project/widgets/bagde.dart';

class ClickableCardWidget extends StatelessWidget {
  final String title;
  String? type = ""; //Se for 1, é de achivements
  final Widget? sufixWidget;
  final Widget? prefixWidget;
  final String? description;
  final List<String>? achivementInfo;

  ClickableCardWidget(
      {required this.title,
      this.type,
      this.sufixWidget,
      this.prefixWidget,
      this.description,
      this.achivementInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          if (type == "Achivement") {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Bagde(
                    title: achivementInfo![0],
                    descriptions: achivementInfo![1],
                    text: "Fechar",
                  );
                });
          }
        },
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (this.prefixWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5),
                    child: this.prefixWidget,
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        this.title,
                        style: TextStyle(fontSize: 18),
                      ),
                      if (this.description != null)
                        Text((this.description) as String)
                    ],
                  ),
                ),
                if (this.sufixWidget != null)
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: this.sufixWidget,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
