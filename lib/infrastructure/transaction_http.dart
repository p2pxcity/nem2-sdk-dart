
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:nem2_sdk/model/blockchain/network_type.dart';
import 'package:nem2_sdk/model/transaction/signed_transaction.dart';
import 'package:nem2_sdk/model/transaction/transaction_announce_messages.dart';

class TransactionHttp {
  static final String _BASE_PATH = "/transaction/";
  final String _host;
  final NetWorkType _network;
  String _base_url;

  TransactionHttp(this._host, this._network) {
    _base_url = this._host + _BASE_PATH;
  }

  Future<TransactionAnnounceResponse> announce(SignedTransaction signedTransaction) async {
    Map<String,String> headers = {
      'content-type' : 'application/json'
    };
    TransactionAnnounceRequest body =
      new TransactionAnnounceRequest(signedTransaction.payload);
    var response = await http.put(_base_url, body: body.toJson(), headers: headers);
    if (response.statusCode == 202) {
      return TransactionAnnounceResponse.fromJson(response.body);
    }
  }
}