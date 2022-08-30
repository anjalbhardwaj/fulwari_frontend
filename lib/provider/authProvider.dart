// import 'package:global_configuration/global_configuration.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import './../config/app_settings.dart';

class AuthProvider {
  // final String apiUrl = GlobalConfiguration().getValue('api_url');
  dynamic apiUrl = appSettings;
  justesting() async {
    print('Signup provider function hits here--->');
    print('Just Testing');
    print(apiUrl['localBaseUrl']);
    try {
      // var url = Uri.parse("${apiUrl['localBaseUrl']}login");
      var url1 = "http://192.168.1.5:3000/login";
      print('Testing the api--->');
      print(url1);
      var response = await http.get(Uri.parse(url1));
      if (response.statusCode == 200) {
        print(response);
        print(jsonDecode(response.body));
      } else {
        print('error in the else part');
      }
      print('Api response--->');
      print(response);
    } catch (error) {
      print('error thrown');
      print(error);
    }
  }
}
