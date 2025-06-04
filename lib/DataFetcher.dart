import 'package:dio/dio.dart';
import 'DioProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';

final dataFetcherProvider = Provider<DataFetcher>((ref) {
  var dio = ref.watch(dioProvider);
  return DataFetcher(dio:dio);
});

class DataFetcher{
  DataFetcher({required this.dio});
  final Dio dio;

  Future<Map<String, dynamic>> get(String request) async{
    final url = 'https://pokeapi.co/api/v2/$request';

    try {
      final response = await dio.get(url);
      final data = response.data as Map<String, dynamic>;

      return data;
    } catch (e) {
      throw Exception('Erreur pendant la requete : $e');
    }
  }
}