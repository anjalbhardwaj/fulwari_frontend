import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  String hintText = 'Filter';
  dynamic _selectedType;

  List productList = [
    {
      'pId': '01101',
      'pType': 'flower',
      'pImg':
          'https://cdn.igp.com/f_auto,q_auto,t_pnopt14prodlp/products/p-beautiful-assorted-gerberas-94058-m.jpg',
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
      'pImg':
          'https://imgcdn.floweraura.com/book-flowers-online-fanw02-pla-gen-A.jpg',
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
      'pImg':
          'https://www.fnp.com/images/pr/l/v20200910193653/asiatic-lilies-red-roses-cane-basket-arrangement_1.jpg',
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
      'pImg':
          'https://www.fnp.com/images/pr/l/v20170324184821/floral-heartshaped-arrangement_1.jpg',
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
      'pImg':
          'https://cdn.igp.com/f_auto,q_auto,t_pnopt5prodlp/products/p-blue-beauty-flower-box-139964-m.jpg',
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
      'pImg':
          'https://www.indiagift.in/media/images/product/201812281545971439.jpg',
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
      'pImg':
          'https://sf.tac-cdn.net/images/products/large/BF224-11K.jpg?auto=webp&quality=80',
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
      'pImg':
          'https://www.hyderabadgiftsdelivery.com/uploads/products/319311512634854.jpg',
      'pName': 'Sunflower',
      'pPrice': '30',
      'pAvailable': true,
      'pColor': 'Red',
      'pDescription':
          'This is best rose from North India, with herbal advantages.'
    }
  ];
  @override
  void initState() {
    super.initState();
    print('Data to print');
    print(productList);
  }

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
            children: <Widget>[
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: DropdownButton(
                  underline: const DropdownButtonHideUnderline(
                      child: SizedBox.shrink()),
                  isExpanded: true,
                  iconEnabledColor: Colors.white,
                  hint: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4.8,
                      // color: Colors.blueAccent,
                      margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Text(
                              hintText,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            IconButton(
                              onPressed: () => {},
                              icon: const Icon(Icons.keyboard_arrow_down,
                                  size: 25),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            child: _selectedType == 1
                                ? const Icon(Icons.circle, size: 17)
                                : const SizedBox.shrink(),
                          ),
                          const Text(
                            "Suggested",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            child: _selectedType == 2
                                ? const Icon(Icons.circle, size: 17)
                                : const SizedBox.shrink(),
                          ),
                          const Text(
                            "New Products",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            child: _selectedType == 3
                                ? const Icon(Icons.circle, size: 17)
                                : const SizedBox.shrink(),
                          ),
                          const Text(
                            "On Boom",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            child: _selectedType == 4
                                ? const Icon(Icons.circle, size: 17)
                                : const SizedBox.shrink(),
                          ),
                          const Text(
                            "Price:Low to High",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      value: 4,
                    ),
                    DropdownMenuItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 30,
                            child: _selectedType == 5
                                ? const Icon(Icons.circle, size: 17)
                                : const SizedBox.shrink(),
                          ),
                          const Text(
                            "Price: Hight to Low",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'SourceSansPro',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      value: 5,
                    ),
                  ],
                  onChanged: (value) => {
                    setState(
                      () {
                        _selectedType = value;
                        //  _groupChatModelData.chatRecord[widget.index].groupPrice = '0';
                      },
                    )
                  },
                ),
              ),
              productList.isNotEmpty
                  ? Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          mainAxisExtent: 320,
                        ),
                        itemCount: productList.length,
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
                                        imageUrl: productList[index]['pImg'],
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
                                                      productList[index],
                                                      productList,
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
                                                    productList[index]['pName']
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
                                            child: productList[index]['pPrice']
                                                        .toString() !=
                                                    ''
                                                ? Text(
                                                    '\$' +
                                                        productList[index]
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
