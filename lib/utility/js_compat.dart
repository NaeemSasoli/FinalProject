@JS()
library;

import 'package:js/js.dart';

@JS('Promise')
class PromiseJsImpl<T> {
  external PromiseJsImpl(void Function(void Function(T result) resolve, void Function(dynamic error) reject) executor);
  
  @JS('then')
  external PromiseJsImpl then(void Function(T result) onFulfilled, [void Function(dynamic error) onRejected]);
}

@JS('Object')
class ObjectJsImpl {
  external factory ObjectJsImpl();
}

@JS('Array')
class ArrayJsImpl {
  external factory ArrayJsImpl();
}