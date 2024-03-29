import 'package:flutter/material.dart';
import 'package:frame/provider/floating_controller.dart';
import 'package:frame/screen/community.dart';
import 'package:frame/screen/mainpage.dart';
import 'package:frame/screen/mypage.dart';
import 'package:frame/screen/record.dart';
import 'package:frame/screen/reservation.dart';
import 'package:frame/screen/search.dart';
import 'package:provider/provider.dart';

class FloatingWidget extends StatefulWidget {
  final String pagename;
  const FloatingWidget(this.pagename, {super.key});

  @override
  State<FloatingWidget> createState() => _FloatingWidgetState();
}

class _FloatingWidgetState extends State<FloatingWidget> {
  Map<String, bool> sub_slot = {
    'Search': false,
    'Chat': false,
    'Ticket': false,
    'User': false,
  };
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(Provider.of<Floating_Controller>(context, listen: false).page_name);
  }

  void Button_Active(String text) {
    print('현재 페이지');
    print(Provider.of<Floating_Controller>(context, listen: false).page_name);
    sub_slot.forEach((key, value) {
      sub_slot[key] = false;
    });
    Provider.of<Floating_Controller>(context, listen: false).Set_Page(text);
    String page_active =
        Provider.of<Floating_Controller>(context, listen: false).page_name;
    print('바뀔 페이지');
    print(page_active);
    if (page_active != 'main' && page_active != 'record') {
      sub_slot[page_active] = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Floating_Controller>(
      builder: (context, floating_controller, _) {
        String page_active = context.read<Floating_Controller>().page_name;
        if (page_active != '' &&
            page_active != 'main' &&
            page_active != 'record') {
          sub_slot[page_active] = true;
        }
        return Container(
          height: 52,
          width: 343,
          child: Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  setState(() {
                    sub_slot.forEach((key, value) {
                      sub_slot[key] = false;
                    });
                  });
                  Button_Active(widget.pagename);
                  String route_page =
                      context.read<Floating_Controller>().page_name;
                  if (route_page != 'main') {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainPage(),
                        ));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RocordPage(),
                        ));
                  }
                  // if (widget.pagename == 'record') {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => RocordPage(),
                  //       ));
                  //   Button_Active(widget.pagename);
                  // }
                },
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff000000),
                  ),
                  child: Center(
                    child: Image.asset(widget.pagename == 'main'
                        ? 'assets/main/Plus Math.png'
                        : widget.pagename == 'record'
                            ? 'assets/search/Left.png'
                            : 'assets/main/Home.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 18,
              ),
              Container(
                width: 263,
                height: 52,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff000000),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (String text in sub_slot.keys)
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          if (text == 'Search') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Search(),
                                ));
                          }
                          if (text == 'Chat') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Community(),
                              ),
                            );
                          }
                          if (text == 'Ticket') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReservationPage(),
                              ),
                            );
                          }
                          if (text == 'User') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Mypage(),
                              ),
                            );
                          }
                          Button_Active(text);
                        },
                        child: Container(
                          width: 44,
                          height: 44,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(
                                sub_slot[text]! ? 0xffffffff : 0xff000000),
                            image: DecorationImage(
                              image: AssetImage(sub_slot[text] ?? false
                                  ? 'assets/main/$text-1.png'
                                  : 'assets/main/$text.png'),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
