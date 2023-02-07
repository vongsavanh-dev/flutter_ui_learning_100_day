import 'package:app_day_1/util/dayOne/card_Item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PageDayOne extends StatelessWidget {
  const PageDayOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hi Ehi,",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(Icons.notifications),
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                "8,234.00",
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w900,
                    color: Colors.black87),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(14),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "GHS",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black87),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.keyboard_arrow_down_rounded),
                ],
              ),
              const SizedBox(height: 28),
              const Text(
                "Here are some things you can do",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              //card Item
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  children: const [
                    CardItem(
                      r: 140,
                      g: 122,
                      b: 230,
                      a: 0.15,
                      IconName: "📈",
                      titleName: "Pay someone",
                      description: "To wallet, bank or mobile number",
                    ),
                    CardItem(
                      r: 7,
                      g: 153,
                      b: 146,
                      a: 0.15,
                      IconName: "👻",
                      titleName: "Request Money",
                      description: "To wallet, bank or mobile number",
                    ),
                    CardItem(
                      r: 250,
                      g: 152,
                      b: 58,
                      a: 0.2,
                      IconName: "💩",
                      titleName: "Buy Airtime",
                      description: "To wallet, bank or mobile number",
                    ),
                    CardItem(
                      r: 60,
                      g: 99,
                      b: 130,
                      a: 0.2,
                      IconName: "🐶",
                      titleName: "Pay Bill",
                      description: "To wallet, bank or mobile number",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
