import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/user_model.dart';

import '../../components/custom_app_bar.dart';
import '../chat/chat_view.dart';
import '../statspage/statspage_view.dart';
import 'views/documents.dart';

class SchoolView extends StatefulWidget {
  const SchoolView({super.key});

  @override
  State<SchoolView> createState() => _SchoolViewState();
}

class _SchoolViewState extends State<SchoolView> {
  List<UserModel> students = [
    UserModel(name: "Merouani Azouz", email: "Code", phone: "0562413935"),
    UserModel(name: "Amir Gedou", email: "Créneau", phone: "0562413935"),
    UserModel(name: "Boutifia Amin", email: "Code", phone: "0562413935"),
    UserModel(name: "Merouani Azouz", email: "Code", phone: "0562413935"),
    UserModel(
        name: "Boutine Mohammed", email: "Circulation", phone: "0562413935"),
    UserModel(name: "Salim Azouz", email: "Circulation", phone: "0562413935"),
    UserModel(name: "Loubna Kacher", email: "Circulation", phone: "0562413935"),
    UserModel(name: "Oualid Arjoun", email: "Créneau", phone: "0562413935"),
    UserModel(name: "Sadam Bedjaoui", email: "Code", phone: "0562413935"),
    UserModel(name: "Ilyas Anis", email: "Code", phone: "0562413935"),
    UserModel(name: "Abir belhadj", email: "Créneau", phone: "0562413935"),
    UserModel(name: "Faouzi Lagjaa", email: "Créneau", phone: "0562413935"),
    UserModel(name: "Walid Saadii", email: "Créneau", phone: "0562413935"),
    UserModel(name: "Bou Abdellah Salim", email: "Code", phone: "0562413935"),
    UserModel(name: "Yahya Yahya", email: "Circulation", phone: "0562413935"),
    UserModel(name: "Alaa Farourou", email: "Code", phone: "0562413935"),
    UserModel(name: "Aissa Farid", email: "Circulation", phone: "0562413935"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              "قم بتسيير مدرستك من هنا ",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              CircleAvatar(
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ClipOval(
                      child: Image.asset("assets/images/app_icon.jpg")),
                ),
              ),
              Gap(10),
            ],
            bottom: TabBar(
                unselectedLabelColor: Get.theme.primaryColor.withOpacity(0.7),
                labelColor: Get.theme.primaryColor,
                indicatorColor: Colors.orange,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: "الطلاب"),
                  Tab(text: "الوثائق"),
                  Tab(text: "الاحصائيات"),
                ]),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemBuilder: (_, index) => Container(
                        child: InkWell(
                          onTap: () => Get.to(ChatPage()),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: ClipOval(
                                    child: Image.asset(
                                        "assets/images/person1.png"),
                                  ),
                                ),
                                Text(students[index].name!),
                                Text(students[index].phone!),
                                Text(students[index].email!),
                              ],
                            ),
                          ),
                        ),
                      ),
                  itemCount: students.length),
              DocumentsPage(),
              StatsPage(),
            ],
          )),
    );
  }
}
