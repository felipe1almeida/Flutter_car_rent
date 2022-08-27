import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: const [
              Icon(Icons.info_outline),
              SizedBox(width: 11),
              Text(
                'Information',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff000000),
                ),
              )
            ],
          ),
          Row(
            children: const [
              Icon(Icons.notifications_outlined),
              SizedBox(width: 11),
              Text(
                'Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff000000),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
