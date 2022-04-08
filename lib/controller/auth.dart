import 'package:flutter/cupertino.dart';

class AuthModel extends ChangeNotifier {
  Map deviceInfo = {};
  deviceResolutionInfo(dynamic _d) {
    print('Data of data is--->');
    print(_d);
    // deviceInfo['dType'] = '';
    // deviceInfo['dOrientation'] = '';

    // notifyListeners();
  }
}
