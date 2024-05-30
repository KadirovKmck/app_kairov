import 'package:app_kairov/src/core/ui/theme/app_decoration.dart';
import 'package:app_kairov/src/core/ui/theme/app_text_style.dart';
import 'package:app_kairov/src/views/search_view/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _imagePaths = [
    'assets/images/man1.png',
    'assets/images/man2.png',
    'assets/images/man3.png',
  ];
  final List<String> _text1 = [
    'Die Antwoord',
    'Socrat& Lera',
    'Лампабикт',
  ];
  final List<String> _text2 = [
    'Будапешт',
    'Санкт- Петербург',
    'Москва',
  ];
  final List<String> _text3 = [
    'от 22 264 ₽ ',
    'от 2 390 ₽',
    'от 2 390 ₽',
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text('Поиск дешевых \nавиабилетов',
                  textAlign: TextAlign.center, style: AppTextStyle.wite24w600),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  showDragHandle: 1.isFinite,
                  backgroundColor: const Color(0xFF242529),
                  context: context,
                  builder: (BuildContext context) {
                    return const SizedBox(
                      height: double.infinity,
                      child: Center(
                        child: Search(),
                      ),
                    );
                  },
                );
              },
              child: Container(
                width: 378,
                height: 142,
                decoration: AppDecoration.blacR16,
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 16,
                      child: Container(
                        width: 326,
                        height: 110,
                        decoration: AppDecoration.blacR16Box4,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 8,
                              top: 43,
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: SvgPicture.asset(
                                  'assets/icons/search.svg',
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 49,
                              top: 20,
                              child:
                                  Text('Минск', style: AppTextStyle.wite16w600),
                            ),
                            Center(
                              child: Container(
                                  height: 1, width: 235, color: Colors.white70),
                            ),
                            const Positioned(
                              left: 45,
                              top: 65,
                              child: Text('Куда - Турция',
                                  style: AppTextStyle.wite7016w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140, top: 30),
              child:
                  Text('Музыкально отлететь', style: AppTextStyle.wite22w600),
            ),
            SizedBox(
              height: 290,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _imagePaths.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(19.0),
                    child: SizedBox(
                      width: 170,
                      height: 213,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 152,
                            height: 153,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage(_imagePaths[index]),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(_text1[index], style: AppTextStyle.wite18w600),
                          const SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_text2[index],
                                  style: AppTextStyle.wite16w600),
                              const SizedBox(height: 4),
                              Text(_text3[index],
                                  style: AppTextStyle.wite5014w600),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 370,
              height: 42,
              decoration: AppDecoration.blacR16,
              child: const Center(
                child: Text(
                  'Показать все места',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, right: 190),
              child: Text('Ваш первый раз', style: AppTextStyle.wite22w600),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
