class Task{

   bool isDone=false;
   String title;

  Task({this.isDone=false,this.title});

  void toggleDone(){
    isDone=!isDone;
  }

}
