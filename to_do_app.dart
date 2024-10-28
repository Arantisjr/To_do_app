import 'dart:io';

void main() {
  List<String> toDoTasks = []; //growing list
  while (true) {
    print('TO DO LIST');
    print('1:Add list');
    print('2:View list');
    print('3:Delete tasks');
    print('4:Exit');
    stdout.write('ENTER CHOICE:'); //allow the user to thier choice
    String userChoice =
        stdin.readLineSync()!; //recieves the string input from the user
    //using the switch fuction
    switch (userChoice) {

      case '1':
        stdout.write('ENTER TASK:');
        toDoTasks.add(stdin
            .readLineSync()!); //;add the user input to mthe list we created above
        break;
      case '2':
        print('TASKS:');
        //using the for loop to print tasks depending on the number of tasks user inputs
        for (int j = 0; j < toDoTasks.length; j++) {
          print('${j + 1}: ${toDoTasks[j]}');
        }
        break;
      case '3':
        stdout.write('Enter the tasks to delete:');
        int removeTask = int.parse(stdin.readLineSync()!) -
            1; //recieving the task num from user and subtracting 1 because index starts from 0
        if (removeTask >= 0 && removeTask < toDoTasks.length) {
          toDoTasks.remove(removeTask);
        } else {
          print('EROR:invalid task num');
        }
        break;
      case '4':
        exit(0);
      default:
        print('invalid choice');
    }
  }
}
