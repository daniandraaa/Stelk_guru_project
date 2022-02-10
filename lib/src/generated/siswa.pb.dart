///
//  Generated code. Do not modify.
//  source: siswa.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Siswa extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Siswa', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'siswa'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nis')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'namasiswa')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nomorhp')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'foto')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jurusan')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tingkat')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kelas')
    ..hasRequiredFields = false
  ;

  Siswa._() : super();
  factory Siswa({
    $core.String? nis,
    $core.String? namasiswa,
    $core.String? nomorhp,
    $core.String? email,
    $core.String? foto,
    $core.String? jurusan,
    $core.String? tingkat,
    $core.String? kelas,
  }) {
    final _result = create();
    if (nis != null) {
      _result.nis = nis;
    }
    if (namasiswa != null) {
      _result.namasiswa = namasiswa;
    }
    if (nomorhp != null) {
      _result.nomorhp = nomorhp;
    }
    if (email != null) {
      _result.email = email;
    }
    if (foto != null) {
      _result.foto = foto;
    }
    if (jurusan != null) {
      _result.jurusan = jurusan;
    }
    if (tingkat != null) {
      _result.tingkat = tingkat;
    }
    if (kelas != null) {
      _result.kelas = kelas;
    }
    return _result;
  }
  factory Siswa.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Siswa.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Siswa clone() => Siswa()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Siswa copyWith(void Function(Siswa) updates) => super.copyWith((message) => updates(message as Siswa)) as Siswa; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Siswa create() => Siswa._();
  Siswa createEmptyInstance() => create();
  static $pb.PbList<Siswa> createRepeated() => $pb.PbList<Siswa>();
  @$core.pragma('dart2js:noInline')
  static Siswa getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Siswa>(create);
  static Siswa? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nis => $_getSZ(0);
  @$pb.TagNumber(1)
  set nis($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNis() => $_has(0);
  @$pb.TagNumber(1)
  void clearNis() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get namasiswa => $_getSZ(1);
  @$pb.TagNumber(2)
  set namasiswa($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamasiswa() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamasiswa() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get nomorhp => $_getSZ(2);
  @$pb.TagNumber(3)
  set nomorhp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNomorhp() => $_has(2);
  @$pb.TagNumber(3)
  void clearNomorhp() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get foto => $_getSZ(4);
  @$pb.TagNumber(5)
  set foto($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFoto() => $_has(4);
  @$pb.TagNumber(5)
  void clearFoto() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get jurusan => $_getSZ(5);
  @$pb.TagNumber(6)
  set jurusan($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasJurusan() => $_has(5);
  @$pb.TagNumber(6)
  void clearJurusan() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tingkat => $_getSZ(6);
  @$pb.TagNumber(7)
  set tingkat($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTingkat() => $_has(6);
  @$pb.TagNumber(7)
  void clearTingkat() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get kelas => $_getSZ(7);
  @$pb.TagNumber(8)
  set kelas($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasKelas() => $_has(7);
  @$pb.TagNumber(8)
  void clearKelas() => clearField(8);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'siswa'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

