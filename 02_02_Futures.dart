import 'dart:io';


main() {
  String path = Directory.current.path +'/arquivo.txt';
  File file = File(path);
  
  Future<RandomAccessFile> f = file.open(mode: FileMode.append);

  f.then((RandomAccessFile raf){
    print('Arquivo foi aberto!!!');
    raf.writeString('Olá Mundo').then((value){
      print("Arquivo Escrito com Sucesso!!!");
    }).catchError(()=>print('Ocorreu um Erro')).whenComplete(()=>raf.close());
  });
  print("%%%%%%%%  final do Codigo  %%%%%%%%");
}