import 'package:siswa/api_client.dart';
import 'package:siswa/service/siswa_service.dart';
import 'package:siswa/src/generated/siswa.pbgrpc.dart';

class SiswaController {

  final siswaApi = SiswaService(ApiClient().channel);

  Future<Siswa> getSiswa() async {
    try {
      final res = await siswaApi.findSiswa();
      return res;
    } catch (e) {
      rethrow;
    }
  }
  
}