
class NetWorkType
{
  final _value;
  const NetWorkType._internal(this._value);
  toString() => 'NetWorkType.$_value';

  static const MAIN_NET = const NetWorkType._internal(104);
  static const TEST_NET = const NetWorkType._internal(152);
  static const MIJIN = const NetWorkType._internal(96);
  static const MIJIN_TEST = const NetWorkType._internal(144);

  static rawValueOf(int value) {
    switch (value) {
      case 104:
        return MAIN_NET;
      case 152:
        return TEST_NET;
      case 96:
        return MIJIN;
      case 144:
        return MIJIN_TEST;
      default:
        throw new ArgumentError(value.toString() + 'is not a valid value');
    }
  }
}