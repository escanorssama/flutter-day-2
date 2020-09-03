import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trying_day_one/listitem.dart';
import 'package:trying_day_one/service/api.dart';

import 'model/team.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.judul, this.reload}) : super(key: key);

  final String title;
  final String judul;

  final VoidCallback reload;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var teams = List<Team>();
  var isLoading = false;

  final GlobalKey<RefreshIndicatorState> _refresh= GlobalKey <RefreshIndicatorState>();
  Future<void> MyHomePage()async{
    teams.clear();
    setState(() {
      isLoading = true;
    });
  }

  void _fetchTeam() async {
    setState(() {
      isLoading = true;
    });

    var tempTeams = await Api().getTeams();
    print(tempTeams);

    setState(() {
      teams = tempTeams;
      isLoading = false;
    });
  }

  Widget _getItem( String title,String judul, Color borderColor) {
    return ListItem(borderColor, title, judul );
  }


  Color _getColor() {
    var random = Random().nextInt(Colors.primaries.length - 1);
    return Colors.primaries[random];
  }



  List<Widget> _getTeamItem() {
    var items = List<Widget>();
    for (var i = 0; i < teams.length; i++) {

      items.add(_getItem(teams[i].teamBadge , teams[i].teamName, _getColor()));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: MyHomePage,
        key: _refresh,
        child: ListView(

          children: _getTeamItem(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchTeam,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
