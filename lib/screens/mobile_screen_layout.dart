import 'package:flutter/material.dart';
import 'package:s_chat/colors.dart';
import 'package:s_chat/widgets/contacts_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: const Text('Whatsapp', style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            centerTitle: false,
            actions: [
              IconButton(onPressed: () {} , icon: Icon(Icons.search, color: Colors.grey,),),
              IconButton(onPressed: () {} , icon: Icon(Icons.more_vert, color: Colors.grey,),),
            ],
            bottom: const TabBar(
                indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                tabs: [
                Tab(text: 'CHATS',),
                Tab(text: 'STATUS',),
                Tab(text: 'CALLS',),
            ] ),
          ),
          body: const ContactList(),
        ));
  }
}
