import 'dart:async';


int counter =0 ;
main() {
  Duration duration = Duration(seconds: 2);
  Timer.periodic(duration, timerOut);//um loop com tempo pre estabelecido
  print('Iniciando ${getTime()}');
}
void timerOut(Timer timer){//timer é intriscico 
  print('Espera: ${getTime()}');
  counter++;
    if(counter >= 5){
    timer.cancel();
  }
}
String getTime(){
  DateTime dt = DateTime.now();
  return dt.toString();
}