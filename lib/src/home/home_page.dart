import 'package:app_kairov/src/home/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Поиск дешевых \nавиабилетов',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFD9D9D9),
                  fontSize: 24,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
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
                decoration: ShapeDecoration(
                  color: const Color(0xFF2F3035),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 16,
                      child: Container(
                        width: 326,
                        height: 110,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF3E3F43),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            )
                          ],
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 8,
                              top: 43,
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: FlutterLogo(),
                              ),
                            ),
                            const Positioned(
                              left: 49,
                              top: 20,
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
                            Center(
                              child: Container(
                                height: 1,
                                width: 235,
                                color: Colors.white70,
                              ),
                            ),
                            const Positioned(
                              left: 45,
                              top: 65,
                              child: Text(
                                'Куда - Турция',
                                style: TextStyle(
                                  color: Color(0xFF9E9E9E),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
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
              child: Text(
                'Музыкально отлететь',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 290,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
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
                              image: const DecorationImage(
                                image: AssetImage("assets/images/girl.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Die Antwoord',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Будапешт',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'от 22 264 ₽ ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
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
              decoration: ShapeDecoration(
                color: const Color(0xFF2F3035),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
              ),
              child: const Center(
                child: Text(
                  'Показать все места',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, right: 190),
              child: Text(
                'Ваш первый раз',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
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
