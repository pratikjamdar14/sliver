import 'package:flutter/material.dart';

class whatsApp extends StatelessWidget {
  const whatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.camera,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.wifi,
              ),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('Setting')),
                PopupMenuItem(child: Text('broadcast')),
                PopupMenuItem(child: Text('web whatsapp')),
              ];
            })
          ],
          title: Text('Whatsapp'),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.supervisor_account),
            ),
            Tab(child: Text('Chat')),
            Tab(child: Text('Group')),
            Tab(child: Text('Status')),
            Tab(child: Text('Calls')),
          ]),
        ),


        
        body: Container(
          child: TabBarView(children: [
            SingleChildScrollView(),
            Text(
              'account',
              style: TextStyle(fontSize: 30),
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'data:image/jpeg;base64,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')),
                  title: Text('Ashish Shinde'),
                  subtitle: Text('Tejes:Hii'),
                  trailing: Text('10:10'),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: 10,
            ),
            Text(
              'Group',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Status',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Calls',
              style: TextStyle(fontSize: 30),
            ),
          ]),
        ),



      ),
    );
  }
}
