import "dart:ffi";
import "dart:io";

import "package:ffi/ffi.dart";
import "package:flutter/services.dart";
import "package:path/path.dart";
import "package:path_provider/path_provider.dart";

final _lib = Platform.isAndroid
    ? DynamicLibrary.open("libecg_model.so")
    : DynamicLibrary.process();

// region load model
final void Function(Pointer<Utf8> path) _loadModelNative = _lib
    .lookup<NativeFunction<Void Function(Pointer<Utf8> path)>>("load_model")
    .asFunction();

Future<void> loadModel() async {
  // copy model.pt from assets to app support directory
  final data = await rootBundle.load("assets/model.pt");
  final dir = await getApplicationSupportDirectory();
  final path = join(dir.path, "model.pt");
  await File(path).writeAsBytes(data.buffer.asUint8List());

  // load model
  final pathPtr = path.toNativeUtf8();
  _loadModelNative(pathPtr);
  malloc.free(pathPtr);
}
// endregion

// region forward
final void Function(Pointer<Double>, int, Pointer<Uint8>) _forwardArgmax = _lib
    .lookup<
        NativeFunction<
            Void Function(
      Pointer<Double>,
      Int32,
      Pointer<Uint8>,
    )>>("forward_argmax")
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
