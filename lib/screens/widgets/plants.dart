import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'search_products.dart';

class PlantsList extends StatefulWidget {
  const PlantsList({Key? key}) : super(key: key);
  @override
  _PlantsListState createState() => _PlantsListState();
}

class _PlantsListState extends State<PlantsList> {
  List plantsList = [
    {
      'pId': '01101',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/m/o/monsteradeliciosa_45_1.png',
      'pName': 'Monstera Deliciosa Plant - XL',
      'pPrice': '29',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01102',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/c/r/crotonpetra_45_1.png',
      'pName': 'Croton Petra',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01103',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/a/g/aglaonemared_45_1.png',
      'pName': 'Aglaonema Red Plant',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01104',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/a/g/aglaonemapearlaugupdate_45.png',
      'pName': 'Aglaonema Pearl',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01105',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/p/h/philodendronbirkinmedium_45.png',
      'pName': 'Philodendron Birkin Plant - Medium',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01106',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/f/i/ficus_eyelevel_1.png',
      'pName': 'Netted Ficus Tree',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'The Ficus benjamina is a true survivor in the word of houseplants and this braided variety adds to its beauty. Carefully hand braided and grown with care to give you an intricate shape that is extremely eye catching. Excellent as an indoor as well as an outdoor plant for balconies and patios, a braided ficus is the conversation starter your home garden needs. Not only a thing of beauty, it also cleans the air in your home.'
    },
    {
      'pId': '01107',
      'pType': 'plant',
      'pImg':
          'https://media.ugaoo.com/catalog/product/cache/81d2f56800d33f099d2b369affd8e374/s/e/sedumgolden_45.png',
      'pName': 'Sedum Golden With Hanging Pot',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    },
    {
      'pId': '01108',
      'pType': 'plant',
      'pImg':
          'https://rukminim1.flixcart.com/image/416/416/kfvfwy80/plant-seed/q/t/n/25-imp-553-dark-green-european-rose-bush-seeds-vibex-original-imafw8k2vgu4z5j4.jpeg?q=70',
      'pName': 'Greenursery Rose Plant',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'Plant House Live White Rose Bonsai Flower Indoor Outdoor Decorative Plant - 1 Live Bonsai Plant'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: Container(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      enabled: true,
                      readOnly: false,
                      textAlign: TextAlign.center,
                      onChanged: (value) => {
                        // onSearchTextChange(value)
                      },
                      // decoration: const InputDecoration(
                      //   border: InputBorder.none,
                      //   focusedBorder: InputBorder.none,
                      //   enabledBorder: InputBorder.none,
                      //   errorBorder: InputBorder.none,
                      //   disabledBorder: InputBorder.none,
                      //   hintText: "Search Product",
                      //   hintStyle: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.w400),
                      // ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'Search Plants',
                        //hintStyle: TextStyle(fontSize: 15),
                        contentPadding: EdgeInsets.all(8),
                        // border: OutlineInputBorder(),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //     color: Colors.transparent,
                        //     style: BorderStyle.solid,
                        //     width: 1,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
              plantsList.isNotEmpty
                  ? Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          mainAxisExtent: 320,
                        ),
                        itemCount: plantsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              // height: MediaQuery.of(context).size.height / 4,
                              // color: Colors.amberAccent,
                              child: Card(
                                elevation: 0,
                                child: Column(
                                  children: [
                                    Center(
                                      child: CachedNetworkImage(
                                        imageUrl: plantsList[index]['pImg'],
                                        height: 200,
                                        placeholder: (context, url) =>
                                            const Center(
                                                child:
                                                    CircularProgressIndicator()),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                      ),
                                      //     Image.asset(
                                      //   productList[index]['pImg'].toString(),
                                      //   width:
                                      //       MediaQuery.of(context).size.width,
                                      //   height:
                                      //       MediaQuery.of(context).size.height /
                                      //           3,
                                      // ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2 -
                                              17,
                                          height: 35,
                                          padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2 -
                                                  170),
                                          color: Colors.green,
                                          child: GestureDetector(
                                            onTap: () {
                                              showModalBottomSheet<void>(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return bottomPopupBar(
                                                      plantsList[index],
                                                      plantsList,
                                                      index);
                                                },
                                              );
                                            },
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 20,
                                                ),
                                                Text(
                                                  'Quick Add',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 6),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 130,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8),
                                                  child: Text(
                                                    plantsList[index]['pName']
                                                        .toString(),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: const TextStyle(
                                                        fontSize: 13,
                                                        height: 1.2,
                                                        letterSpacing: .3,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.blueGrey),
                                                  ),
                                                ),
                                              ),
                                              const Expanded(
                                                child:
                                                    Icon(Icons.favorite_border),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: plantsList[index]['pPrice']
                                                        .toString() !=
                                                    ''
                                                ? Text(
                                                    '\$' +
                                                        plantsList[index]
                                                                ['pPrice']
                                                            .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        height: 1.2,
                                                        letterSpacing: .3,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  )
                                                : const Text(
                                                    'Free',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        height: 1.2,
                                                        letterSpacing: .3,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black),
                                                  ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  : SizedBox(
                      height: MediaQuery.of(context).size.height - 190,
                      child: const Center(
                          child: CircularProgressIndicator.adaptive()),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomPopupBar(dynamic data, productList, indexOfProduct) {
    print('Data coming for popupbar--->');
    print(data);
    print(productList);
    print(indexOfProduct);
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.82,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6.7,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4.5,
                    child: CachedNetworkImage(
                      imageUrl: data['pImg'],
                      placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                    //     Image.asset(
                    //   data[indexOfProduct]['pImg'],
                    //   width: MediaQuery.of(context).size.width,
                    //   height: MediaQuery.of(context).size.height,
                    // ),
                  ),
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 6.2,
                      child: Column(
                        children: [
                          // Text('Hello Text'),
                          ListTile(
                            // tileColor: Colors.deepPurple,
                            title: Text('\$' + data['pPrice']),
                            subtitle: Text(data['pName']),
                          ),
                          SizedBox(
                            height: 25,
                            // padding:EdgeInsets.only(bottom:10),
                            child: ButtonBar(
                              buttonPadding: const EdgeInsets.only(bottom: -2),
                              alignment: MainAxisAlignment.start,
                              // buttonMinWidth: 40,
                              buttonHeight: 25,
                              // mainAxisSize: 25,
                              children: [
                                RaisedButton(
                                  elevation: 0,
                                  hoverElevation: 0,
                                  focusElevation: 0,
                                  highlightElevation: 0,
                                  color: Colors.white,
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) =>
                                    //         ProductDetail(pId: data.pId),
                                    //   ),
                                    // );
                                  },
                                  child: const Text(
                                    "VIEW",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 8.9,
              // color:Colors.red,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.black,
                    width: .1,
                  ),
                ),
              ),
              child: Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.height / 5,
                  height: MediaQuery.of(context).size.width / 8,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.blue.withOpacity(0.04);
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed))
                            return Colors.blue.withOpacity(0.12);
                          return null; // Defer to the widget's default.
                        },
                      ),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //                 context,
                      //                 MaterialPageRoute(
                      //                   builder: (context) =>
                      //                       (const ShoppingCart()),
                      //                 ),
                      //               );
                      // productNewData.addProduct(data);
                      // //addToCart(data.pId);
                      // Navigator.pop(context);
                    },
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
