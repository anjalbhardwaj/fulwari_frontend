import 'package:flutter/cupertino.dart';
import 'package:pushp/provider/authProvider.dart';
import 'package:pushp/screens/signinsignup/signup/signup.dart';

class AuthModel extends ChangeNotifier {
  AuthProvider? _authProvider = AuthProvider();
  // AuthModel? _authModel = AuthModel();
  Map deviceInfo = {};
  deviceResolutionInfo(dynamic _d) {
    print('Data of data is--->');
    print(_d);
    // deviceInfo['dType'] = '';
    // deviceInfo['dOrientation'] = '';

    // notifyListeners();
  }

  signUpRequest() async {
    print('Signup model function hits here--->');
    var res = await _authProvider!.justesting();
  }
}
