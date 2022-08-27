import 'package:flutter/material.dart';
import 'components/more_cars.dart';
import 'components/nearest_car_info.dart';
import 'components/top_bar.dart';
import 'components/user_and_map_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const TopBar(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Column(
                  children: const [
                    NearestCarInfo(),
                    SizedBox(height: 22),
                    UserAndMapInfo(),
                    SizedBox(height: 22),
                    MoreCars(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
