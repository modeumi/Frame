import 'package:flutter/material.dart';
import 'package:frame/reservation/ticket.dart';

class TicketReservation extends StatefulWidget {
  const TicketReservation({super.key});

  @override
  State<TicketReservation> createState() => _TicketReservationState();
}

class _TicketReservationState extends State<TicketReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        TicketPage(),
        Container(
          color: Colors.black.withOpacity(0.3),
        ),
        Positioned(
          bottom: 30,
          left: 25,
          child: Container(
            width: 330,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  child: Image.asset('assets/reservation/Left.png'),
                ),
                Container(
                  width: 263,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 110,
          child: Image.asset('assets/reservation/Frame 1437257199.png'),
        )
      ]),
    );
  }
}
