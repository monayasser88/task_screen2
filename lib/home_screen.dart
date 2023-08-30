import 'package:flutter/material.dart';
import 'package:task_screen2/bigger_container.dart';
import 'package:task_screen2/container_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
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
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        const Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Payments',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 8, 52),
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: TextButton(
                              onPressed: () {
                                // Add your button functionality here
                              },
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    side: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                              child: const Text(
                                '+ADD',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 63, 208, 253),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContainerWidget(
                            text1: '\$2,000',
                            icon: Icons.warning_amber,
                            color: Colors.orange,
                            text2: 'monaaa'),
                        ContainerWidget(
                            text1: '\$2,000',
                            icon: Icons.no_accounts,
                            color: Colors.pink,
                            text2: 'monaaa')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BiggerContainer(
                        text1: '\$4,000',
                        text2: 'Monthly Rent(Main Street)',
                        image:
                            'assets/Love u❤️.jfif'),
                    SizedBox(
                      height: 20,
                    ),
                    BiggerContainer(
                        text1: '\$2,000',
                        text2: 'Monthly Rent(joanne Park)',
                        image:
                            'assets/🌈Flork Mix 4🧦.png'),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 320,
                      height: 60,
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
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.home, size: 25, color: Colors.blueGrey),
                            Icon(Icons.square_outlined,
                                size: 25, color: Colors.blueGrey),
                            Container(
                              width: 55,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Color.fromARGB(255, 63, 208, 253),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.add,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.cached,
                                size: 25, color: Colors.blueGrey),
                            Icon(Icons.edit_square,
                                size: 25, color: Colors.blueGrey),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
