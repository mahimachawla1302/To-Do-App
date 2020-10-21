import 'package:flutter/material.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/widgets/tasktile.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index)
    {
      return TaskTile(
          txt: taskData.tasks[index].title,
          isChecked: taskData.tasks[index].isDone,
          checkboxCallBack: () {
            taskData.updateTask(taskData.tasks[index]);
          },
          longPressCallBack: (){
            taskData.deleteTask(taskData.tasks[index]);
          }
      );
    },
    itemCount: taskData.taskCount,
    );
    }
    );
  }
}
