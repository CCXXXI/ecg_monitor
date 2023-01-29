import "dart:ffi";
import "dart:io";

import "package:ffi/ffi.dart";

final DynamicLibrary _lib = Platform.isAndroid
    ? DynamicLibrary.open("libecg_model.so")
    : DynamicLibrary.process();

// region forward
typedef _ForwardArgmaxNative = Void Function(
  Pointer<Double> data,
  Int32 size,
  Pointer<Uint8> out,
);
typedef _ForwardArgmax = void Function(
  Pointer<Double> data,
  int size,
  Pointer<Uint8> out,
);

final _ForwardArgmax _forwardArgmax = _lib
    .lookup<NativeFunction<_ForwardArgmaxNative>>("forward_argmax")
    .asFunction();

List<int> forward(List<double> data) {
  final outPtr = malloc<Uint8>(data.length);
  final dataPtr = malloc<Double>(data.length);
  dataPtr.asTypedList(data.length).setAll(0, data);

  _forwardArgmax(dataPtr, data.length, outPtr);
  final result = outPtr.asTypedList(data.length).toList(growable: false);

  malloc.free(outPtr);
  malloc.free(dataPtr);

  return result;
}
// endregion
