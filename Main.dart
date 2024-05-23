import 'dart:async';
import 'dart:convert';
import 'model/userdetail.dart';
import 'util/apiservice.dart';

Future<void> main() async {
  final String URI = "https://jsonplaceholder.typicode.com/users/11";

  late List<UserDetail>? userDetails=[];
  

  late List<dynamic> obj;

  var df = new ApiConsumer();
  try {
    //print("I am in the try..block of the Main function");

    obj = await df.fetchData(URI);
    //print(obj);
   // print("I just finished assigning the responseBody from ApiConsumer...");
  } on Exception catch (e) {
    print(e);
  }

  obj.forEach((e)=>userDetails.add(UserDetail.fromJson(e)));



userDetails.forEach((e)=>print('Name: ${e.username}\nEmail: ${e.email}\n'));

}


