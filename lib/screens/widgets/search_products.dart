import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import './noResultFound.dart';
import '../widgets/progressbuilder.dart';
// import './../../Model/product/product_model.dart';
import './search_products.dart';
import 'package:provider/provider.dart';

import 'progressbuilder.dart';

// import 'Product/product_detail.dart';

class SearchProducts extends StatefulWidget {
  static const routeName = '/search-products';

  const SearchProducts({Key? key}) : super(key: key);

  _SearchProductScreenState createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProducts> {
  // ProductModel _productModel = ProductModel();
  // ProductModel? _prodModel;
  List searchData = [];
  bool isApiWorking = false;
  @override
  initState() {
    super.initState();
    // _prodModel = Provider.of<ProductModel>(context, listen: false);
    print('_prodModel.data is---->');
    // test();
  }

  test() async {
    // var data = await _prodModel!.SearhProducts('mugs', issearchdata: true);
    // print('data is ---->');
    // print(data);
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   _prodModel = Provider.of<ProductModel>(context, listen: false);
  //   print('_prodModel.data is---->');
  //   print(_prodModel.searchedData.length);
  //   testFun();
  // }

  onSearchTextChange(dynamic text) async {
    print('Value of Text is--->');
    setState(() {
      isApiWorking = true;
      searchData = [];
    });
    // var data;
    // if (text != null && text.length >= 3) {
    //   print(text);
    //   data = await _prodModel!.SearhProducts(text, issearchdata: true);
    //   setState(() {
    //     searchData.addAll(data);
    //     isApiWorking = false;
    //   });
    // } else {
    //   data = '';
    // }

    // print('Search data is --->');
    // print(searchData);
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer<ProductModel>(
    //   builder: (ctx, _prod, _) {
    //     //   var _d = _prodModel.searchedData;
    print('Product search data is--->');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushReplacement(
                    // MaterialPageRoute(
                    //     builder: (context) => SettingScreen()));
                    Navigator.pop(context);
                    // Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    // margin: EdgeInsets.only(left:10)
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body:
          // Consumer<ProductModel>(builder: (ctx, _prod, _) {
          //   //   var _d = _prodModel.searchedData;
          //   print('Searched data is ---->');
          //   print(_prod.searchedData);
          //   // return
          //          print('Searched data is ---->');
          // print(_prod.searchedData);
          //   return
          Column(
        children: [
          // SearchBar(),
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
                  onChanged: (value) => onSearchTextChange(value),
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
                    hintText: 'Search Products',
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
          isApiWorking == false
              ? Flexible(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: searchData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                          color: Colors.transparent,
                          child: Center(
                              child: Row(
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24)),
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: Image.network(
                                    searchData[index].pImgSrc.toString(),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 15),
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: Column(
                                    children: [
                                      Text(
                                        searchData[index].pName.toString(),
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        searchData[index].pPrice.toString(),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                        );
                      }),
                )
              : BuildProgressIndicator(),
        ],
      ),
    );
    //   },
    // );
  }
}
