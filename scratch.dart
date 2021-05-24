void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  print('Task 1 Completed');
}

Future<String> task2() async {
  String result;
  await Future.delayed(Duration(seconds: 3), () {
    result = 'Task 2 data';
    print('Task 2 Completed');
  });
  return result;
}

void task3(String task2Data) {
  print('Task 3 Completed with $task2Data');
}
