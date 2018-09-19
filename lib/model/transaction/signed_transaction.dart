
import 'package:nem2_sdk/model/transaction/transaction_type.dart';

class SignedTransaction {
  final String _payload;
  final String _hash;
  final TransactionType _type;

  SignedTransaction(this._payload, this._hash, this._type);

  String get payload => _payload;
  String get hash => _hash;
  TransactionType get type => _type;
}