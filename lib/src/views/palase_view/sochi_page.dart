import 'package:app_kairov/src/components/ticket_item_widget/ticket_Item.dart';
import 'package:flutter/material.dart';
import 'package:app_kairov/src/views/filter_view/filter.dart';
import '../ticket_view/tickets_page.dart';

class SochiPage extends StatefulWidget {
  const SochiPage({super.key});

  @override
  _SochiPageState createState() => _SochiPageState();
}

class _SochiPageState extends State<SochiPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 379,
                height: 96,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2F3035),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 40,
                      top: 58,
                      child: Text(
                        'Сочи',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 1,
                        width: 300,
                        color: const Color.fromARGB(255, 74, 73, 73),
                      ),
                    ),
                    const Positioned(
                      left: 310,
                      top: 59,
                      child: Icon(Icons.close, color: Colors.white),
                    ),
                    const Positioned(
                      left: 310,
                      top: 14,
                      child: Icon(
                        Icons.swap_vert,
                        color: Colors.white,
                      ),
                    ),
                    const Positioned(
                      left: 40,
                      top: 14,
                      child: Text(
                        'Минск',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: _navigateToFilterPage,
              child: SizedBox(
                height: 45,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: texts.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 110,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 72, 71, 71),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            texts[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 304,
              width: 370,
              decoration: ShapeDecoration(
                color: const Color(0xFF1D1E20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const TicketItem(
                      color: Colors.red,
                      airline: 'Уральские авиалинии',
                      times: [
                        '07:00',
                        '09:10',
                        '10:00',
                        '11:00',
                        '12:00',
                        '13:00'
                      ],
                      price: '2 390 ₽',
                    ),
                    const TicketItem(
                      color: Colors.blue,
                      airline: 'Победа',
                      times: ['08:05', '09:55', '16:35', '18:55'],
                      price: '2 390 ₽',
                    ),
                    const TicketItem(
                      color: Colors.white,
                      airline: 'NordStar',
                      times: ['13:10'],
                      price: '2 390 ₽',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Показать все',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: _navigateToTicketsPage,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                ),
                height: 60,
                width: 370,
                child: const Center(
                  child: Text(
                    'Посмотреть все билеты',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                color: const Color(0xFF2F3035),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.notifications, color: Colors.blue),
                        SizedBox(width: 10),
                        Text(
                          'Подписка на цену',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                      activeColor: Colors.blue,
                      inactiveThumbColor: Colors.grey,
                      inactiveTrackColor: Colors.grey[700],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<String> texts = [
    '+ обратно',
    '24 фев, сб',
    '1, эконом',
    'фильтры',
  ];

  bool isSwitched = false;

  void _navigateToFilterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Filter()),
    );
  }

  void _navigateToTicketsPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Tickets()),
    );
  }
}
