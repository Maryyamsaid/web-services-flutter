import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:web_api/models/coin_desk.dart';
import 'package:web_api/networks/api_service.dart';
import 'package:web_api/networks/network_client.dart';

class CoinDeskProvider with ChangeNotifier {
  ApiService as = ApiService(networkClient: NetworkClient());

  CoinDesk? _coinDesk;

  CoinDesk? get cd {
    return _coinDesk;
  }

  void networkRequest() async {
    var res = await as.getCurrentPrice();
    Map<String, Object> mp = json.decode(res.toString());
    _coinDesk = CoinDesk.fromJson(mp);
    notifyListeners();
  }
}
