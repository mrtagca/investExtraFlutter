import 'package:flutter/material.dart';
import 'package:investextraqnb/components/alarm/alartmStateItem.dart';
import 'package:investextraqnb/components/menu/base/baseAppBar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  List<AlarmObject> alarms = List.generate(10,
      (index) => AlarmObject(AlarmStateEnum.lowerEquals, 12, "EREGL", index));

  @override
  Widget build(BuildContext context) {
    bool _autoClose = true;

    return Scaffold(
      appBar: BaseAppBar(title: Text("Alarmlar")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            final alarm = alarms[index];

            return Slidable(
              closeOnScroll: true,
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                SlidableAction(
                  key: Key(alarm.index.toString()),
                  autoClose: _autoClose,
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  //label: 'Delete',
                  onPressed: (context) => (_onDismissed(index)),
                )
              ]),
              child: buildAlarmListTile(alarm),
            );
          }),
    );
  }

  void _onDismissed(int index) {}

  Widget buildAlarmListTile(AlarmObject alarm) {
    return ListTile(
        contentPadding: EdgeInsets.all(16),
        title: Text(alarm.equity),
        subtitle: Text(
            "İndex: ${alarm.index} Fiyat ${alarm.value} ${alarm.alarmState.toString()} ise uyar"));
  }
}

class AlarmObject {
  final String equity;
  final AlarmStateEnum alarmState;
  final double value;
  final int index;

  const AlarmObject(this.alarmState, this.value, this.equity, this.index);
}
