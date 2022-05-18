

import 'package:database_hive/add_student_list.dart';
import 'package:database_hive/functions/db_functios.dart';
import 'package:database_hive/list_student_list.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllStudents();
    return Scaffold(
      body: SafeArea(child: Column(
        children: [AddStudentList(),
        const Expanded(child: ListStudentList()
        )],
      )),
    );
  }
}