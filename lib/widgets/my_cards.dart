import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  final double balance;
  final int creditNo;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCards(
      {Key? key,
      required this.balance,
      required this.creditNo,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              const Text(
                "Balance",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                "\$" + balance.toString(),
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    creditNo.toString(),
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  Text(
                    expiryMonth.toString() +"/"+ expiryYear.toString(),
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
