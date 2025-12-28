import 'package:bilgi_testi/soru.dart';

class TestVeri {
  int _soruNo = 0;

  List<Soru> _soruBankasi = [
    Soru(
        soruMetni: 'Titanic gelmiş geçmiş en büyük gemidir', soruYaniti: false
    ),
    Soru(
        soruMetni: 'Dünyadaki tavuk sayısı insan sayısından fazladır',
        soruYaniti: true
    ),
    Soru(
        soruMetni: 'Kelebeklerin ömrü bir gündür', soruYaniti: false
    ),
    Soru(
        soruMetni: 'Dünya düzdür', soruYaniti: false
    ),
    Soru(
        soruMetni: 'Kaju fıstığı aslında bir meyvenin sapıdır', soruYaniti: true
    ),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet hiç patates yememiştir',
        soruYaniti: true
    ),
    Soru(
        soruMetni: 'Fransızlar 80 demek için, 4 - 20 der', soruYaniti: true
    ),
  ];

  String getSoruMetni(){
    return _soruBankasi[_soruNo].soruMetni;
  }

  bool getSoruYaniti(){
    return _soruBankasi[_soruNo].soruYaniti;
  }

  void sonrakiSoru(){
    if(_soruNo+1 < _soruBankasi.length){
      _soruNo++;
    }
  }

  bool testBittiMi(){
    if(_soruNo+1 >= _soruBankasi.length){
      return true;
    }else{
      return false;
    }
  }

  void soruNoSifirla(){
    _soruNo == 0;
  }
}