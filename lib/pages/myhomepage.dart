import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/widgets/my_cards.dart';
import 'package:wallet/widgets/options_icons.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Cards",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            color: Colors.grey,
                          )))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCards(
                      balance: 52000,
                      creditNo: 12314545122,
                      expiryMonth: 12,
                      expiryYear: 25,
                      color: Colors.blue.shade300,
                    ),
                    MyCards(
                      balance: 10000,
                      color: Colors.deepPurple.shade300,
                      creditNo: 123654789,
                      expiryMonth: 06,
                      expiryYear: 26,
                    ),
                    MyCards(
                        balance: 250000,
                        creditNo: 9874563210,
                        expiryMonth: 05,
                        expiryYear: 27,
                        color: Colors.orange.shade300)
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                    dotColor: Colors.grey.shade300,
                    activeDotColor: Colors.grey),
              ),SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionsIcon(Myicon: Icons.send, Mytext: "Send"),
                    OptionsIcon(Myicon: Icons.payment, Mytext: "Pay"),
                    OptionsIcon(Myicon: Icons.list, Mytext: "Transaction")
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
