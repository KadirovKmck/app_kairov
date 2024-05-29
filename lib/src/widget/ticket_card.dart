import 'package:app_kairov/src/home/price_chart.dart';
import 'package:flutter/material.dart';

class TicketCard extends StatelessWidget {
  final String price;
  final String time;
  final String from;

  const TicketCard({
    super.key,
    required this.price,
    required this.time,
    required this.from,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PriceChart()),
        );
      },
      child: Card(
        color: const Color(0xFF1D1E20),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                price,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 224, 71, 61),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        time,
                        style: textStyle,
                      ),
                      Text(
                        from,
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
