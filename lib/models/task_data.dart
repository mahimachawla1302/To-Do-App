import 'package:flutter/cupertino.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(
      title: 'Task one',
    ),
    Task(title: 'Task two'),
    Task(title: 'Task three'),
  ];

  int get taskCount {return tasks.length;}

  void addTask(String newTask){
    tasks.add(Task(title: newTask));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}