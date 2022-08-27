import 'package:flutter/material.dart';

class UserAndMapInfo extends StatelessWidget {
  const UserAndMapInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 170,
          decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 27, 39, 20),
            child: Column(
              children: [
                Image.asset('assets/images/profile_pic.png'),
                const Text(
                  'Jane Cooper',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  '\$ 4,253',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 170,
          decoration: BoxDecoration(
            color: const Color(0xffF3F3F3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset('assets/images/Maps.png'),
        ),
      ],
    );
  }
}
