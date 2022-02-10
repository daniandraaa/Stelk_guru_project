import 'package:grpc/grpc.dart';
import 'package:siswa/src/generated/siswa.pbgrpc.dart';

class SiswaService {
  late ServiceSiswaClient _client;
  SiswaService(ClientChannel channel) {
    _client = ServiceSiswaClient(channel);
  }

  Future<Siswa> findSiswa() async {
    try {
      final result = await _client.findsiswa(Empty());
      return result;
    } catch (e) {
      rethrow;
    }
  }
  
}