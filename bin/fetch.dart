import 'package:dio/dio.dart';

Future<void> main() async { // ubakyt aluuchu metod
final dio = Dio(); // dio - data aluuchu paket
final responce = await dio.get('https://jsonplaceholder.typicode.com/posts');// Datany kutuu
print(responce);
}