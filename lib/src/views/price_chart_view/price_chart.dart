import 'package:flutter/material.dart';

class PriceChart extends StatefulWidget {
  const PriceChart({super.key});

  @override
  State<PriceChart> createState() => _PriceChartState();
}

class _PriceChartState extends State<PriceChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Дешевый тариф',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  _buildFeatureRow(
                      Icons.check_circle, 'Ручная кладь 1x5 кг', true),
                  _buildFeatureRow(Icons.cancel, 'Без багажа', false),
                  _buildFeatureRow(
                      Icons.check_circle, 'Обмен платный  ', true, true),
                  _buildFeatureRow(Icons.cancel, 'Без возврата  ', false, true),
                  const SizedBox(height: 10),
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 60, 59, 59),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Добавить багаж ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '+ 1 082 ₽ ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 27, 97, 195),
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Switch(
                              value: addBaggage,
                              onChanged: (value) {
                                setState(() {
                                  addBaggage = value;
                                });
                              },
                              activeColor: Colors.blue,
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: const Color.fromARGB(255, 86, 83, 83),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '      Изменить обмен или возврат',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                            Icon(
                              Icons.chevron_right_sharp,
                              color: Color.fromARGB(255, 30, 103, 163),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Москва-Сочи',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const Text(
              '04ч в пути',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Card(
              color: const Color(0xFF2A2A2A),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Якутия\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: '04ч в пути',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 109, 112, 117),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 83, 82, 82),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              'Подробнее',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 70,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 10,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 5, color: Color(0xFF9E9E9E)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 54,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    shape: OvalBorder(
                                      side: BorderSide(
                                          width: 4, color: Color(0xFF9E9E9E)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 17,
                                top: 15,
                                child: Container(
                                  width: 2,
                                  height: 43,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF9E9E9E)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '03:15',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '23 фев, ср       ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '07:10',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '23 фев, ср',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Москва',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Внуково, VKO',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Сочи',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Адлер, AER',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 74.5,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 91, 91),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              height: 100,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                      width: 38,
                      height: 5,
                      decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 116, 117, 118),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 9,
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '6 310 ₽\n',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w600),
                              ),
                              TextSpan(
                                text: 'На сайте Купибилет',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 121,
                          height: 47,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF36E36),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                            child: Text(
                              'Купить',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String text, bool isChecked,
      [bool hasInfo = false]) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: isChecked ? Colors.green : Colors.red,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(color: Colors.white)),
          if (hasInfo)
            const Icon(Icons.info_outline_rounded,
                color: Colors.grey, size: 16),
        ],
      ),
    );
  }

  bool addBaggage = false;
}
