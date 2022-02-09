import 'package:flutter/material.dart';
import 'package:siswa/detailforum.dart';
import 'package:siswa/detailguru.dart';
import 'package:siswa/page/agama_mapel.dart';
import 'package:siswa/page/aij_mapel_page.dart';
import 'package:siswa/page/asjar_mapel_page.dart';
import 'package:siswa/page/bab1_agama.dart';
import 'package:siswa/page/bab1_aij.dart';
import 'package:siswa/page/bab1_asjar.dart';
import 'package:siswa/page/bab1_bindo.dart';
import 'package:siswa/page/bab1_binggris.dart';
import 'package:siswa/page/bab1_bk.dart';
import 'package:siswa/page/bab1_mtk.dart';
import 'package:siswa/page/bab1_penjas.dart';
import 'package:siswa/page/bab1_pkn.dart';
import 'package:siswa/page/bab1_pkwu.dart';
import 'package:siswa/page/bab1_tlj.dart';
import 'package:siswa/page/bab1_wan.dart';
import 'package:siswa/page/bab1a_riha_aij.dart';
import 'package:siswa/page/bab2_agama.dart';
import 'package:siswa/page/bab2_aij.dart';
import 'package:siswa/page/bab2_asjar.dart';
import 'package:siswa/page/bab2_bindo.dart';
import 'package:siswa/page/bab2_binggris.dart';
import 'package:siswa/page/bab2_bk.dart';
import 'package:siswa/page/bab2_mtk.dart';
import 'package:siswa/page/bab2_penjas.dart';
import 'package:siswa/page/bab2_pkn.dart';
import 'package:siswa/page/bab2_pkwu.dart';
import 'package:siswa/page/bab2_tlj.dart';
import 'package:siswa/page/bab2_wan.dart';
import 'package:siswa/page/bahasa_indonesia_mapel.dart';
import 'package:siswa/page/bahasa_inggris_mapel.dart';
import 'package:siswa/page/bantuan.dart';
import 'package:siswa/page/bertanya_forum_page.dart';
import 'package:siswa/page/bk_mapel.dart';
import 'package:siswa/page/forum_page.dart';
import 'package:siswa/page/guru_page.dart';
import 'package:siswa/page/kebijakanprivasi.dart';
import 'package:siswa/page/kelasku_page.dart';
import 'package:siswa/page/komentar_page.dart';
import 'package:siswa/page/laporan1_aij.dart';
import 'package:siswa/page/login_page.dart';
import 'package:siswa/page/matematika_mapel.dart';
import 'package:siswa/page/modul1aij.dart';
import 'package:siswa/page/pemberitahuan.dart';
import 'package:siswa/page/penjas_mapel_page.dart';
import 'package:siswa/page/pkn_mapel.dart';
import 'package:siswa/page/pkwu_mapel_page.dart';
import 'package:siswa/page/prestasi_page.dart';
import 'package:siswa/page/rpl_forum_page.dart';
import 'package:siswa/page/syaratdanketentuan.dart';
import 'package:siswa/page/tambah_bab.dart';
import 'package:siswa/page/tambahmodulbaru.dart';
import 'package:siswa/page/tel_forum_page.dart';
import 'package:siswa/page/tentang_kami.dart';
import 'package:siswa/page/tja_forum_page.dart';
import 'package:siswa/page/tkj_forum_page.dart';
import 'package:siswa/page/tlj_mapel_page.dart';
import 'package:siswa/page/tugasbab1binggris.dart';
import 'package:siswa/page/upw_forum_page.dart';
import 'package:siswa/page/wan_mapel_page.dart';

class Routes {
  static const String kelasku = '/kelasku';
  static const String detailguru = '/detailguru';
  static const String detailforum = '/detailforum';
  static const String forum = '/forum';
  static const String guru = '/guru';
  static const String prestasi = '/prestasi';
  static const String binggrismapelpage = '/binggrismapelpage';
  static const String bindomapelpage = '/bindomapelpage';
  static const String mtkmapelpage = '/mtkmapelpage';
  static const String pknmapelpage = '/pknmapelpage';
  static const String agamamapelpage = '/agamamapelpage';
  static const String penjasmapelpage = '/penjasmapelpage';
  static const String aijmapelpage = '/aijmapelpage';
  static const String bkmapelpage = '/bkmapelpage';
  static const String wanmapelpage = '/wanmapelpage';
  static const String pkwumapelpage = '/pkwumapelpage';
  static const String tljmapelpage = '/tljmapelpage';
  static const String asjarmapelpage = '/asjarmapelpage';
  static const String guru1nurhayati = '/guru1nurhayati';
  static const String guru2besse = '/guru2besse';
  static const String guru3chaerunnisa = '/guru3chaerunnisa';
  static const String guru4matius = '/guru4matius';
  static const String guru5bakri = '/guru5bakri';
  static const String guru6suardi = '/guru6suardi';
  static const String guru7nurfadhilah = '/guru7nurfadhilah';
  static const String guru8abuali = '/guru8abuali';
  static const String guru9ahwan = '/guru9ahwan';
  static const String guru10asrul = '/guru10asrul';
  static const String guru11sri = '/guru11sri';
  static const String guru12raodatul = '/guru12raodatul';
  static const String guru13suharyuni = '/guru13suharyuni';

  static const String bab1binggris = '/bab1binggris';
  static const String bab2binggris = '/bab2binggris';
  static const String bab1bindo = '/bab1bindo';
  static const String bab2bindo = '/bab2bindo';
  static const String bab1mtk = '/bab1mtk';
  static const String bab2mtk = '/bab2mtk';
  static const String bab1pkn = '/bab1pkn';
  static const String bab2pkn = '/bab2pkn';
  static const String bab1agama = '/bab1agama';
  static const String bab2agama = '/bab2agama';
  static const String bab1penjas = '/bab1penjas';
  static const String bab2penjas = '/bab2penjas';
  static const String bab1aij = '/bab1aij';
  static const String bab2aij = '/bab2aij';
  static const String bab1bk = '/bab1bk';
  static const String bab2bk = '/bab2bk';
  static const String bab1wan = '/bab1wan';
  static const String bab2wan = '/bab2wan';
  static const String bab1pkwu = '/bab1pkwu';
  static const String bab2pkwu = '/bab2pkwu';
  static const String bab1tlj = '/bab1tlj';
  static const String bab2tlj = '/bab2tlj';
  static const String bab1asjar = '/bab1asjar';
  static const String bab2asjar = '/bab2asjar';
  static const String uploadtugas = '/uploadtugas';
  static const String rplforumpage = '/rplforumpage';
  static const String tkjforumpage = '/tkjforumpage';
  static const String tjaforumpage = '/tjaforumpage';
  static const String telforumpage = '/telforumpage';
  static const String upwforumpage = '/upwforumpage';
  static const String komentarpage = '/komentarpage';
  static const String bertanyaforumpage = '/bertanyafotumpage';
  static const String pemberitahuan = '/pemberitahuan';
  static const String syaratdanketentuan = '/syaratdanketentuan';
  static const String kebijakanprivasi = '/kebijakanprivasi';
  static const String bantuan = '/bantuan';
  static const String tentangkami = '/tentangkami';
  static const String loginpage = '/loginpage';
  static const String modul1aij = '/modul1aij';
  static const String tambahbab = '/tambahbab';
  static const String laporan1aij = '/laporan1aij';
  static const String bab1modulariha = 'bab1modulariha';
  static const String tugasbab1binggris = '/tugasbab1binggris';
  static const String tambahmodulbaru = '/tambahmodulbaru';

  static var args;

  static MaterialPageRoute pageRoute(Widget child) {
    return MaterialPageRoute(
      builder: (context) => child,
    );
  }

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kelasku:
        return pageRoute(const KelaskuPage());

        case detailguru: 
      final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
            return pageRoute(PageDetailguru(mapel: args['mapel'], namaLengkap: args['namaLengkap'], profil: args['profil'], image: args['image'], hubungi: args['hubungi'],));

   case detailforum: 
      final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
            return pageRoute(PageDetailForum(caption1: args['caption1'], caption2: args['caption2'], imagebanner: args['imagebanner'], nama1: args['nama1'], nama2: args['nama2'], guru: args['guru'], title: args['title'], captionguru: args['captionguru'], judulcaptionguru: args['judulcaptionguru'], profil1: args['profil1'], profil2: args['profil2'], profilguru: args['profilguru']));


      case forum:
        return pageRoute(const ForumPage());

      case guru:
        return pageRoute(const GuruPage());

      case prestasi:
        return pageRoute(const PrestasiPage());

      case binggrismapelpage:
        return pageRoute(const BinggrisMapelPage());

      case bindomapelpage:
        return pageRoute(const BindoMapelPage());

      case mtkmapelpage:
        return pageRoute(const MTKMapelPage());

      case pknmapelpage:
        return pageRoute(const PKNMapelPage());

      case agamamapelpage:
        return pageRoute(const AgamaMapelPage());

      case penjasmapelpage:
        return pageRoute(const PenjasMapelPage());

      case aijmapelpage:
        return pageRoute(const AIJMapelPage());

      case bkmapelpage:
        return pageRoute(const BkMapelPage());

      case wanmapelpage:
        return pageRoute(const WanMapelPage());

      case pkwumapelpage:
        return pageRoute(const PkwuMapelPage());

      case tljmapelpage:
        return pageRoute(const TljMapelPage());

      case asjarmapelpage:
        return pageRoute(const AsjarMapelPage());

      // case bab1binggris:
      //   final args = settings.arguments as Map;
      //   return pageRoute(
      //     const Bab1BinggrisPage(playerController: args['controller']),
      //   );

      case tambahbab:
        return pageRoute(const TambahBab());

      case bab2binggris:
        final args = settings.arguments as Map;

        return pageRoute(Bab2BinggrisPage(
          playerController: args['controller'],
        ));

      case bab1bindo:
        final args = settings.arguments as Map;

        return pageRoute(Bab1BindoPage(
          playerController: args['controller'],
        ));

      case bab2bindo:
        final args = settings.arguments as Map;

        return pageRoute(Bab2BindoPage(
          playerController: args['controller'],
        ));

      case bab1mtk:
        final args = settings.arguments as Map;

        return pageRoute(Bab1MtkPage(
          playerController: args['controller'],
        ));

      case bab2mtk:
        final args = settings.arguments as Map;

        return pageRoute(Bab2MtkPage(
          playerController: args['controller'],
        ));

      case bab1pkn:
        final args = settings.arguments as Map;

        return pageRoute(Bab1PknPage(
          playerController: args['controller'],
        ));

      case bab2pkn:
        final args = settings.arguments as Map;

        return pageRoute(Bab2PknPage(
          playerController: args['controller'],
        ));

      case bab1agama:
        final args = settings.arguments as Map;

        return pageRoute(Bab1AgamaPage(
          playerController: args['controller'],
        ));

      case bab2agama:
        final args = settings.arguments as Map;

        return pageRoute(Bab2AgamaPage(
          playerController: args['controller'],
        ));

      case bab1penjas:
        final args = settings.arguments as Map;

        return pageRoute(Bab1PenjasPage(
          playerController: args['controller'],
        ));

      case bab2penjas:
        final args = settings.arguments as Map;

        return pageRoute(Bab2PenjasPage(
          playerController: args['controller'],
        ));

      case bab1aij:
        return pageRoute(
          const Bab1AijPage(),
        );

      case bab2aij:
        final args = settings.arguments as Map;

        return pageRoute(Bab2AijPage(
          playerController: args['controller'],
        ));

      case bab1bk:
        final args = settings.arguments as Map;

        return pageRoute(Bab1BkPage(
          playerController: args['controller'],
        ));

      case bab2bk:
        final args = settings.arguments as Map;

        return pageRoute(Bab2BkPage(
          playerController: args['controller'],
        ));

      case bab1wan:
        final args = settings.arguments as Map;

        return pageRoute(Bab1WanPage(
          playerController: args['controller'],
        ));

      case bab2wan:
        final args = settings.arguments as Map;

        return pageRoute(Bab2WanPage(
          playerController: args['controller'],
        ));

      case bab1pkwu:
        final args = settings.arguments as Map;

        return pageRoute(Bab1PkwuPage(
          playerController: args['controller'],
        ));

      case bab2pkwu:
        final args = settings.arguments as Map;

        return pageRoute(Bab2PkwuPage(
          playerController: args['controller'],
        ));

      case bab1tlj:
        final args = settings.arguments as Map;

        return pageRoute(Bab1TljPage(
          playerController: args['controller'],
        ));

      case bab2tlj:
        final args = settings.arguments as Map;

        return pageRoute(Bab2TljPage(
          playerController: args['controller'],
        ));

      case bab1asjar:
        final args = settings.arguments as Map;

        return pageRoute(Bab1AsjarPage(
          playerController: args['controller'],
        ));

      case bab2asjar:
        final args = settings.arguments as Map;

        return pageRoute(Bab2AsjarPage(
          playerController: args['controller'],
        ));

      case uploadtugas:
        return pageRoute(const TugasBab1Binggris());

      case rplforumpage:
        return pageRoute(const RplForumPage());

      case tkjforumpage:
        return pageRoute(const TkjForumPage());

      case tjaforumpage:
        return pageRoute(const TjaForumPage());

      case telforumpage:
        return pageRoute(const TelForumPage());

      case upwforumpage:
        return pageRoute(const UpwForumPage());

      case komentarpage:
        return pageRoute(const KomentarPage());

      case bertanyaforumpage:
        return pageRoute(const BertanyaForumPage());

      case pemberitahuan:
        return pageRoute(const PemberitahuanPage());

      case syaratdanketentuan:
        return pageRoute(const SDK());

      case kebijakanprivasi:
        return pageRoute(const KebijakanPrivasi());

      case bantuan:
        return pageRoute(const BantuanPage());

      case tentangkami:
        return pageRoute(const TentangKamiPage());

      case loginpage:
        return pageRoute(const LoginPage());

      case modul1aij:
        return pageRoute(const Modul1Aij());

      case laporan1aij:
        return pageRoute(const Laporan1Aij());

      case bab1modulariha:
        return pageRoute(const Bab1ModulARihaAij());

      case tugasbab1binggris:
        return pageRoute(TugasBab1Binggris());

      case tambahmodulbaru:
        return pageRoute(TambahMobulBaru());

      default:
        return pageRoute(const Scaffold(
          body: Center(
            child: Text('tidak ada halaman'),
          ),
        ));
    }
  }
}
