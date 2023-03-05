import 'package:flutter/material.dart';

class MyListView extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView sample',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView Sample'),
        ),
        body: Container(
          height: 500,
          child: SingleChildScrollView(
            child: this.buildListView(),
          ),
        ),
      ),
    );
  }

  ListView buildListView()
  {
    return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context,index) {
          return Column(
            children: [
              ListTile(
                leading: const Icon(Icons.map),
                title: const Text('map'),
                subtitle: const Text('is here'),
                onTap: (){
                  print(index);
                },
              ),
              ListTile(
                leading: const Icon(Icons.album),
                title: const Text('album'),
                subtitle: const Text('album'),
                onTap: () {
                  print('tap here');
                },
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('phone'),
                subtitle: const Text('phone'),
                onTap: (){
                  print(context);
                },
              ),
            ],
          );
        }
    );
  }
}