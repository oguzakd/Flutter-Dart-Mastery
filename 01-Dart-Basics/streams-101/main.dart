import 'dart:async';

main(){
  myStreamFunction().listen((e){  // Fonksiyonu kullanarak stream akışı
    print(e);
  });
  
  StreamController? streamController = StreamController();  // StreamController
  
  void functionForStreamController() async{ // Akışı oluşturmada controller kullanılan fonksiyon
    for(int i=0;i<10;i++){
      await Future.delayed(Duration(seconds: 1));
      streamController.sink.add(i+1);
    }
  }
  
  streamController.stream.listen((event) {  // controller ile akışı kullanma
    print(event*10);
  });
  
}

Stream<int> myStreamFunction() async*{  // Fonksiyon ile stream akışı oluşturma
  for(int i = 0; i<=10; i++){
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
