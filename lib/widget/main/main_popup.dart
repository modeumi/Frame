import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PopupContainer extends StatefulWidget {
  @override
  _PopupContainerState createState() => _PopupContainerState();
}

class _PopupContainerState extends State<PopupContainer> {
  bool _showPopup = false;

  void _togglePopup() {
    setState(() {
      _showPopup = !_showPopup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       
      ],
    );
  }
}
