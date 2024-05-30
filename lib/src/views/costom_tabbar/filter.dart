import 'package:app_kairov/src/core/ui/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CostomTabbar extends StatefulWidget {
  const CostomTabbar({super.key});

  @override
  State<CostomTabbar> createState() => _CostomTabbarState();
}

class _CostomTabbarState extends State<CostomTabbar> {
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
            Center(
              child: Container(
                color: const Color.fromARGB(255, 156, 153, 153)
                    .withOpacity(0.30000001192092896),
                width: 380,
                height: 40,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                    const Text('Фильтры', style: AppTextStyle.wite18w600),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 290, top: 25),
              child: Text('  Пересадки', style: AppTextStyle.wite18w600),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 156, 153, 153)
                  .withOpacity(0.30000001192092896),
              width: 380,
              height: 180,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Без пересадок', style: AppTextStyle.wite16w600),
                    const SizedBox(
                      width: 60,
                    ),
                    Switch(
                      value: isSwit,
                      onChanged: (value) {
                        setState(() {
                          isSwit = value;
                          print(isSwit);
                        });
                      },
                      activeTrackColor: const Color.fromARGB(255, 58, 89, 202),
                      activeColor: const Color.fromARGB(255, 0, 42, 255),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 156, 153, 153)
                  .withOpacity(0.30000001192092896),
              width: 380,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text('Только с багажом',
                      style: AppTextStyle.wite16w600),
                  const SizedBox(
                    width: 55,
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      });
                    },
                    activeTrackColor: const Color.fromARGB(255, 58, 89, 202),
                    activeColor: const Color.fromARGB(255, 0, 42, 255),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 360,
            ),
            Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 54, 122, 56),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 50,
                width: 380,
                child: const Center(
                  child: Text('Готово', style: AppTextStyle.wite16w600),
                )),
          ],
        ),
      ),
    );
  }

  bool isSwitched = false;
  bool isSwit = false;
}
