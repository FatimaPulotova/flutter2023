import 'package:flutter/material.dart';
import 'package:sabak33_firbase1/views/home_view.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  bool isCompleted = false;
  final TextEditingController _titlecontroller = TextEditingController();
  final TextEditingController _desriptioncontroller = TextEditingController();
  final TextEditingController _authorcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoView'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 15, right: 10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titlecontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wright title';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    hintText: 'Title'),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _desriptioncontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wright Description';
                  } else {
                    return null;
                  }
                },
                maxLines: 8,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    hintText: 'Description'),
              ),
              CheckboxListTile(
                  value: isCompleted,
                  onChanged: (v) {
                    setState(() {
                      isCompleted = v!;
                    });
                  }),
              const SizedBox(height: 10),
              TextFormField(
                controller: _authorcontroller,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Wright Author';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    hintText: 'Author'),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => const HomeView(),
                      ),
                    );
                  } else {
                    null;
                  }
                },
                icon: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                label: const Text(
                  'Отправить',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
