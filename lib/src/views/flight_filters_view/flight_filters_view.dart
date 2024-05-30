import 'package:app_kairov/src/views/ticket_view/tickets_page.dart';
import 'package:flutter/material.dart';

class FlightFilters extends StatefulWidget {
  const FlightFilters({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FlightFiltersState createState() => _FlightFiltersState();
}

class _FlightFiltersState extends State<FlightFilters> {
  double stopCount = 2;
  double layoverDuration = 4;
  bool noStopInClosedCountries = true;
  bool noSeparateBookings = false;
  bool noNightLayovers = false;
  bool noAirportChanges = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(color: Color(0xFF242529)),
                child: const Center(
                  child: Text(
                    'Фильтры                                                   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '  Популярные фильтры',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(color: Color(0xFF242529)),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 153,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: const Color.fromARGB(255, 50, 51, 55),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Багаж включен',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 153,
                        height: 39,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 8),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2F3035),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Только прямые',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Пересадки',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF242529),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          ' Количество пересадок',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 69, 70, 73),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text(
                              'до ${stopCount.toInt()}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: stopCount,
                      min: 0,
                      max: 2,
                      divisions: 2,
                      label: stopCount.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          stopCount = value;
                        });
                      },
                    ),
                    Row(
                      children: [
                        const Text(
                          ' Длительность\n пересадок',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        Text('${layoverDuration.toInt()} ч'),
                      ],
                    ),
                    Slider(
                      value: layoverDuration,
                      min: 4,
                      max: 24,
                      divisions: 5,
                      label: layoverDuration.round().toString(),
                      onChanged: (value) {
                        setState(() {
                          layoverDuration = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF242529),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Column(
                  children: [
                    SwitchListTile(
                      title: const Text(
                        'Без пересадок в странах, закрытых для туристов',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      value: noStopInClosedCountries,
                      onChanged: (value) {
                        setState(() {
                          noStopInClosedCountries = value;
                        });
                      },
                    ),
                    SwitchListTile(
                      title: const Text(
                        'Без раздельных бронирований',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      value: noSeparateBookings,
                      onChanged: (value) {
                        setState(() {
                          noSeparateBookings = value;
                        });
                      },
                    ),
                    SwitchListTile(
                      title: const Text(
                        'Без ночной пересадки',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      value: noNightLayovers,
                      onChanged: (value) {
                        setState(() {
                          noNightLayovers = value;
                        });
                      },
                    ),
                    SwitchListTile(
                      title: const Text(
                        'Без смены аэропорта',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                      value: noAirportChanges,
                      onChanged: (value) {
                        setState(() {
                          noAirportChanges = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Tickets(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 53, 126, 56),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      'Показать билеты от 6 310 ₽  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
