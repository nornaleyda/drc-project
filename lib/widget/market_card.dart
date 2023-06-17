import 'package:flutter/material.dart';

class MarketCard extends StatelessWidget {
  const MarketCard({
    super.key,
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.changepercent,
  });

  final String name;
  final String symbol;
  final num price;
  final num change;
  final num changepercent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(4, 4),
              blurRadius: 10,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 10,
              spreadRadius: 1,
            )
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4, -4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                ),
                height: 68,
                width: 68,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.network(
                      'https://resources.cryptocompare.com/asset-management/2/1659946678476.png'),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    symbol,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price.toDouble().toStringAsFixed(2),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    change.toDouble() < 0
                        ? change.toDouble().toStringAsFixed(2)
                        : '+${change.toDouble().toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    changepercent.toDouble() < 0
                        ? '${changepercent.toDouble().toStringAsFixed(2)}%'
                        : '+${changepercent.toDouble().toStringAsFixed(2)}%',
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
