import 'package:flutter/material.dart';

enum AlarmStateEnum {
  lowerThan,
  lowerEquals,
  equals,
  greaterThanEquals,
  greaterThan
}

class AlarmStateItem extends StatefulWidget {
  const AlarmStateItem({super.key});

  @override
  State<AlarmStateItem> createState() => _AlarmStateItemState();
}

class _AlarmStateItemState extends State<AlarmStateItem> {
  AlarmStateEnum? _value = AlarmStateEnum.lowerThan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<AlarmStateEnum>(
          title: const Text('Küçükse hatırlat'),
          value: AlarmStateEnum.lowerThan,
          groupValue: _value,
          onChanged: (AlarmStateEnum? value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<AlarmStateEnum>(
          title: const Text('Küçük Eşitse hatırlat'),
          value: AlarmStateEnum.lowerEquals,
          groupValue: _value,
          onChanged: (AlarmStateEnum? value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<AlarmStateEnum>(
          title: const Text('Eşitse Hatırlat'),
          value: AlarmStateEnum.equals,
          groupValue: _value,
          onChanged: (AlarmStateEnum? value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<AlarmStateEnum>(
          title: const Text('Büyük Eşitse hatırlat'),
          value: AlarmStateEnum.greaterThanEquals,
          groupValue: _value,
          onChanged: (AlarmStateEnum? value) {
            setState(() {
              _value = value;
            });
          },
        ),
        RadioListTile<AlarmStateEnum>(
          title: const Text('Büyükse Hatırlat'),
          value: AlarmStateEnum.greaterThan,
          groupValue: _value,
          onChanged: (AlarmStateEnum? value) {
            setState(() {
              _value = value;
            });
          },
        ),
      ],
    );
  }
}
