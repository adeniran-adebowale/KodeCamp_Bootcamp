import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class Datafetcher<T>{






Future<T> fetchData(String url); 









}