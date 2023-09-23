//https://restcountries.com/v3.1/all?fields=name,flags`

// To parse this JSON data, do
//
//     final countryModel = countryModelFromMap(jsonString);

import 'dart:convert';

List<CountryModel> countryModelFromMap(String str) => List<CountryModel>.from(json.decode(str).map((x) => CountryModel.fromMap(x)));

String countryModelToMap(List<CountryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class CountryModel {
    Flags? flags;
    Name? name;

    CountryModel({
        this.flags,
        this.name,
    });

    factory CountryModel.fromMap(Map<String, dynamic> json) => CountryModel(
        flags: json["flags"] == null ? null : Flags.fromMap(json["flags"]),
        name: json["name"] == null ? null : Name.fromMap(json["name"]),
    );

    Map<String, dynamic> toMap() => {
        "flags": flags?.toMap(),
        "name": name?.toMap(),
    };
}

class Flags {
    String? png;
    String? svg;
    String? alt;

    Flags({
        this.png,
        this.svg,
        this.alt,
    });

    factory Flags.fromMap(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
    );

  get name => null;

    Map<String, dynamic> toMap() => {
        "png": png,
        "svg": svg,
        "alt": alt,
    };
}

class Name {
    String? common;
    String? official;
    NativeName? nativeName;

    Name({
        this.common,
        this.official,
        this.nativeName,
    });

    factory Name.fromMap(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null ? null : NativeName.fromMap(json["nativeName"]),
    );

    Map<String, dynamic> toMap() => {
        "common": common,
        "official": official,
        "nativeName": nativeName?.toMap(),
    };
}

class NativeName {
    Afr? nld;
    Afr? pap;
    Afr? zho;
    Afr? eng;
    Afr? ell;
    Afr? tur;
    Afr? por;
    Afr? pov;
    Afr? lao;
    Afr? sqi;
    Afr? ara;
    Afr? ita;
    Afr? lat;
    Afr? spa;
    Afr? fra;
    Afr? jpn;
    Afr? sag;
    Afr? dan;
    Afr? rus;
    Afr? tet;
    Afr? mri;
    Afr? nzs;
    Afr? nya;
    Afr? aze;
    Afr? srp;
    Afr? mon;
    Afr? bar;
    Afr? smo;
    Afr? dzo;
    Afr? kon;
    Afr? lin;
    Afr? fij;
    Afr? hif;
    Afr? grn;
    Afr? swe;
    Afr? tir;
    Afr? nfr;
    Afr? ind;
    Afr? ben;
    Afr? nor;
    Afr? swa;
    Afr? mlg;
    Afr? rar;
    Afr? mkd;
    Afr? nrf;
    Afr? uzb;
    Afr? mlt;
    Afr? kat;
    Afr? div;
    Afr? cal;
    Afr? cha;
    Afr? kir;
    Afr? mah;
    Afr? aym;
    Afr? que;
    Afr? nno;
    Afr? nob;
    Afr? smi;
    Afr? nau;
    Afr? hrv;
    Afr? hmo;
    Afr? tpi;
    Afr? gle;
    Afr? hye;
    Afr? kal;
    Afr? heb;
    Afr? msa;
    Afr? hun;
    Afr? glv;
    Afr? ukr;
    Afr? tsn;
    Afr? deu;
    Afr? ton;
    Afr? tha;
    Afr? ssw;
    Afr? pol;
    Afr? tkl;
    Afr? pih;
    Afr? cat;
    Afr? fil;
    Afr? slk;
    Afr? afr;
    Afr? nbl;
    Afr? nso;
    Afr? sot;
    Afr? tso;
    Afr? ven;
    Afr? xho;
    Afr? zul;
    Afr? kin;
    Afr? kaz;
    Afr? fao;
    Afr? hin;
    Afr? tam;
    Afr? isl;
    Afr? arc;
    Afr? ckb;
    Afr? ber;
    Afr? fin;
    Afr? slv;
    Afr? bul;
    Afr? jam;
    Afr? zdj;
    Afr? amh;
    Afr? est;
    Afr? vie;
    Afr? cnr;
    Afr? kor;
    Afr? ltz;
    Afr? tuk;
    Afr? pau;
    Afr? mey;
    Afr? lav;
    Afr? fas;
    Afr? mfe;
    Afr? crs;
    Afr? prs;
    Afr? pus;
    Afr? urd;
    Afr? lit;
    Afr? lua;
    Afr? tvl;
    Afr? bwg;
    Afr? kck;
    Afr? khi;
    Afr? ndc;
    Afr? nde;
    Afr? sna;
    Afr? toi;
    Afr? zib;
    Afr? bos;
    Afr? tgk;
    Afr? niu;
    Afr? ron;
    Afr? som;
    Afr? mya;
    Afr? ces;
    Afr? bel;
    Afr? nep;
    Afr? khm;
    Afr? run;
    Afr? sin;
    Afr? her;
    Afr? hgm;
    Afr? kwn;
    Afr? loz;
    Afr? ndo;
    Afr? gsw;
    Afr? roh;
    Afr? gil;
    Afr? hat;
    Afr? bis;
    Afr? bjz;

    NativeName({
        this.nld,
        this.pap,
        this.zho,
        this.eng,
        this.ell,
        this.tur,
        this.por,
        this.pov,
        this.lao,
        this.sqi,
        this.ara,
        this.ita,
        this.lat,
        this.spa,
        this.fra,
        this.jpn,
        this.sag,
        this.dan,
        this.rus,
        this.tet,
        this.mri,
        this.nzs,
        this.nya,
        this.aze,
        this.srp,
        this.mon,
        this.bar,
        this.smo,
        this.dzo,
        this.kon,
        this.lin,
        this.fij,
        this.hif,
        this.grn,
        this.swe,
        this.tir,
        this.nfr,
        this.ind,
        this.ben,
        this.nor,
        this.swa,
        this.mlg,
        this.rar,
        this.mkd,
        this.nrf,
        this.uzb,
        this.mlt,
        this.kat,
        this.div,
        this.cal,
        this.cha,
        this.kir,
        this.mah,
        this.aym,
        this.que,
        this.nno,
        this.nob,
        this.smi,
        this.nau,
        this.hrv,
        this.hmo,
        this.tpi,
        this.gle,
        this.hye,
        this.kal,
        this.heb,
        this.msa,
        this.hun,
        this.glv,
        this.ukr,
        this.tsn,
        this.deu,
        this.ton,
        this.tha,
        this.ssw,
        this.pol,
        this.tkl,
        this.pih,
        this.cat,
        this.fil,
        this.slk,
        this.afr,
        this.nbl,
        this.nso,
        this.sot,
        this.tso,
        this.ven,
        this.xho,
        this.zul,
        this.kin,
        this.kaz,
        this.fao,
        this.hin,
        this.tam,
        this.isl,
        this.arc,
        this.ckb,
        this.ber,
        this.fin,
        this.slv,
        this.bul,
        this.jam,
        this.zdj,
        this.amh,
        this.est,
        this.vie,
        this.cnr,
        this.kor,
        this.ltz,
        this.tuk,
        this.pau,
        this.mey,
        this.lav,
        this.fas,
        this.mfe,
        this.crs,
        this.prs,
        this.pus,
        this.urd,
        this.lit,
        this.lua,
        this.tvl,
        this.bwg,
        this.kck,
        this.khi,
        this.ndc,
        this.nde,
        this.sna,
        this.toi,
        this.zib,
        this.bos,
        this.tgk,
        this.niu,
        this.ron,
        this.som,
        this.mya,
        this.ces,
        this.bel,
        this.nep,
        this.khm,
        this.run,
        this.sin,
        this.her,
        this.hgm,
        this.kwn,
        this.loz,
        this.ndo,
        this.gsw,
        this.roh,
        this.gil,
        this.hat,
        this.bis,
        this.bjz,
    });

    factory NativeName.fromMap(Map<String, dynamic> json) => NativeName(
        nld: json["nld"] == null ? null : Afr.fromMap(json["nld"]),
        pap: json["pap"] == null ? null : Afr.fromMap(json["pap"]),
        zho: json["zho"] == null ? null : Afr.fromMap(json["zho"]),
        eng: json["eng"] == null ? null : Afr.fromMap(json["eng"]),
        ell: json["ell"] == null ? null : Afr.fromMap(json["ell"]),
        tur: json["tur"] == null ? null : Afr.fromMap(json["tur"]),
        por: json["por"] == null ? null : Afr.fromMap(json["por"]),
        pov: json["pov"] == null ? null : Afr.fromMap(json["pov"]),
        lao: json["lao"] == null ? null : Afr.fromMap(json["lao"]),
        sqi: json["sqi"] == null ? null : Afr.fromMap(json["sqi"]),
        ara: json["ara"] == null ? null : Afr.fromMap(json["ara"]),
        ita: json["ita"] == null ? null : Afr.fromMap(json["ita"]),
        lat: json["lat"] == null ? null : Afr.fromMap(json["lat"]),
        spa: json["spa"] == null ? null : Afr.fromMap(json["spa"]),
        fra: json["fra"] == null ? null : Afr.fromMap(json["fra"]),
        jpn: json["jpn"] == null ? null : Afr.fromMap(json["jpn"]),
        sag: json["sag"] == null ? null : Afr.fromMap(json["sag"]),
        dan: json["dan"] == null ? null : Afr.fromMap(json["dan"]),
        rus: json["rus"] == null ? null : Afr.fromMap(json["rus"]),
        tet: json["tet"] == null ? null : Afr.fromMap(json["tet"]),
        mri: json["mri"] == null ? null : Afr.fromMap(json["mri"]),
        nzs: json["nzs"] == null ? null : Afr.fromMap(json["nzs"]),
        nya: json["nya"] == null ? null : Afr.fromMap(json["nya"]),
        aze: json["aze"] == null ? null : Afr.fromMap(json["aze"]),
        srp: json["srp"] == null ? null : Afr.fromMap(json["srp"]),
        mon: json["mon"] == null ? null : Afr.fromMap(json["mon"]),
        bar: json["bar"] == null ? null : Afr.fromMap(json["bar"]),
        smo: json["smo"] == null ? null : Afr.fromMap(json["smo"]),
        dzo: json["dzo"] == null ? null : Afr.fromMap(json["dzo"]),
        kon: json["kon"] == null ? null : Afr.fromMap(json["kon"]),
        lin: json["lin"] == null ? null : Afr.fromMap(json["lin"]),
        fij: json["fij"] == null ? null : Afr.fromMap(json["fij"]),
        hif: json["hif"] == null ? null : Afr.fromMap(json["hif"]),
        grn: json["grn"] == null ? null : Afr.fromMap(json["grn"]),
        swe: json["swe"] == null ? null : Afr.fromMap(json["swe"]),
        tir: json["tir"] == null ? null : Afr.fromMap(json["tir"]),
        nfr: json["nfr"] == null ? null : Afr.fromMap(json["nfr"]),
        ind: json["ind"] == null ? null : Afr.fromMap(json["ind"]),
        ben: json["ben"] == null ? null : Afr.fromMap(json["ben"]),
        nor: json["nor"] == null ? null : Afr.fromMap(json["nor"]),
        swa: json["swa"] == null ? null : Afr.fromMap(json["swa"]),
        mlg: json["mlg"] == null ? null : Afr.fromMap(json["mlg"]),
        rar: json["rar"] == null ? null : Afr.fromMap(json["rar"]),
        mkd: json["mkd"] == null ? null : Afr.fromMap(json["mkd"]),
        nrf: json["nrf"] == null ? null : Afr.fromMap(json["nrf"]),
        uzb: json["uzb"] == null ? null : Afr.fromMap(json["uzb"]),
        mlt: json["mlt"] == null ? null : Afr.fromMap(json["mlt"]),
        kat: json["kat"] == null ? null : Afr.fromMap(json["kat"]),
        div: json["div"] == null ? null : Afr.fromMap(json["div"]),
        cal: json["cal"] == null ? null : Afr.fromMap(json["cal"]),
        cha: json["cha"] == null ? null : Afr.fromMap(json["cha"]),
        kir: json["kir"] == null ? null : Afr.fromMap(json["kir"]),
        mah: json["mah"] == null ? null : Afr.fromMap(json["mah"]),
        aym: json["aym"] == null ? null : Afr.fromMap(json["aym"]),
        que: json["que"] == null ? null : Afr.fromMap(json["que"]),
        nno: json["nno"] == null ? null : Afr.fromMap(json["nno"]),
        nob: json["nob"] == null ? null : Afr.fromMap(json["nob"]),
        smi: json["smi"] == null ? null : Afr.fromMap(json["smi"]),
        nau: json["nau"] == null ? null : Afr.fromMap(json["nau"]),
        hrv: json["hrv"] == null ? null : Afr.fromMap(json["hrv"]),
        hmo: json["hmo"] == null ? null : Afr.fromMap(json["hmo"]),
        tpi: json["tpi"] == null ? null : Afr.fromMap(json["tpi"]),
        gle: json["gle"] == null ? null : Afr.fromMap(json["gle"]),
        hye: json["hye"] == null ? null : Afr.fromMap(json["hye"]),
        kal: json["kal"] == null ? null : Afr.fromMap(json["kal"]),
        heb: json["heb"] == null ? null : Afr.fromMap(json["heb"]),
        msa: json["msa"] == null ? null : Afr.fromMap(json["msa"]),
        hun: json["hun"] == null ? null : Afr.fromMap(json["hun"]),
        glv: json["glv"] == null ? null : Afr.fromMap(json["glv"]),
        ukr: json["ukr"] == null ? null : Afr.fromMap(json["ukr"]),
        tsn: json["tsn"] == null ? null : Afr.fromMap(json["tsn"]),
        deu: json["deu"] == null ? null : Afr.fromMap(json["deu"]),
        ton: json["ton"] == null ? null : Afr.fromMap(json["ton"]),
        tha: json["tha"] == null ? null : Afr.fromMap(json["tha"]),
        ssw: json["ssw"] == null ? null : Afr.fromMap(json["ssw"]),
        pol: json["pol"] == null ? null : Afr.fromMap(json["pol"]),
        tkl: json["tkl"] == null ? null : Afr.fromMap(json["tkl"]),
        pih: json["pih"] == null ? null : Afr.fromMap(json["pih"]),
        cat: json["cat"] == null ? null : Afr.fromMap(json["cat"]),
        fil: json["fil"] == null ? null : Afr.fromMap(json["fil"]),
        slk: json["slk"] == null ? null : Afr.fromMap(json["slk"]),
        afr: json["afr"] == null ? null : Afr.fromMap(json["afr"]),
        nbl: json["nbl"] == null ? null : Afr.fromMap(json["nbl"]),
        nso: json["nso"] == null ? null : Afr.fromMap(json["nso"]),
        sot: json["sot"] == null ? null : Afr.fromMap(json["sot"]),
        tso: json["tso"] == null ? null : Afr.fromMap(json["tso"]),
        ven: json["ven"] == null ? null : Afr.fromMap(json["ven"]),
        xho: json["xho"] == null ? null : Afr.fromMap(json["xho"]),
        zul: json["zul"] == null ? null : Afr.fromMap(json["zul"]),
        kin: json["kin"] == null ? null : Afr.fromMap(json["kin"]),
        kaz: json["kaz"] == null ? null : Afr.fromMap(json["kaz"]),
        fao: json["fao"] == null ? null : Afr.fromMap(json["fao"]),
        hin: json["hin"] == null ? null : Afr.fromMap(json["hin"]),
        tam: json["tam"] == null ? null : Afr.fromMap(json["tam"]),
        isl: json["isl"] == null ? null : Afr.fromMap(json["isl"]),
        arc: json["arc"] == null ? null : Afr.fromMap(json["arc"]),
        ckb: json["ckb"] == null ? null : Afr.fromMap(json["ckb"]),
        ber: json["ber"] == null ? null : Afr.fromMap(json["ber"]),
        fin: json["fin"] == null ? null : Afr.fromMap(json["fin"]),
        slv: json["slv"] == null ? null : Afr.fromMap(json["slv"]),
        bul: json["bul"] == null ? null : Afr.fromMap(json["bul"]),
        jam: json["jam"] == null ? null : Afr.fromMap(json["jam"]),
        zdj: json["zdj"] == null ? null : Afr.fromMap(json["zdj"]),
        amh: json["amh"] == null ? null : Afr.fromMap(json["amh"]),
        est: json["est"] == null ? null : Afr.fromMap(json["est"]),
        vie: json["vie"] == null ? null : Afr.fromMap(json["vie"]),
        cnr: json["cnr"] == null ? null : Afr.fromMap(json["cnr"]),
        kor: json["kor"] == null ? null : Afr.fromMap(json["kor"]),
        ltz: json["ltz"] == null ? null : Afr.fromMap(json["ltz"]),
        tuk: json["tuk"] == null ? null : Afr.fromMap(json["tuk"]),
        pau: json["pau"] == null ? null : Afr.fromMap(json["pau"]),
        mey: json["mey"] == null ? null : Afr.fromMap(json["mey"]),
        lav: json["lav"] == null ? null : Afr.fromMap(json["lav"]),
        fas: json["fas"] == null ? null : Afr.fromMap(json["fas"]),
        mfe: json["mfe"] == null ? null : Afr.fromMap(json["mfe"]),
        crs: json["crs"] == null ? null : Afr.fromMap(json["crs"]),
        prs: json["prs"] == null ? null : Afr.fromMap(json["prs"]),
        pus: json["pus"] == null ? null : Afr.fromMap(json["pus"]),
        urd: json["urd"] == null ? null : Afr.fromMap(json["urd"]),
        lit: json["lit"] == null ? null : Afr.fromMap(json["lit"]),
        lua: json["lua"] == null ? null : Afr.fromMap(json["lua"]),
        tvl: json["tvl"] == null ? null : Afr.fromMap(json["tvl"]),
        bwg: json["bwg"] == null ? null : Afr.fromMap(json["bwg"]),
        kck: json["kck"] == null ? null : Afr.fromMap(json["kck"]),
        khi: json["khi"] == null ? null : Afr.fromMap(json["khi"]),
        ndc: json["ndc"] == null ? null : Afr.fromMap(json["ndc"]),
        nde: json["nde"] == null ? null : Afr.fromMap(json["nde"]),
        sna: json["sna"] == null ? null : Afr.fromMap(json["sna"]),
        toi: json["toi"] == null ? null : Afr.fromMap(json["toi"]),
        zib: json["zib"] == null ? null : Afr.fromMap(json["zib"]),
        bos: json["bos"] == null ? null : Afr.fromMap(json["bos"]),
        tgk: json["tgk"] == null ? null : Afr.fromMap(json["tgk"]),
        niu: json["niu"] == null ? null : Afr.fromMap(json["niu"]),
        ron: json["ron"] == null ? null : Afr.fromMap(json["ron"]),
        som: json["som"] == null ? null : Afr.fromMap(json["som"]),
        mya: json["mya"] == null ? null : Afr.fromMap(json["mya"]),
        ces: json["ces"] == null ? null : Afr.fromMap(json["ces"]),
        bel: json["bel"] == null ? null : Afr.fromMap(json["bel"]),
        nep: json["nep"] == null ? null : Afr.fromMap(json["nep"]),
        khm: json["khm"] == null ? null : Afr.fromMap(json["khm"]),
        run: json["run"] == null ? null : Afr.fromMap(json["run"]),
        sin: json["sin"] == null ? null : Afr.fromMap(json["sin"]),
        her: json["her"] == null ? null : Afr.fromMap(json["her"]),
        hgm: json["hgm"] == null ? null : Afr.fromMap(json["hgm"]),
        kwn: json["kwn"] == null ? null : Afr.fromMap(json["kwn"]),
        loz: json["loz"] == null ? null : Afr.fromMap(json["loz"]),
        ndo: json["ndo"] == null ? null : Afr.fromMap(json["ndo"]),
        gsw: json["gsw"] == null ? null : Afr.fromMap(json["gsw"]),
        roh: json["roh"] == null ? null : Afr.fromMap(json["roh"]),
        gil: json["gil"] == null ? null : Afr.fromMap(json["gil"]),
        hat: json["hat"] == null ? null : Afr.fromMap(json["hat"]),
        bis: json["bis"] == null ? null : Afr.fromMap(json["bis"]),
        bjz: json["bjz"] == null ? null : Afr.fromMap(json["bjz"]),
    );

    Map<String, dynamic> toMap() => {
        "nld": nld?.toMap(),
        "pap": pap?.toMap(),
        "zho": zho?.toMap(),
        "eng": eng?.toMap(),
        "ell": ell?.toMap(),
        "tur": tur?.toMap(),
        "por": por?.toMap(),
        "pov": pov?.toMap(),
        "lao": lao?.toMap(),
        "sqi": sqi?.toMap(),
        "ara": ara?.toMap(),
        "ita": ita?.toMap(),
        "lat": lat?.toMap(),
        "spa": spa?.toMap(),
        "fra": fra?.toMap(),
        "jpn": jpn?.toMap(),
        "sag": sag?.toMap(),
        "dan": dan?.toMap(),
        "rus": rus?.toMap(),
        "tet": tet?.toMap(),
        "mri": mri?.toMap(),
        "nzs": nzs?.toMap(),
        "nya": nya?.toMap(),
        "aze": aze?.toMap(),
        "srp": srp?.toMap(),
        "mon": mon?.toMap(),
        "bar": bar?.toMap(),
        "smo": smo?.toMap(),
        "dzo": dzo?.toMap(),
        "kon": kon?.toMap(),
        "lin": lin?.toMap(),
        "fij": fij?.toMap(),
        "hif": hif?.toMap(),
        "grn": grn?.toMap(),
        "swe": swe?.toMap(),
        "tir": tir?.toMap(),
        "nfr": nfr?.toMap(),
        "ind": ind?.toMap(),
        "ben": ben?.toMap(),
        "nor": nor?.toMap(),
        "swa": swa?.toMap(),
        "mlg": mlg?.toMap(),
        "rar": rar?.toMap(),
        "mkd": mkd?.toMap(),
        "nrf": nrf?.toMap(),
        "uzb": uzb?.toMap(),
        "mlt": mlt?.toMap(),
        "kat": kat?.toMap(),
        "div": div?.toMap(),
        "cal": cal?.toMap(),
        "cha": cha?.toMap(),
        "kir": kir?.toMap(),
        "mah": mah?.toMap(),
        "aym": aym?.toMap(),
        "que": que?.toMap(),
        "nno": nno?.toMap(),
        "nob": nob?.toMap(),
        "smi": smi?.toMap(),
        "nau": nau?.toMap(),
        "hrv": hrv?.toMap(),
        "hmo": hmo?.toMap(),
        "tpi": tpi?.toMap(),
        "gle": gle?.toMap(),
        "hye": hye?.toMap(),
        "kal": kal?.toMap(),
        "heb": heb?.toMap(),
        "msa": msa?.toMap(),
        "hun": hun?.toMap(),
        "glv": glv?.toMap(),
        "ukr": ukr?.toMap(),
        "tsn": tsn?.toMap(),
        "deu": deu?.toMap(),
        "ton": ton?.toMap(),
        "tha": tha?.toMap(),
        "ssw": ssw?.toMap(),
        "pol": pol?.toMap(),
        "tkl": tkl?.toMap(),
        "pih": pih?.toMap(),
        "cat": cat?.toMap(),
        "fil": fil?.toMap(),
        "slk": slk?.toMap(),
        "afr": afr?.toMap(),
        "nbl": nbl?.toMap(),
        "nso": nso?.toMap(),
        "sot": sot?.toMap(),
        "tso": tso?.toMap(),
        "ven": ven?.toMap(),
        "xho": xho?.toMap(),
        "zul": zul?.toMap(),
        "kin": kin?.toMap(),
        "kaz": kaz?.toMap(),
        "fao": fao?.toMap(),
        "hin": hin?.toMap(),
        "tam": tam?.toMap(),
        "isl": isl?.toMap(),
        "arc": arc?.toMap(),
        "ckb": ckb?.toMap(),
        "ber": ber?.toMap(),
        "fin": fin?.toMap(),
        "slv": slv?.toMap(),
        "bul": bul?.toMap(),
        "jam": jam?.toMap(),
        "zdj": zdj?.toMap(),
        "amh": amh?.toMap(),
        "est": est?.toMap(),
        "vie": vie?.toMap(),
        "cnr": cnr?.toMap(),
        "kor": kor?.toMap(),
        "ltz": ltz?.toMap(),
        "tuk": tuk?.toMap(),
        "pau": pau?.toMap(),
        "mey": mey?.toMap(),
        "lav": lav?.toMap(),
        "fas": fas?.toMap(),
        "mfe": mfe?.toMap(),
        "crs": crs?.toMap(),
        "prs": prs?.toMap(),
        "pus": pus?.toMap(),
        "urd": urd?.toMap(),
        "lit": lit?.toMap(),
        "lua": lua?.toMap(),
        "tvl": tvl?.toMap(),
        "bwg": bwg?.toMap(),
        "kck": kck?.toMap(),
        "khi": khi?.toMap(),
        "ndc": ndc?.toMap(),
        "nde": nde?.toMap(),
        "sna": sna?.toMap(),
        "toi": toi?.toMap(),
        "zib": zib?.toMap(),
        "bos": bos?.toMap(),
        "tgk": tgk?.toMap(),
        "niu": niu?.toMap(),
        "ron": ron?.toMap(),
        "som": som?.toMap(),
        "mya": mya?.toMap(),
        "ces": ces?.toMap(),
        "bel": bel?.toMap(),
        "nep": nep?.toMap(),
        "khm": khm?.toMap(),
        "run": run?.toMap(),
        "sin": sin?.toMap(),
        "her": her?.toMap(),
        "hgm": hgm?.toMap(),
        "kwn": kwn?.toMap(),
        "loz": loz?.toMap(),
        "ndo": ndo?.toMap(),
        "gsw": gsw?.toMap(),
        "roh": roh?.toMap(),
        "gil": gil?.toMap(),
        "hat": hat?.toMap(),
        "bis": bis?.toMap(),
        "bjz": bjz?.toMap(),
    };
}

class Afr {
    String? official;
    String? common;

    Afr({
        this.official,
        this.common,
    });

    factory Afr.fromMap(Map<String, dynamic> json) => Afr(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toMap() => {
        "official": official,
        "common": common,
    };
}
