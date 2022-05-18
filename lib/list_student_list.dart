import 'package:database_hive/functions/db_functios.dart';
import 'package:database_hive/model/data_model.dart';
import 'package:flutter/material.dart';

class ListStudentList extends StatelessWidget {
  const ListStudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: studentListNotifier,
        builder:
            (BuildContext ctx, List<StudentModel> studentList, Widget? child) {
          return ListView.separated(
            itemBuilder: (context, index) {
              final data = studentList[index];
              return ListTile(
                title: Text(data.name),
                subtitle: Text(data.age),
                trailing: IconButton(onPressed: (){
                  if(data.id != null) {
                  deleteStudent(data.id!);
            }
            else{
              print('null');
            }}, icon: const  Icon(Icons.delete),color: Colors.red,),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemCount: studentList.length,
          );
        });
  }
}