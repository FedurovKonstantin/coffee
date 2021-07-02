import 'package:coffee/app/theme/bloc/theme_bloc.dart';
import 'package:coffee/models/pomodoro_mod.dart';
import 'package:coffee/resources/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksPage extends StatelessWidget {
  const TasksPage();

  @override
  Widget build(BuildContext context) {
    return TasksView();
  }
}

class TasksView extends StatefulWidget {
  const TasksView();

  @override
  _TasksViewState createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);

    _tabController?.addListener(() {
      context.read<ThemeBloc>().add(
            ThemeSwitched(
              theme: AppTheme(
                mod: PomodoroMods.values[_tabController!.index],
              ),
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_tabController?.offset);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(
                text: "",
              ),
              Tab(
                text: "",
              ),
              Tab(
                text: "",
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            TabBarView(
              physics: BouncingScrollPhysics(),
              controller: _tabController,
              children: [
                Container(),
                Container(),
                Container(),
              ],
            ),
            Center(
              child: Container(
                color: Colors.indigoAccent,
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
