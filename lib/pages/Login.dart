import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.only(top: 126),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15))),
          child: Column(
            children: <Widget>[
              TabBar(
                controller: _tabController,
                tabs: const <Widget>[
                  Tab(text: "登录"),
                  Tab(text: "注册"),
                ],
              ),
              Flexible(
                flex: 1,
                child: TabBarView(
                  controller: _tabController,
                  children: const <Widget>[
                    Text("wdnmd"),
                    Center(
                      child: Text("注册"),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
