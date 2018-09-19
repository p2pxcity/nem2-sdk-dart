
class TransactionType {
  final _value;
  const TransactionType._internal(this._value);
  toString() => 'TransactionType.$_value';

  static const TRANSFER = const TransactionType._internal(0x4154);


  static rawValueOf(int value) {
    switch (value) {
      case 0x4154:
        return TRANSFER;
      default:
        throw new ArgumentError(value.toString() + 'is not a valid value');
    }
  }
}