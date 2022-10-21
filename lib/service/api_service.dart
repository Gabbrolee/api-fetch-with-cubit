import 'package:api_with_cubit/constant/api_constant.dart';
import 'package:dio/dio.dart';

class ApiService{
  final Dio _dio = Dio();

  Future<Response?> getPostData() async{
    const String url = 'https://jsonplaceholder.typicode.com/posts';
    try{
    final Response? response = await _dio.get(url);
    return response;
    }catch(e){
      print("error: $e");
    }
  }

}