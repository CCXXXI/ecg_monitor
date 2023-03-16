import "package:dio/dio.dart";
import "package:pretty_dio_logger/pretty_dio_logger.dart";
import "package:sentry_dio/sentry_dio.dart";

final dio = Dio()
  ..interceptors.add(PrettyDioLogger())
  ..addSentry();
