///
//  Generated code. Do not modify.
//  source: siswa.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'siswa.pb.dart' as $0;
export 'siswa.pb.dart';

class ServiceSiswaClient extends $grpc.Client {
  static final _$findsiswa = $grpc.ClientMethod<$0.Empty, $0.Siswa>(
      '/siswa.ServiceSiswa/findsiswa',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Siswa.fromBuffer(value));

  ServiceSiswaClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Siswa> findsiswa($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$findsiswa, request, options: options);
  }
}

abstract class ServiceSiswaServiceBase extends $grpc.Service {
  $core.String get $name => 'siswa.ServiceSiswa';

  ServiceSiswaServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Siswa>(
        'findsiswa',
        findsiswa_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Siswa value) => value.writeToBuffer()));
  }

  $async.Future<$0.Siswa> findsiswa_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return findsiswa(call, await request);
  }

  $async.Future<$0.Siswa> findsiswa($grpc.ServiceCall call, $0.Empty request);
}
