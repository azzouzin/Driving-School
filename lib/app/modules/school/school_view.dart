import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            bottom: TabBar(
                unselectedLabelColor: Get.theme.primaryColor.withOpacity(0.7),
                labelColor: Get.theme.primaryColor,
                indicatorColor: Colors.orange,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(
                    child: Icon(
                      Icons.person_outline,
                      size: 30,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                  ),
                  Tab(
                    child: Icon(
                      Icons.person,
                      size: 30,
                    ),
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              Expanded(
                child: ListView.builder(
                    itemBuilder: (_, index) => Container(
                          child: InkWell(
                            onTap: () => Get.to(ChatPage()),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: ClipOval(
                                      child: Image.asset(
                                          "assets/images/person1.png"),
                                    ),
                                  ),
                                  Text("مرواني عزوز "),
                                  Text("05 62 41 39 35"),
                                  Text("Code"),
                                ],
                              ),
                            ),
                          ),
                        ),
                    itemCount: 10),
              ),
              Expanded(child: DocumentsPage()),
              Expanded(child: StatsPage()),
            ],
          )),
    );
  }
}
