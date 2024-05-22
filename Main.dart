import 'dart:async';
import 'util/apiservice.dart';

Future<void> main() async {
  final String URI = "https://jsonplaceholder.typicode.com/users";

  late List<dynamic> obj;

  var df = new ApiConsumer();
  try {
    //print("I am in the try..block of the Main function");

    obj = await df.fetchData(URI);
    print(obj);
   // print("I just finished assigning the responseBody from ApiConsumer...");
  } on Exception catch (e) {
    print(e);
  }
}


