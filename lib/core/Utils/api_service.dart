import 'package:dio/dio.dart';

class ApiService {

//&orderBy=newest
//&filter=free-ebooks

  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final _apiKey = 'AIzaSyAaJ4M_jqG4lkb51kEQ4vbg9sDMRA6Pcmo';
   final Dio _dio;
   ApiService({required this._dio});    

   Future<Map<String,dynamic>> get({required String endPoint})async {
    var response = await _dio.get('$_baseUrl$endPoint&key=$_apiKey');
    return response.data;

   }
}