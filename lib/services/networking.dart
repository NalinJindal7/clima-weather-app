import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:clima/screens/loading_screen.dart';

class NetworkHelper{

  NetworkHelper(this.url);
   final String url;

  Future getData() async {
  // var url=Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey");
    http.Response response=await http.get(Uri.parse(url));



    if(response.statusCode==200){
      String data=response.body;

      return jsonDecode(data);

    }else{
      print(response.statusCode);
    }
  }

}