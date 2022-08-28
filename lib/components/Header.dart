import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 44),
          width: screenSize.width,
          height: 240,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),
          ),
          child: Container(
            padding:
                const EdgeInsets.only(top: 19, bottom: 19, right: 25, left: 25),
            child: SizedBox(
              width: screenSize.width,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "晚上好, ",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 16),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Bobby",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )
                      ]),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Icon(
                        Icons.doorbell_sharp,
                        color: Colors.white,
                        size: 20.0,
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(19)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
