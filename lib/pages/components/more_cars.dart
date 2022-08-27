import 'package:flutter/material.dart';

import '../data/data.dart';
import 'available_car_item.dart';

class MoreCars extends StatelessWidget {
  const MoreCars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff282931),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 24, top: 21, right: 32, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'More Cars',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xffD4D4D4),
                  ),
                ),
                Icon(
                  Icons.more_horiz_outlined,
                  color: Color(0xff787878),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 200,
            child: ListView.builder(
              itemCount: availableCars.length,
              itemBuilder: (context, index) {
                return AvailableCarItem(
                  name: availableCars[index]['name'],
                  distance: availableCars[index]['distance'],
                  gas: availableCars[index]['gas'],
                  carType: availableCars[index]['carType'],
                );
              },
            ),
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
