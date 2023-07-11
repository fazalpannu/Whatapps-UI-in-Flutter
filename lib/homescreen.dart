import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Text('WhatsApp'),
            bottom: TabBar(tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Call')),
            ]),
            actions: [
              Icon(Icons.search_off),
              SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  PopupMenuItem(value: '1', child: Text('newgroup')),
                  PopupMenuItem(value: '2', child: Text('setting')),
                  PopupMenuItem(value: '3', child: Text('logout')),
                ],
              )
            ],
          ),
          body: TabBarView(children: [
            Text('camera'),
            ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text('fazal'),
                    subtitle: Text('pannu'),
                    leading: CircleAvatar(backgroundImage: NetworkImage('url')),
                    trailing: Text('20:20:2022'),
                  );
                })),
            ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('new updates'),
                          ListTile(
                            title: Text('fazal'),
                            subtitle: Text('5m ago'),
                            leading: Container(
                                decoration: BoxDecoration(
                                    //borderRadius: BorderRadius.circular(2),

                                     shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 2,
                                    )),
                                child: CircleAvatar(
                                    backgroundImage: NetworkImage('url'))),
                            trailing: Text('20:20:2022'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      title: Text('fazal'),
                      subtitle: Text('5m ago'),
                      leading: Container(
                          decoration: BoxDecoration(
                              //borderRadius: BorderRadius.circular(2),

                               shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              )),
                          child: CircleAvatar(
                              backgroundImage: NetworkImage('url'))),
                      trailing: Text('20:20:2022'),
                    );
                  }
                })),
            ListView.builder(
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return ListTile(
                    title: Text('fazal'),
                    subtitle: Align(
                      alignment: Alignment.topLeft,
                      child: Icon((index / 2) == 0
                          ? Icons.phone_android
                          : Icons.video_call),
                    ),
                    leading: CircleAvatar(backgroundImage: NetworkImage('url')),
                    trailing: Text('20:20:2022'),
                  );
                })),
          ]),
        ));
  }
}
