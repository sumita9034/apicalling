import 'package:http/http.dart' as http;

import '../models/datalist.dart';

var base = "https://dummyjson.com";
getPsts() async {
  Uri url = Uri.parse("$base/products");
  var res = await http.get(url);
  try {
    if (res.statusCode == 200) {
      var data = welcomeFromJson(res.body);
      return data.products;
    }
    else {
      print("error during");
    }
  }
  catch (e){
    print(e.toString());
  }

}
