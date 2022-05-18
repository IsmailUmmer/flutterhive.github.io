import 'package:database_hive/functions/db_functios.dart';
import 'package:database_hive/model/data_model.dart';
import 'package:flutter/material.dart';

class AddStudentList extends StatelessWidget {
  AddStudentList({Key? key}) : super(key: key);

  final _namecontroller = TextEditingController();
  final _agecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
          child: Column(
        children: [
          TextFormField(
            controller: _namecontroller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'name'),
          ),
          const SizedBox(
            height: 10,
          ),
             TextFormField(
            controller: _agecontroller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'AGE'),
          ),
          ElevatedButton.icon(onPressed: (){onAddStudentButtonClicked();}, icon: const Icon(Icons.add) ,
          label: const Text('add'),)
        ],
      ),
    );
  }
  Future<void> onAddStudentButtonClicked() async{
  final _name =  _namecontroller.text.trim();
  final _age = _agecontroller.text.trim();
  if (_age.isEmpty||_name.isEmpty){
    return;
  }  
final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}