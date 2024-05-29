import 'package:app_kairov/src/components/destination_card_widget/destination_card.dart';
import 'package:app_kairov/src/components/route_widget/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app_kairov/src/views/palase_view/sochi_page.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF242529),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 110,
            child: Center(
              child: Container(
                width: 385,
                height: 110,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFF2F3035),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 27,
                      top: 65,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              'assets/icons/search.svg',
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Куда - Турция',
                            style: TextStyle(
                              color: Color(0xFF9E9E9E),
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 1,
                        color: const Color.fromARGB(255, 80, 82, 93),
                        width: 325,
                      ),
                    ),
                    Positioned(
                      left: 329,
                      top: 60,
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 27,
                      top: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              'assets/icons/plain.svg',
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Минск',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              RouteWidget(
                imagePath: 'icon1',
                title: 'Сложный маршрут',
                color: Colors.blue,
              ),
              RouteWidget(
                imagePath: 'icon2',
                title: 'Куда угодно',
                color: Color(0xFF2261BC),
              ),
              RouteWidget(
                  imagePath: 'icon3',
                  title: 'Выходны дни',
                  color: Color.fromARGB(255, 8, 62, 156)),
              RouteWidget(
                imagePath: 'icon4',
                title: 'Горячие билеты',
                color: Color(0xFFFF5D5D),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Container(
              height: 260,
              padding: const EdgeInsets.all(16),
              decoration: ShapeDecoration(
                color: const Color(0xFF2F3035),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const DestinationTile(
                    imagePath: 'assets/images/istanbul.png',
                    title: 'Стамбул',
                    subtitle: 'Популярное направление',
                  ),
                  DestinationTile(
                    imagePath: 'assets/images/sochi.png',
                    title: 'Сочи',
                    subtitle: 'Популярное направление',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SochiPage(),
                        ),
                      );
                    },
                  ),
                  const DestinationTile(
                    imagePath: 'assets/images/phuket.png',
                    title: 'Пхукет',
                    subtitle: 'Популярное направление',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
