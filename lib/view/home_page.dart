import 'package:flutter/material.dart';
import 'package:pos/utils/const.dart';
import 'package:pos/widget/app_drawer.dart';
import 'package:pos/widget/article_cell.dart';
import 'package:pos/widget/day_cell.dart';
import 'package:pos/widget/menu_card.dart';
import 'package:pos/widget/price_card.dart';
import 'package:pos/widget/product_cell.dart';
import 'package:pos/widget/topic_cell.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, String>> menus = [
    <String, String>{"image": "images/payment.png", "title": "Take a payment"},
    <String, String>{"image": "images/invoice.png", "title": "Send an Invoice"},
    <String, String>{"image": "images/item.png", "title": "Add an Item"},
    <String, String>{"image": "images/clock.png", "title": "Time Clock"},
    <String, String>{"image": "images/item_search.png", "title": "Item Search"},
    <String, String>{
      "image": "images/customer_search.png",
      "title": "Customer Search"
    },
    <String, String>{
      "image": "images/online_order.png",
      "title": "Online Orders"
    },
    <String, String>{
      "image": "images/purchase_order.png",
      "title": "Purchase Orders"
    },
    <String, String>{"image": "images/returns.png", "title": "Returns"},
    <String, String>{
      "image": "images/transfer_item.png",
      "title": "Transfer Items"
    },
    <String, String>{"image": "images/location.png", "title": "Locations"},
  ];

  final List<Map<String, String>> days = [
    <String, String>{"title": "Total customers", "description": "58"},
    <String, String>{"title": "New customers", "description": "17"},
    <String, String>{"title": "Returning customers", "description": "6"},
    <String, String>{
      "title": "Average spending per visit",
      "description": "\$23.98"
    },
    <String, String>{
      "title": "Average visits per customer",
      "description": "45"
    },
    <String, String>{"title": "Positive feedbacks", "description": "12"},
    <String, String>{"title": "Negative feedbacks", "description": "9"},
  ];

  final List<Map<String, dynamic>> prices = [
    <String, dynamic>{
      "color": COLOR.PURPLE,
      "title": "\$5,423.70",
      "description": "This Week"
    },
    <String, dynamic>{
      "color": COLOR.LIME_GREEN,
      "title": "\$18,000.95",
      "description": "This Month"
    },
    <String, dynamic>{
      "color": COLOR.YELLOW,
      "title": "\$4,538.03",
      "description": "Online"
    },
    <String, dynamic>{
      "color": COLOR.PINKISH_RED,
      "title": "\$708.97",
      "description": "Today"
    },
    <String, dynamic>{
      "color": COLOR.TURQUOISE,
      "title": "\$10,476.13",
      "description": "Cash"
    },
    <String, dynamic>{
      "color": COLOR.PRIMARY_BLUE,
      "title": "\$51,903.42",
      "description": "Cards"
    },
    <String, dynamic>{
      "color": COLOR.PINK,
      "title": "\$8,943.07",
      "description": "Check"
    },
    <String, dynamic>{
      "color": COLOR.MEDIUM,
      "title": "\$5,832.79",
      "description": "Others"
    },
  ];

  final List<Map<String, String>> topics = [
    <String, String>{
      "title": "How did you choose the location for your business?",
      "description": "Isabelle    |    18 Replies"
    },
    <String, String>{
      "title": "Ask our appointments Product Managers anything",
      "description": "Tom    |    52 Replies"
    },
    <String, String>{
      "title": "National Farmers Market Week Toolkit",
      "description": "Helen    |    5 Replies"
    },
    <String, String>{
      "title": "PetsPOS Podcast: Paying it forward!",
      "description": "Derek    |    73 Replies"
    },
  ];

  final List<Map<String, String>> articles = [
    <String, String>{
      "title": "Top items by sales",
      "description": "No item sales today!"
    },
    <String, String>{
      "title": "Top categories by sales",
      "description": "No item sales today!"
    },
    <String, String>{
      "title": "Items Expiring in 30 days or less",
      "description": "No item sales today!"
    },
    <String, String>{"title": "Promo’s", "description": "No item sales today!"},
  ];

  final List<Map<String, String>> products = [
    <String, String>{
      "image": "images/retail.png",
      "title": "PetsPOS for Retail"
    },
    <String, String>{
      "image": "images/restaurant.png",
      "title": "PetsPOS for Restaurants"
    },
    <String, String>{"image": "images/quickbook.png", "title": "QuickBooks"},
    <String, String>{"image": "images/shopify.png", "title": "Shopify"},
    <String, String>{
      "image": "images/zoho.png",
      "title": "Integrate with Zoho"
    },
    <String, String>{
      "image": "images/calendly.png",
      "title": "Integrate with Calendly"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR.BACKGROUND,
      endDrawer: AppDrawer(route: "Home"),
      appBar: AppBar(
        iconTheme: IconThemeData(color: COLOR.PRIMARY_BLUE),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: COLOR.SKY_BLUE,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "C",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  "Charles Rogers",
                  style:
                      TextStyle(color: COLOR.DARK, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 16),
                Image.asset("images/arrow_down.png")
              ],
            ),
            SizedBox(width: 32),
            Image.asset("images/chat.png"),
            SizedBox(width: 32),
            Image.asset("images/bell_red.png"),
            SizedBox(width: 32),
            Image.asset("images/question.png"),
            SizedBox(width: 32),
            Image.asset("images/search.png"),
          ],
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .3,
                child: SingleChildScrollView(
                  padding: EdgeInsets.zero,
                  child: Column(
                    children: [
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (context, index) {
                            Map<String, String> menu = menus[index];
                            return MenuCard(menu: menu);
                          },
                          separatorBuilder: (_, __) => SizedBox(height: 8),
                          itemCount: menus.length),
                      SizedBox(height: 8),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last 30 days",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: COLOR.MEDIUM,
                              ),
                            ),
                            SizedBox(height: 16),
                            ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                primary: false,
                                itemBuilder: (context, index) {
                                  return DayCell(day: days[index]);
                                },
                                separatorBuilder: (_, __) => Divider(),
                                itemCount: days.length)
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Popular Community topics",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: COLOR.MEDIUM,
                              ),
                            ),
                            SizedBox(height: 16),
                            ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                primary: false,
                                itemBuilder: (context, index) {
                                  Map<String, String> topic = topics[index];
                                  return TopicCell(topic: topic);
                                },
                                separatorBuilder: (_, __) => Divider(),
                                itemCount: topics.length)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _welcomeWidget(context),
                      SizedBox(height: 8),
                      GridView.count(
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        primary: false,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 3.0,
                        children:
                            prices.map((e) => PriceCard(price: e)).toList(),
                      ),
                      SizedBox(height: 8),
                      ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          primary: false,
                          itemBuilder: (context, index) {
                            return AtricleCell(article: articles[index]);
                          },
                          separatorBuilder: (_, __) => SizedBox(height: 8),
                          itemCount: articles.length),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white),
                        padding: EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Recommended Products",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: COLOR.MEDIUM,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Flexible(
                                    child: ProductCell(product: products[0])),
                                Flexible(
                                    child: ProductCell(product: products[1])),
                              ],
                            ),
                            Divider(thickness: 0.5),
                            Row(
                              children: [
                                Flexible(
                                    child: ProductCell(product: products[2])),
                                Flexible(
                                    child: ProductCell(product: products[3])),
                              ],
                            ),
                            Divider(thickness: 0.5),
                            Row(
                              children: [
                                Flexible(
                                    child: ProductCell(product: products[4])),
                                Flexible(
                                    child: ProductCell(product: products[5])),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget _welcomeWidget(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome!",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: COLOR.MEDIUM_DARK),
          ),
          SizedBox(height: 16),
          Text(
            "“ Success is not final; failure is not fatal: it is the courage to continue that counts.” \n– Winston Churchill",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: COLOR.DARK, height: 1.5),
          ),
        ],
      ),
    );
  }
}
