import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AvailableCarItem extends StatelessWidget {
  final String name;
  final String distance;
  final String gas;
  final String carType;
  const AvailableCarItem({
    Key? key,
    required this.name,
    required this.distance,
    required this.gas,
    required this.carType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xffFFFFFF),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 11.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/gps_dark.svg',
                  width: 16,
                  color: const Color(0xffD8D8D8),
                ),
                const SizedBox(width: 4),
                Text(
                  distance,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xffD8D8D8),
                  ),
                ),
                const SizedBox(width: 17),
                SvgPicture.asset(
                  carType == 'eletric'
                      ? 'assets/icons/battery.svg'
                      : 'assets/icons/gas.svg',
                  width: 16,
                  color: const Color(0xffD8D8D8),
                ),
                const SizedBox(width: 4),
                Text(
                  gas,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xffD8D8D8),
                  ),
                ),
              ],
            ),
          ),
          trailing: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_forward_rounded,
              color: Colors.black,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Divider(
            color: Color(0xff4B4B4B),
          ),
        ),
      ],
    );
  }
}
