import 'dart:async';

main() {

  var listaDeEventos = List<dynamic>();

  var controlador = StreamController<dynamic>();
  var strem = controlador.stream;

  strem.listen((onData) {
    print('Evento disparado: $onData');
    listaDeEventos.add(onData);
  }, onDone: ()  {
    print('Stream finalizada!');
    print(listaDeEventos);
  });

  controlador.sink.add('Carlos');
  controlador.sink.add(26);
  controlador.sink.add('Brasil');
  controlador.sink.add('Ciências da Computação');
  controlador.close();

  print('Canal aberto...');
}