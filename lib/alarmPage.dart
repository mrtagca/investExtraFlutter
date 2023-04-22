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
  List<AlarmObject> alarms = List.generate(
      10, (index) => AlarmObject(AlarmStateEnum.lowerEquals, 12, "EREGL"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(title: Text("Alarmlar")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            final alarm = alarms[index];

            return Slidable(
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                SlidableAction(
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  //label: 'Delete',
                  onPressed: (context) => _onDismissed(),
                )
              ]),
              child: buildAlarmListTile(alarm),
            );
          }),
    );
  }

  void _onDismissed() {}

  Widget buildAlarmListTile(AlarmObject alarm) {
    return ListTile(
      contentPadding: EdgeInsets.all(16),
      title: Text(alarm.equity),
      subtitle:
          Text("Fiyat ${alarm.value} ${alarm.alarmState.toString()} ise uyar"),
      // leading: CircleAvatar(
      //   radius: 30,
      //   backgroundImage: NetworkImage(
      //       "https://icons.veryicon.com/png/o/miscellaneous/ionicons-1/ios-notifications-5.png"),
      // ),
    );
  }
}

class AlarmObject {
  final String equity;
  final AlarmStateEnum alarmState;
  final double value;

  const AlarmObject(this.alarmState, this.value, this.equity);
}
