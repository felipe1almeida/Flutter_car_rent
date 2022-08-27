import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NearestCarInfo extends StatelessWidget {
  const NearestCarInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 234,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF3F3F3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 17, left: 22),
            child: Text(
              'NEAREST CAR',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xff787878),
              ),
            ),
          ),
          const SizedBox(height: 9),
          Center(
            child: Image.asset(
              'assets/images/side_car.png',
            ),
          ),
          const SizedBox(height: 3),
          const Padding(
            padding: EdgeInsets.only(top: 17, left: 22),
            child: Text(
              'Fortuner GR',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Color(0xff2C2B34),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(
              left: 22,
              bottom: 16,
              right: 31,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/gps_dark.svg',
                      width: 16,
                      color: const Color(0xff787878),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '> 870km',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff787878),
                      ),
                    ),
                    const SizedBox(width: 17),
                    SvgPicture.asset(
                      'assets/icons/gas.svg',
                      width: 16,
                      color: const Color(0xff787878),
                    ),
                    const SizedBox(width: 4),
                    const Text(
                      '50L',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Color(0xff787878),
                      ),
                    ),
                  ],
                ),
                const Text(
                  '\$ 45,00/h',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
