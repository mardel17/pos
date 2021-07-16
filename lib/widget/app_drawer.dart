import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pos/utils/const.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key? key, required this.route}) : super(key: key);

  final String route;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool _isExpanded = true;

  List<Map<String, dynamic>> menus = [
    <String, dynamic>{
      "image": "images/dashboard.png",
      "title": "Dashboard",
      "route": "Home",
      "color": COLOR.PRIMARY_BLUE,
    },
    <String, dynamic>{
      "image": "images/terminal.png",
      "title": "Virtual Terminal",
      "route": "",
      "color": COLOR.PINKISH_RED,
    },
    <String, dynamic>{
      "image": "images/invoices.png",
      "title": "Invoices",
      "route": "",
      "color": COLOR.GREEN,
    },
    <String, dynamic>{
      "image": "images/reports.png",
      "title": "Reports",
      "route": "",
      "color": COLOR.ORANGE,
    },
    <String, dynamic>{
      "image": "images/transactions.png",
      "title": "Transactions",
      "route": "",
      "color": COLOR.PURPLE,
    },
    <String, dynamic>{
      "image": "images/customers.png",
      "title": "Customers",
      "route": "",
      "color": COLOR.SKY2,
    },
    <String, dynamic>{
      "image": "images/online.png",
      "title": "Online",
      "route": "",
      "color": COLOR.PINK,
    },
    <String, dynamic>{
      "image": "images/orders.png",
      "title": "Orders",
      "route": "",
      "color": COLOR.YELLOW,
    },
    <String, dynamic>{
      "image": "images/inventory.png",
      "title": "Inventory",
      "route": "",
      "color": COLOR.BRICK_RED,
    },
    <String, dynamic>{
      "image": "images/locations.png",
      "title": "Locations",
      "route": "",
      "color": COLOR.LIME_GREEN,
    },
    <String, dynamic>{
      "image": "images/setting.png",
      "title": "Settings",
      "route": "",
      "color": COLOR.MEDIUM,
    },
  ];

  List<String> items1 = [
    "Online checkout",
    "Team",
    "Customers",
    "Items",
    "Returns",
    "Back Orders",
    "Promotions",
    "Expiring Items"
  ];

  List<String> items2 = [
    "Gift Cards",
    "Loyalty",
    "Marketing",
    "Shift Schedule",
    "Payroll",
    "Apps",
    "Integrations"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _isExpanded ? 180 : 60,
      child: Drawer(
        child: Container(
          width: 30,
          padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    primary: false,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> menu = menus[index];
                      return _menuCell(menu, () {
                        setState(() {
                          _isExpanded = !_isExpanded;
                        });
                      });
                    },
                    separatorBuilder: (_, __) => SizedBox(height: 2),
                    itemCount: menus.length),
                _isExpanded
                    ? Column(
                        children: [
                          Divider(),
                          ListView.separated(
                              padding: EdgeInsets.all(16),
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (context, index) {
                                return Text(
                                  items1[index],
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: COLOR.MEDIUM,
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (_, __) => SizedBox(height: 16),
                              itemCount: items1.length),
                          Divider(),
                          ListView.separated(
                              padding: EdgeInsets.all(16),
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (context, index) {
                                return Text(
                                  items2[index],
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: COLOR.MEDIUM,
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (_, __) => SizedBox(height: 16),
                              itemCount: items2.length),
                        ],
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _menuCell(Map<String, dynamic> menu, VoidCallback callback) {
    return InkWell(
      onTap: callback,
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: (menu["route"] == widget.route)
                      ? menu["color"]
                      : Colors.transparent,
                ),
              ),
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _isExpanded
                      ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              menu["title"]!,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: menu["color"],
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              textAlign: TextAlign.end,
                            ),
                          ),
                        )
                      : Container(),
                  Image.asset(menu["image"]!)
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Container(
            width: 4,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: (menu["route"] == widget.route)
                  ? menu["color"]
                  : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
