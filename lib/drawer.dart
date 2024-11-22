import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Header',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        drawer: buildGroupDrawer(context),
        // body: GridView.count( 
        //   crossAxisCount: 2,
        //   crossAxisSpacing: 10.0,
        //   mainAxisSpacing: 10.0,
        //   shrinkWrap: true,
        //   children: List.generate(10, (index) {
        //     return Padding(
        //         padding: const EdgeInsets.all(10.0),
        //         child: Container(
        //           height: 5.0,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(20.0),
        //             color: Colors.blue[200],
        //           ),
        //           child: Text('Materi$index',
        //             textAlign: TextAlign.center,
        //             style: const TextStyle(color: Colors.black, fontSize: 20.0),
        //           ),
        //         ));
        //   }),
      body: Center(
        child: Text('Pemrograman Mobile $title'),
      ),
      );
  } 

  Widget buildGroupDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(decoration: BoxDecoration(color: Colors.blue[900],),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[500],),
              accountName: Text('Novia naura', style: TextStyle(fontSize: 18)),
              accountEmail: Text('novianaurad@gmail.com'),
              currentAccountPictureSize: Size.square(40),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('N', style: TextStyle(fontSize: 25, color: Colors.blue)),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Novi'),
            subtitle: Text('12 RPL 2'),
            trailing: Icon(Icons.chevron_right),
          ),
          //   child: const Text('Novia Naura Diandra', style: TextStyle(color: Colors.white, fontSize: 30.0),
          //   ),
          // ),
          // ExpansionTile(
          //   title: const Text('Materi'), 
          //   children:  <Widget>[
          //     ListTile(
          //       title: const Text('Materi 1'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 2'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 3'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 4'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Materi 5'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ]
          // ),
          // ExpansionTile(
          //   title: const Text('Tugas'), 
          //   children:  <Widget>[
          //     ListTile(
          //       title: const Text('Tugas 1'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 2'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 3'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 4'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //     ListTile(
          //       title: const Text('Tugas 5'),
          //       onTap: () {
          //         Navigator.pop(context);
          //       },
          //     ),
          //   ]
          // )
        ],
      )
    );
  }
}