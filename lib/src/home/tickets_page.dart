import 'package:app_kairov/src/widget/ticket_card.dart';
import 'package:flutter/material.dart';

class Tickets extends StatefulWidget {
  const Tickets({super.key});

  @override
  State<Tickets> createState() => _TicketsState();
}

class _TicketsState extends State<Tickets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            width: 368,
            height: 56,
            decoration: const BoxDecoration(color: Color(0xFF242529)),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Москва-Сочи',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '23 февраля, 1 пассажир',
                      style: TextStyle(
                        color: Color(0xFF9E9E9E),
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                TicketCard(
                  price: '6 990 ₽',
                  time: '03:15 — 07:10  4ч в пути / Без пересадок',
                  from: ' VKO       AER',
                ),
                SizedBox(height: 10),
                TicketCard(
                  price: '8 566 ₽',
                  time: '17:45 — 21:20  3.5ч в пути / Без пересадок',
                  from: ' DME       AER',
                ),
                SizedBox(height: 10),
                TicketCard(
                  price: '7 386 ₽',
                  time: '12:00 — 15:35  3.5ч в пути / Без пересадок',
                  from: ' DME       AER',
                ),
                SizedBox(height: 10),
                TicketCard(
                  price: '7 386 ₽',
                  time: '15:00 — 18:35  3.5ч в пути / Без пересадок',
                  from: ' DME      AER',
                ),
              ],
            ),
          ),
          Container(
            width: 223,
            height: 45,
            decoration: ShapeDecoration(
              color: const Color(0xFF2261BC),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.tune,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Фильтр',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.stacked_bar_chart_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'График цен',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
