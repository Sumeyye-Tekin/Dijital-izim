import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  final TextEditingController _controller = TextEditingController();
  final List<ToDoItem> _toDoList = [];

  void _addToDoItem() {
    final text = _controller.text;
    if (text.isNotEmpty) {
      setState(() {
        _toDoList.add(ToDoItem(title: text));
      });
      _controller.clear();
    }
  }

  void _deleteSelectedItems() {
    setState(() {
      _toDoList.removeWhere((item) => item.isChecked);
    });
  }


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Diji-Do",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: _deleteSelectedItems,
            ),
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          labelText: 'Yeni Görev Ekle',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _addToDoItem,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: _toDoList.length,
                  itemBuilder: (context, index) {
                    final item = _toDoList[index];
                    return ListTile(
                      leading: Checkbox(
                        value: item.isChecked,
                        onChanged: (value) {
                          setState(() {
                            item.isChecked = value!;
                          });
                        },
                      ),
                      title: Text(item.title),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  class ToDoItem {
  String title;
  bool isChecked;

  ToDoItem({required this.title, this.isChecked = false});
  }

