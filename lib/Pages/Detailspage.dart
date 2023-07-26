import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333742),
      appBar: AppBar(
          title: const Text(" PS5"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
          ],
          backgroundColor: const Color(0xFF333742),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 55, left: 25),
              child: const Text(
                "Playstation5",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Container(
              width: double.infinity,
              height: 655,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27),
                color: const Color(0xFF454d5a),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      iconwidget(),
                      ImageWidget(),
                      Rate(),
                    ],
                  ),
                  PriceText(),
                  TextWidget(),
                  ColorChoosing(),
                  AddTocart()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class iconwidget extends StatelessWidget {
  const iconwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 22, top: 22),
          child: const Icon(Icons.remove_red_eye),
        ),
        const SizedBox(
          height: 11,
        ),
        Container(
          margin: const EdgeInsets.only(left: 22),
          child: const Text("1.5 k"),
        ),
        const SizedBox(
          height: 22,
        ),
        Container(
          margin: const EdgeInsets.only(left: 22),
          child: const Icon(Icons.favorite),
        ),
        Container(
          margin: const EdgeInsets.only(left: 22),
          child: const Text("212"),
        ),
        const SizedBox(
          height: 22,
        ),
        Container(
          margin: const EdgeInsets.only(left: 22),
          child: const Icon(Icons.shopping_bag),
        ),
        Container(
          margin: const EdgeInsets.only(left: 22),
          child: const Text("120"),
        )
      ],
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 66),
          child: Image.asset(
            width: 155,
            "assets/playstation.png",
          ),
        )
      ],
    );
  }
}

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 1, left: 7),
          child: Row(
            children: [
              const Text("4.6"),
              Container(
                child: Image.asset(
                  "assets/star.png",
                  height: 22,
                  width: 11,
                ),
              )
            ],
          ),
          margin: const EdgeInsets.only(bottom: 122, left: 55),
          width: 44,
          height: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            color: const Color(0xFF333742),
          ),
        ),
      ],
    );
  }
}

class PriceText extends StatelessWidget {
  const PriceText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 77),
              child: const Text(
                "\$180.00",
                style: TextStyle(
                    decoration: TextDecoration.lineThrough, fontSize: 22),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 22, top: 6),
              child: const Text(
                "\$179.95",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
            )
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 7, left: 14),
                  margin: const EdgeInsets.only(left: 176, top: 33),
                  width: 55,
                  height: 33,
                  child: const Text(
                    "24%",
                    style: TextStyle(
                        color: Color.fromARGB(
                          255,
                          146,
                          201,
                          148,
                        ),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF333742),
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 22, top: 18),
              child: Image.asset(
                "assets/truc.png",
                color: Colors.grey,
                width: 44,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 22, top: 18),
                child: const Text(
                  "Prices  inc. VAT..plus shipping costs",
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        ),
        Row(
          children: [
            Container(
                width: 339,
                margin: const EdgeInsets.only(left: 22, top: 18),
                child: const Text(
                  "Lorem ipsum dolor sit amet. l omnis? Sed ipsa pariatur quo iure earum qui quia omnis et recusanda",
                  style: TextStyle(color: Colors.grey),
                )),
          ],
        )
      ],
    );
  }
}

class ColorChoosing extends StatelessWidget {
  const ColorChoosing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 22, left: 22),
              child: const Text(
                "Choose Color",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 20, top: 8),
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: const Color(0xFF333742),
                    borderRadius: BorderRadius.circular(10))),
            Container(
                margin: const EdgeInsets.only(left: 11, top: 8),
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10))),
            Container(
                margin: const EdgeInsets.only(left: 11, top: 8),
                height: 27,
                width: 27,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)))
          ],
        )
      ],
    );
  }
}

class AddTocart extends StatelessWidget {
  const AddTocart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 19),
      height: 99,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 33),
            height: 55,
            width: 55,
            child: Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
            decoration: BoxDecoration(
                color: Color(0xFF454d5a),
                borderRadius: BorderRadius.circular(17)),
          ),
          Container(
            margin: EdgeInsets.only(left: 11),
            height: 55,
            width: 260,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/cartbag.png",
                  color: Colors.white,
                ),
                SizedBox(
                  width: 14,
                ),
                Text(
                  "ADD TO CART",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xFF454d5a),
                borderRadius: BorderRadius.circular(17)),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xFF333742), borderRadius: BorderRadius.circular(25)),
    );
  }
}
