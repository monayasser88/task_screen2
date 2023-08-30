import 'package:flutter/material.dart';

class BiggerContainer extends StatelessWidget {
  const BiggerContainer({super.key, required this.text1, required this.text2, required this.image});
  final String text1;
  final String text2;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 26, color: Color.fromARGB(255, 0, 8, 52)),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              Container(
                width: 70,
                height: 36,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 208, 241, 219),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.warning_amber,
                      size: 16,
                      color: Color.fromARGB(255, 21, 230, 28),
                    ),
                    Center(
                      child: Text(
                        'PAID',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 21, 230, 28),
                            fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '02-02-2019',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  Text(
                    'DUO DATE',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  '0 days',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  'DAYS OVERDUE',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ]),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(image),
              ),
            ],
          )
        ],
      ),
    );
  }
}
