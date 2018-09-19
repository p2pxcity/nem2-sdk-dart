
import 'dart:convert';

class TransactionAnnounceResponse {
  final String _message;

  TransactionAnnounceResponse(this._message);

  String get message => _message;

  static TransactionAnnounceResponse fromJson(String jsonString) {
    Map<String, dynamic> jsonObject = json.decode(jsonString);
    return new TransactionAnnounceResponse(jsonObject['message']);
  }
}

class TransactionAnnounceRequest {
  final String _payload;

  TransactionAnnounceRequest(this._payload);

  String get payload => _payload;

  String toJson() {
    return json.encode({
      'payload': _payload
    });
  }
}