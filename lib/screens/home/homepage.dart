import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../controller/productsModel.dart';

import '../widgets/DecorartionWorks.dart';
import '../widgets/bookey.dart';
import '../widgets/accessories.dart';
import '../widgets/flowers.dart';
import '../widgets/plants.dart';
import '../widgets/products.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home';
  const HomePage();
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late ProductsModel _prodModel;
  double xOffset = 0;
  double yOffset = 0;
  String cartCount = '';
  double scalefactor = 1;
  bool isDrawerOpen = false;
  bool textChange = true;
  Timer? timer;

  List flowers = [
    {
      'pId': '01101',
      'pType': 'flower',
      'pImg': 'assets/flowers/redrose.jpg',
      'pName': 'Rose',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01102',
      'pType': 'flower',
      'pImg': 'assets/flowers/tulip.jpg',
      'pName': 'Tulip',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01103',
      'pType': 'flower',
      'pImg': 'assets/flowers/lily.png',
      'pName': 'Lily',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01104',
      'pType': 'flower',
      'pImg': 'assets/flowers/ranunculus.jpg',
      'pName': 'Ranunculus',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01105',
      'pType': 'flower',
      'pImg': 'assets/flowers/dahlia.jpg',
      'pName': 'Dahlia',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01106',
      'pType': 'flower',
      'pImg': 'assets/flowers/marigold.jpeg',
      'pName': 'Marigold',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01107',
      'pType': 'flower',
      'pImg': 'assets/flowers/petunia.jpg',
      'pName': 'Petunia',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01108',
      'pType': 'flower',
      'pImg': 'assets/flowers/sunflower.png',
      'pName': 'Sunflower',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    }
  ];

  @override
  initState() {
    super.initState();
    // _prodModel = Provider.of<ProductsModel>(context, listen: false);
    // _prodModel.getModelFlowersList();
    timer =
        Timer.periodic(const Duration(seconds: 4), (Timer t) => updateText());
  }

  @override
  didChangeDependencies() {
    // _productModelRed = Provider.of<ProductModel>(
    //   context,
    //   listen: false,
    // );
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
    // network.cancel();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  toggleDrawer(double x, double y, double sf, bool ido) {
    setState(() {
      xOffset = x;
      yOffset = y;
      scalefactor = sf;
      isDrawerOpen = ido;
    });
  }

  updateText() {
    if (textChange == true) {
      setState(() {
        textChange = false;
      });
    } else {
      setState(() {
        textChange = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        drawerWidget(context),
        AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scalefactor),
          duration: const Duration(milliseconds: 300),
          child: DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Scaffold(
              appBar: AppBar(
                // centerTitle: true,
                leading: isDrawerOpen
                    ? GestureDetector(
                        onTap: () {
                          toggleDrawer(0, 0, 1, false);
                        },
                        child: SizedBox(
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              toggleDrawer(0, 0, 1, false);
                            },
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => {
                          toggleDrawer(310, 150, 0.6, true),
                        },
                        child: SizedBox(
                          child: IconButton(
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              toggleDrawer(310, 150, 0.6, true);
                            },
                          ),
                        ),
                      ),
                title: Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        // color: Colors.amberAccent,
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'Fulwari',
                          style: TextStyle(
                            fontSize: 33,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const Text('ENG',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                    IconButton(
                      icon: const Icon(
                        Icons.shopping_cart,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, ShoppingCart.routeName);
                      },
                    ),
                  ],
                ),
                bottom: const TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  labelPadding: EdgeInsets.symmetric(horizontal: 15.0),
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.white,
                  labelStyle: TextStyle(
                    fontSize: 18,
                  ),
                  tabs: <Widget>[
                    Tab(text: 'Home'),
                    Tab(text: 'Products'),
                    Tab(text: 'Plants'),
                    Tab(text: 'Accessories'),
                  ],
                ),
              ),
              body: Stack(
                children: [
                  TabBarView(
                    children: <Widget>[
                      homePage(),
                      ProductsList(),
                      PlantsList(),
                      AccessoriesList(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget homePage() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                // child: SearchBar(),
                child: InkWell(
                  onTap: () {
                    // Navigator.pushNamed(context, SearchProducts.routeName);
                  },
                  child: likeSearch(context),
                ),
              ),
              Container(
                // color: Colors.grey,
                // height: MediaQuery.of(context).size.height / 2,
                // margin: EdgeInsets.fromLTRB(0, 00top, right, bottom)
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () => {
                          // Navigator.pushNamed(context, ProductsList.routeName),
                        },
                        child: CachedNetworkImage(
                          // imageUrl:
                          // 'https://newevolutiondesigns.com/images/freebies/flowers-wallpaper-3.jpg',
                          imageUrl:
                              'https://m.media-amazon.com/images/I/61o3HXlt6vL._SL1000_.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2.5,
                          // fit: BoxFit.contain,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                        child: const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Orchids',
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20,
                                letterSpacing: 1.2,
                                color: Colors.green,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                // color: Colors.green,
                child: const Center(
                  child: Text(
                    'Some Attractions',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              bigSlider(),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                // color: Colors.green,
                child: const Center(
                  child: Text(
                    'Seasonal on boom',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                // color: Colors.grey,
                // height: MediaQuery.of(context).size.height / 2,
                // margin: EdgeInsets.fromLTRB(0, 00top, right, bottom)
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () => {
                          // Navigator.pushNamed(context, ProductsList.routeName),
                        },
                        child: CachedNetworkImage(
                          // imageUrl:
                          // 'https://newevolutiondesigns.com/images/freebies/flowers-wallpaper-3.jpg',
                          imageUrl:
                              'https://www.ubuy.co.id/productimg/?image=aHR0cHM6Ly9tLm1lZGlhLWFtYXpvbi5jb20vaW1hZ2VzL0kvNjFvcDE4aGd2OUwuX0FDX1NMMTUwMF8uanBn.jpg',
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 2,
                          fit: BoxFit.contain,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                              ),
                            ),
                          ),
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //       top: MediaQuery.of(context).size.height / 12,
                      //       left: MediaQuery.of(context).size.width / 2 - 45),
                      //   child: SizedBox(
                      //     width: MediaQuery.of(context).size.width / 3 - 16,
                      //     child: ElevatedButton(
                      //       style: ElevatedButton.styleFrom(
                      //         elevation: 0,
                      //         primary: Colors.transparent,
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(
                      //               0.0,
                      //             ),
                      //             side: const BorderSide(
                      //                 color: Colors.white, width: 1)),
                      //       ),
                      //       onPressed: () {
                      //         // Navigator.pushNamed(
                      //         //     context, ProductsList.routeName);
                      //       },
                      //       child: const Text(
                      //         'SHOP NOW',
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.w800,
                      //           fontSize: 11,
                      //           letterSpacing: 1.2,
                      //           color: Colors.white,
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                // color: Colors.green,
                child: const Center(
                  child: Text(
                    'Accessories Display',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              productsMiniSlider(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      const Text(
                        'Have a look of reviews',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 123,
                        child: Text(
                          '266 reviews',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              animatedTextWidget(context),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Center(
                child: OutlinedButton(
                  child: const Text(
                    "View All Categories",
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(width: 1.0, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                child: Column(
                  children: const [
                    Text(
                      'Join Nature savers',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'In the actual manner our goal is make and promote nature friendly environment everywhere until we have even any single example of anti nature element or entity.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              // Padding(
              //   padding: const EdgeInsets.only(left: 15),
              //   child: Row(
              //     children: const [
              //       Icon(
              //         Icons.favorite_border,
              //         color: Colors.black,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           'EXCLUSIVE GIVEBACKS',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w300),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15),
              //   child: Row(
              //     children: const [
              //       Icon(
              //         Icons.calendar_view_week_outlined,
              //         color: Colors.black,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           'WEEKLY CONTESTS',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w300),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15),
              //   child: Row(
              //     children: const [
              //       Icon(
              //         Icons.next_plan_outlined,
              //         color: Colors.black,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           'HAVE A SAY IN WHAT COMES NEXT',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w300),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 15),
              //   child: Row(
              //     children: const [
              //       Icon(
              //         Icons.local_offer_outlined,
              //         color: Colors.black,
              //       ),
              //       Padding(
              //         padding: EdgeInsets.all(8.0),
              //         child: Text(
              //           'EXCLUSIVE DISCOUNTS',
              //           style: TextStyle(
              //               color: Colors.black,
              //               fontSize: 13,
              //               fontWeight: FontWeight.w300),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 15, top: 20),
              //   child: Text(
              //     'Still not sold? Don’t take our word for it – become a COLDEST VIP and connect with thousands of members across the world to hear why they joined the movement.',
              //     style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 13,
              //         fontWeight: FontWeight.w100),
              //   ),
              // ),
              // Center(
              //   child: OutlinedButton(
              //     onPressed: () {},
              //     style: OutlinedButton.styleFrom(
              //       side: const BorderSide(width: 1.0, color: Colors.black),
              //     ),
              //     child: const Text(
              //       "BECOME COLDEST VIP",
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 13,
              //           fontWeight: FontWeight.w300),
              //     ),
              //   ),
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 140,
              //   color: Colors.grey[300],
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: ListView(
              //       itemExtent: 40.0,
              //       children: [
              //         Container(
              //           padding: EdgeInsets.only(
              //               left: MediaQuery.of(context).size.width / 3.6),
              //           child: const ListTile(
              //             leading: Icon(Icons.design_services_outlined),
              //             title: Align(
              //               alignment: Alignment(-1.7, 0),
              //               child: Text(
              //                 'INNOVATIVE DESIGN',
              //                 style: TextStyle(
              //                   fontSize: 8,
              //                   fontWeight: FontWeight.w300,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.only(
              //               left: MediaQuery.of(context).size.width / 3.6),
              //           child: const ListTile(
              //             leading: Icon(Icons.request_page_outlined),
              //             title: Align(
              //               alignment: Alignment(-1.7, 0),
              //               child: Text(
              //                 'LIFETIME WARRANTY',
              //                 style: TextStyle(
              //                   fontSize: 8,
              //                   fontWeight: FontWeight.w300,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.only(
              //               left: MediaQuery.of(context).size.width / 3.6),
              //           child: const ListTile(
              //             leading: Icon(Icons.thumb_up_outlined),
              //             title: Align(
              //               alignment: Alignment(-2.3, 0),
              //               child: Text(
              //                 'FLAWLESS CUSTOMER SERVICE',
              //                 style: TextStyle(
              //                   fontSize: 8,
              //                   fontWeight: FontWeight.w300,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Container(
              //   color: Colors.white,
              //   height: 70,
              //   child: Align(
              //     alignment: Alignment.center,
              //     child: ListView(
              //       itemExtent: 30.0,
              //       children: [
              //         Container(
              //           padding: EdgeInsets.only(
              //               left: MediaQuery.of(context).size.width / 5),
              //           child: const ListTile(
              //             leading: Icon(
              //               Icons.facebook_outlined,
              //               color: Color(0xAFA8945F),
              //               size: 35,
              //             ),
              //             title: Align(
              //               alignment: Alignment(-1.7, 0),
              //               child: Text(
              //                 'FIND US ON FACEBOOK',
              //                 style: TextStyle(
              //                   color: Color(0xAFA8945F),
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //         Container(
              //           padding: EdgeInsets.only(
              //               left: MediaQuery.of(context).size.width / 5),
              //           child: const ListTile(
              //             leading: Icon(
              //               Icons.design_services_outlined,
              //               color: Color(0xAFA8945F),
              //               size: 35,
              //             ),
              //             title: Align(
              //               alignment: Alignment(-1.7, 0),
              //               child: Text(
              //                 'FIND US ON INSTAGRAM',
              //                 style: TextStyle(
              //                   color: Color(0xAFA8945F),
              //                   fontSize: 18,
              //                   fontWeight: FontWeight.w500,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // Container(
              //   height: 120,
              //   padding: const EdgeInsets.symmetric(horizontal: 8),
              //   width: MediaQuery.of(context).size.width,
              //   child: Column(
              //     children: <Widget>[
              //       Container(
              //         padding: const EdgeInsets.symmetric(vertical: 5),
              //         height: 40,
              //         child: ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             primary: const Color(0xAFB6A067),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(8.0),
              //             ),
              //             minimumSize: const Size.fromHeight(30),
              //             textStyle: const TextStyle(
              //                 fontSize: 30, fontWeight: FontWeight.bold),
              //           ),
              //           onPressed: () {},
              //           child: const Text(
              //             'STORE LOCATOR',
              //             style: TextStyle(
              //               fontSize: 10,
              //               color: Colors.white,
              //               letterSpacing: 2,
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         padding: const EdgeInsets.symmetric(vertical: 5),
              //         height: 40,
              //         child: ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             primary: const Color(0xAFB6A067),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(8.0),
              //             ),
              //             minimumSize: const Size.fromHeight(30),
              //             textStyle: const TextStyle(
              //                 fontSize: 30, fontWeight: FontWeight.bold),
              //           ),
              //           onPressed: () {},
              //           child: const Text(
              //             'FAQ',
              //             style: TextStyle(
              //               fontSize: 10,
              //               color: Colors.white,
              //               letterSpacing: 2,
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //         ),
              //       ),
              //       Container(
              //         padding: const EdgeInsets.symmetric(vertical: 5),
              //         height: 40,
              //         child: ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             primary: const Color(0xAFB6A067),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(8.0),
              //             ),
              //             minimumSize: const Size.fromHeight(30),
              //             textStyle: const TextStyle(
              //                 fontSize: 30, fontWeight: FontWeight.bold),
              //           ),
              //           onPressed: () {},
              //           child: const Text(
              //             'TRACK YOUR ORDER',
              //             style: TextStyle(
              //               fontSize: 10,
              //               color: Colors.white,
              //               letterSpacing: 2,
              //               fontWeight: FontWeight.w500,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                height: 30,
                child: Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'Social platforms',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_right_outlined,
                        color: Colors.black, size: 25),
                  ],
                ),
              ),
              Container(
                color: Colors.grey,
                height: MediaQuery.of(context).size.height - 265,
                // padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CachedNetworkImage(
                  imageUrl:
                      'https://images.squarespace-cdn.com/content/v1/596b2969d2b85786e6892853/1623052452634-R743CL07XHP239IOCC5P/Nelson+Henderson+Quote+about+trees',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget drawerWidget(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        elevation: 0,
        backgroundColor: Colors.white,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertiscal
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              child: InkWell(
                child: const Text(
                  'Sign in/Sign Up',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('buyerseller');
                  toggleDrawer(0, 0, 1, false);
                },
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.shop,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Fulwari",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text('All Products',
              //     style: TextStyle(color: Colors.white)),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(
                Icons.water_damage_outlined,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Bookey",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text(
              //   'dEMO tEXT',
              //   style: TextStyle(color: Colors.white),
              // ),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(
                Icons.travel_explore_outlined,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Plants",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text('dEMO tEXT',
              //     style: TextStyle(color: Colors.white)),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(
                Icons.share_arrival_time,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Seasonal",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text('dEMO tEXT',
              //     style: TextStyle(color: Colors.white)),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(
                Icons.hotel,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Offers",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text('dEMO tEXT',
              //     style: TextStyle(color: Colors.white)),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(
                Icons.pets,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Decorations",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text('dEMO tEXT',
              //     style: TextStyle(color: Colors.white)),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(
                Icons.account_box,
                size: 35,
                color: Color.fromARGB(255, 9, 124, 13),
              ),
              title: const Text(
                "Account",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 9, 124, 13),
                ),
              ),
              // subtitle: const Text('dEMO tEXT',
              //     style: TextStyle(color: Colors.white)),
              onTap: () => {},
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   body: Container(
    //     color: Colors.grey,
    //     height: MediaQuery.of(context).size.height,
    //     width: MediaQuery.of(context).size.width,
    //     child: Container(
    //       margin: EdgeInsets.fromLTRB(
    //           10, MediaQuery.of(context).size.height / 6, 0, 0),
    //       child: ListView(
    //         scrollDirection: Axis.vertical,
    //         children: [
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.shop,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Fulwari",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text('All Products',
    //               //     style: TextStyle(color: Colors.white)),
    //               onTap: () => {},
    //             ),
    //           ),
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.water_damage_outlined,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Bookey",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text(
    //               //   'dEMO tEXT',
    //               //   style: TextStyle(color: Colors.white),
    //               // ),
    //               onTap: () => {},
    //             ),
    //           ),
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.travel_explore_outlined,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Plants",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text('dEMO tEXT',
    //               //     style: TextStyle(color: Colors.white)),
    //               onTap: () => {},
    //             ),
    //           ),
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.share_arrival_time,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Seasonal",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text('dEMO tEXT',
    //               //     style: TextStyle(color: Colors.white)),
    //               onTap: () => {},
    //             ),
    //           ),
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.hotel,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Offers",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text('dEMO tEXT',
    //               //     style: TextStyle(color: Colors.white)),
    //               onTap: () => {},
    //             ),
    //           ),
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.pets,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Decorations",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text('dEMO tEXT',
    //               //     style: TextStyle(color: Colors.white)),
    //               onTap: () => {},
    //             ),
    //           ),
    //           InkWell(
    //             child: ListTile(
    //               leading: const Icon(
    //                 Icons.account_box,
    //                 size: 35,
    //                 color: Color.fromARGB(255, 9, 124, 13),
    //               ),
    //               title: const Text(
    //                 "Account",
    //                 style: TextStyle(
    //                   fontSize: 25,
    //                   fontWeight: FontWeight.w600,
    //                   color: Color.fromARGB(255, 9, 124, 13),
    //                 ),
    //               ),
    //               // subtitle: const Text('dEMO tEXT',
    //               //     style: TextStyle(color: Colors.white)),
    //               onTap: () => {},
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget likeSearch(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      // color: Colors.amber,
      margin: const EdgeInsets.fromLTRB(13, 20, 13, 20),
      // padding: const EdgeInsets.only(top:20, bottom: ),
      // color:Colors.grey[200],
      decoration: BoxDecoration(
        color: Colors.grey[100],
        // border: Border.all(
        //   color: Colors.black26,
        // ),
        borderRadius: BorderRadius.circular(8.0),
        // boxShadow: const [
        //   BoxShadow(offset: Offset(0, 10), blurRadius: 5, color: Colors.grey)
        // ],
      ),
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Search Product",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bigSlider() {
    return flowers.isNotEmpty
        ? Container(
            // color:Colors.amberAccent,
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 340,
                  autoPlay: true,
                  aspectRatio: 4 / 3,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.8,
                ),
                itemCount: flowers.length,
                itemBuilder: (context, index, realIndex) {
                  return buildImage(flowers, index);
                }),
          )
        : Column(
            children: [
              SizedBox(
                  height: 315,
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                      child: CircularProgressIndicator.adaptive())),
              const Text('Slider loading...'),
            ],
          );
  }

  Widget buildImage(List fData, int index) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () => {
            // Navigator.pushNamed(context, ProductsList.routeName),
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         ProductDetail(pId: productItems[index].pId),
            //   ),
            // ),
          },
          child: Column(
            children: [
              Container(
                height: 253,
                width: MediaQuery.of(context).size.width,
                // child: Text(fData[index].fImg),
                // decoration: const BoxDecoration(
                //   image: DecorationImage(
                //     image: ExactAssetImage('assets/images/noImagebg.png'),
                //     // fit: BoxFit.fitHeight,
                //   ),
                // ),
                child:
                    // Image.asset(
                    //   imageUrl: fData[index]['fImg'],
                    //   placeholder: (context, url) =>
                    //       const Center(child: CircularProgressIndicator()),
                    //   errorWidget: (context, url, error) => const Icon(Icons.error),
                    // ),
                    Image.asset(
                  fData[index]['pImg'],
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
              ),
              Column(children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          fData[index]['pName'],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        '\₹' + fData[index]['pPrice'],
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    fData[index]['pDescription'].toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    // textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ]),
            ],
          ),
        ),
      );

  Widget productsMiniSlider() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
      height: 220,
      child: ListView.separated(
        padding: const EdgeInsets.all(2),
        itemBuilder: (context, index) => buildCard(flowers, index),
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemCount: flowers.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget buildCard(List fItems, index) {
    return Container(
      width: 160,
      color: Colors.transparent,
      child: GestureDetector(
        onTap: () => {
          // Navigator.pushNamed(context, ProductsList.routeName),
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) =>
          //         ProductDetail(pId: productItems[index].pId),
          //   ),
          // ),
        },
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(80),
                  child:
                      // Ink.image(
                      // Image.network(fItems[index]['pImgSrc']),
                      Image.asset(
                    fItems[index]['pImg'],
                    fit: BoxFit.contain,
                    // width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
            ),
            // fItems[index]['fImg']
            // Text(fItems[index].fImg),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      fItems[index]['pName'],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Text(
                    '\₹' + fItems[index]['pPrice'],
                    style: const TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
            //   child: Text(
            //     pItems[index].pName,
            //     overflow: TextOverflow.ellipsis,
            //     style: const TextStyle(
            //         fontSize: 14,
            //         color: Colors.blueGrey,
            //         fontWeight: FontWeight.w900),
            //   ),
            // ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                fItems[index]['pDescription'],
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget animatedTextWidget(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: textChange
            ? Column(
                children: const [
                  // Text(
                  //   'Animation Head 1',
                  //   style: TextStyle(
                  //     fontSize: 22,
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.w800,
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'If you look the right way, you can see that the whole world is a garden.”– Frances Hodgson Burnett',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              )
            : Column(
                children: const [
                  // Text(
                  //   'Animation Head 2',
                  //   style: TextStyle(
                  //     fontSize: 22,
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.w800,
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Flowers are a proud assertion that a ray of beauty out values all the utilities in the world.”– Ralph Waldo Emerson',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
