import "package:dio/dio.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";

final dio = Dio()..interceptors.add(PrettyDioLogger());
