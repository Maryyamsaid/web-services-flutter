import 'package:dio/dio.dart';

import 'network_client.dart';

class ApiService {
  final NetworkClient networkClient;

  ApiService({required this.networkClient});

  Future<Response> getCurrentPrice() {
    return networkClient.get('v1/bpi/currentprice.json', {});
  }
  // Future<Response> getPrayerTiming(
  //     int timeStamp, Map<String, Object> params) async {
  //   return await networkClient.get('/$timeStamp', params);
  // }

}
