// ignore_for_file: unused_element, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gojek/beranda/beranda_gojek_appbar.dart';
import 'package:gojek/constant.dart';
import 'package:gojek/beranda/berand_model.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  // list gojek services
  List<GojekService> _gojekServiceList = [];
  List<Food> _goFoodFeaturedList = [];
  @override
  void initState() {
    super.initState();
    _gojekServiceList.add(GojekService(
        image: Icons.directions_bike,
        color: GojekPalette.menuRide,
        title: "GO-RIDE"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_car_wash,
        color: GojekPalette.menuCar,
        title: "GO-CAR"));
    _gojekServiceList.add(GojekService(
        image: Icons.directions_car,
        color: GojekPalette.menuBluebird,
        title: "GO-BLUEBIRD"));
    _gojekServiceList.add(GojekService(
        image: Icons.restaurant,
        color: GojekPalette.menuFood,
        title: "GO-FOOD"));
    _gojekServiceList.add(GojekService(
        image: Icons.next_week,
        color: GojekPalette.menuSend,
        title: "GO-SEND"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_offer,
        color: GojekPalette.menuDeals,
        title: "GO-DEALS"));
    _gojekServiceList.add(GojekService(
        image: Icons.phonelink_ring,
        color: GojekPalette.menuPulsa,
        title: "GO-PULSA"));
    _gojekServiceList.add(GojekService(
        image: Icons.apps, color: GojekPalette.menuOther, title: "LAINNYA"));
    _gojekServiceList.add(GojekService(
        image: Icons.shopping_basket,
        color: GojekPalette.menuShop,
        title: "GO-SHOP"));
    _gojekServiceList.add(GojekService(
        image: Icons.shopping_cart,
        color: GojekPalette.menuMart,
        title: "GO-MART"));
    _gojekServiceList.add(GojekService(
        image: Icons.local_play, color: GojekPalette.menuTix, title: "GO-TIX"));

    //gojek service list
    _goFoodFeaturedList
        .add(new Food(title: "Steak Bakar", image: "assets/images/food_1.jpg"));
    _goFoodFeaturedList
        .add(new Food(title: "Mie Ayam", image: "assets/images/food_2.jpg"));
    _goFoodFeaturedList
        .add(new Food(title: "Tengkleng", image: "assets/images/food_3.jpg"));
    _goFoodFeaturedList.add(
        new Food(title: "Warung Steak", image: "assets/images/food_4.jpg"));
    _goFoodFeaturedList.add(new Food(
        title: "Kindai Warung Banjar", image: "assets/images/food_5.jpg"));
  }

  Widget _rowGoFoodFeatured(Food goFood) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              goFood.image,
              width: 132,
              height: 132,
            ),
          ),
          const SizedBox(height: 8),
          Text(goFood.title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: GojekAppBar(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    _buildGopayMenu(),
                    //method gojek service
                    _buildGojekServicesMenu(),
                  ],
                )),
          ],
        ),
      ),
    ));
  }

  Widget _rowGojekService(GojekService gojekService) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // showModalBottomSheet<void>(
            //   context: context,
            //   builder: (context) {
            //     return _buildMenuBottomSheet();
            //   },
            // );
            var snackBar =
                SnackBar(content: Text("${gojekService.title} clicked"));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: GojekPalette.grey200, width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              gojekService.image,
              color: gojekService.color,
              size: 32,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          gojekService.title,
          style: const TextStyle(fontSize: 10),
        )
      ],
    );
  }

  Widget _buildGojekServicesMenu() {
    return SizedBox(
        width: double.infinity,
        height: 220.0,
        child: Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: GridView.builder(
                physics: ClampingScrollPhysics(),
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, position) {
                  return Text("Gojek Menu");
                })));
  }

  Widget _buildGopayMenu() {
    return Container(
        height: 120.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
            ),
            borderRadius: BorderRadius.all(Radius.circular(3.0))),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.0),
                      topRight: Radius.circular(3.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "GOPAY",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                  Container(
                    child: Text(
                      "Rp. 120.000",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                          fontFamily: "NeoSansBold"),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/icon_transfer.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Transfer",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/icon_scan.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Scan QR",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/icon_saldo.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Isi Saldo",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icons/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Lainnya",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
    // ignore: dead_code
    Widget _buildGojekServicesMenu() {
      return SizedBox(
          width: double.infinity,
          height: 220.0,
          child: Container(
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: GridView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, position) {
                    return Text("Gojek Menu");
                  })));
    }
  }
}
