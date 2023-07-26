import 'package:flutter/material.dart';

class xboxone_products extends StatelessWidget {
  const xboxone_products({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.0,
            mainAxisSpacing: 12.0,
            mainAxisExtent: 300,
          ),
          itemCount: 2,
          itemBuilder: (_, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  22,
                ),
                color: const Color(0xFF454d5a),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 1, left: 7),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text("4.6"),
                                      Container(
                                        child: Image.asset(
                                          "assets/star.png",
                                          height: 22,
                                          width: 11,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.only(top: 10, left: 11),
                              width: 44,
                              height: 28,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: Color(0xFF333742),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 106),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              child:
                                  Image.asset("assets/xboxone.png", width: 135),
                            ),
                            Container(
                              child: Image.asset(
                                "assets/cart1.png",
                                color: Colors.white,
                              ),
                              margin: EdgeInsets.only(top: 120, left: 11),
                              width: 44,
                              height: 44,
                              decoration: BoxDecoration(
                                  color: Color(0xFF333742),
                                  borderRadius: BorderRadius.circular(10)),
                            )
                          ],
                        )
                      ],
                    ),
                    width: 200,
                    height: 211,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 113, 119, 129),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(22),
                            topRight: Radius.circular(22))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11, left: 12),
                    child: Text(
                      "Playstation 5",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11, left: 12),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "\$890.00",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          child: Text(
                            "\$900",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
