import 'package:flutter/material.dart';
import 'package:frame/provider/floating_controller.dart';
import 'package:frame/screen/community.dart';
import 'package:frame/screen/mypage.dart';
import 'package:frame/screen/search.dart';
import 'package:provider/provider.dart';

class FloatingWidget extends StatefulWidget {
  final bool mainpage;
  const FloatingWidget(this.mainpage, {super.key});

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

  void Button_Active(String text) {
    sub_slot.forEach((key, value) {
      sub_slot[key] = false;
    });
    Provider.of<Floating_Controller>(context, listen: false).Set_Page(text);
    String page_active =
        Provider.of<Floating_Controller>(context, listen: false).page_name;
    sub_slot[page_active] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Floating_Controller>(
      builder: (context, floating_controller, _) {
        String page_active = context.read<Floating_Controller>().page_name;
        if (page_active != '') {
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
                  bool state =
                      Provider.of<Floating_Controller>(context, listen: false)
                          .page_state;
                  Provider.of<Floating_Controller>(context, listen: false)
                      .Floating_State(!state);
                  Provider.of<Floating_Controller>(context, listen: false)
                      .Set_Page('');
                  sub_slot.forEach((key, value) {
                    sub_slot[key] = false;
                  });
                },
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xff000000),
                  ),
                  child: Center(
                      child: Image.asset(widget.mainpage
                          ? 'assets/main/Plus Math.png'
                          : 'assets/main/Home.png')),
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
                                  ));
                            }
                            if (text == 'User') {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Mypage(),
                                  ));
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
                                  image: AssetImage(sub_slot[text]!
                                      ? 'assets/main/${text}-1.png'
                                      : 'assets/main/${text}.png'),
                                )),
                          ),
                        )
                    ]),
              )
            ],
          ),
        );
      },
    );
  }
}
