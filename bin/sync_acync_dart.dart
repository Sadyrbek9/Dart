
import 'dart:io';

void main() {
  resultTasks();
}
void resultTasks() async {
  task1();
  String stringtask2 = await task2();
  task3(stringtask2);
}
void task1(){
  print('task 1 чыкты');
}

Future <String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  // sleep(threeSeconds);  синхронный методдун убакыт кармагычы
  String? result;
  await Future.delayed(threeSeconds, (){ //асинхронный метод 
  result = 'Task 2 DATA';
    print('task 2 чыкты');
  });
  return result.toString();
     
}
void task3(String task2String){ 
  print('task 3 чыкты : $task2String');
  }