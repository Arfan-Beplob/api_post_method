import 'dart:convert';

import 'package:api_post_method/views/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;

class UserProvider extends ChangeNotifier{
final baseUrl = 'https://jsonplaceholder.typicode.com/posts';


Future<void> postData ()async{
await _ragisterUser();
}

Future<void> _ragisterUser()async{
try
    {
      final url = Uri.parse(baseUrl);
      var data = {
        "title":nameControler.text,
        "body":passwordControler.text
      };
      final body = jsonEncode(data);
      final response = await http.post(url,
          body: body, headers: {"Content-type": "incapacitation/json"});
      final json = jsonDecode(response.body);
      if(response.statusCode == 200||response.statusCode ==201){
        notifyListeners();
        print("New User Create Success $json StatusCode : ${response.statusCode}");
      }

    }catch(error){}
}


}