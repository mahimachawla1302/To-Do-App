import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String txt;
  final bool isChecked;
  final Function checkboxCallBack;
  final Function longPressCallBack;
  TaskTile({this.txt,this.isChecked,this.checkboxCallBack,this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(txt,style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (val){
          checkboxCallBack();
        },
    ),
    );
  }
}

