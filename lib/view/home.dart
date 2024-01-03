import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<TextProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: pro.textcontroller,
          ),
          
          ElevatedButton(onPressed: (){pro.datas();}, child: const Text('Click'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pro.data.length,
              itemBuilder: (context, index) {
                final data = pro.data[index]; 
              return ListTile(
                title: Text(data),
              );
            },),
          )

        ],
      ),
    );
  }
}