import 'package:courier_flutter/courier_preference_channel.dart';
import 'package:courier_flutter/models/courier_preference_topic.dart';
import 'package:courier_flutter/preferences/courier_preferences.dart';
import 'package:courier_flutter/preferences/courier_preferences_theme.dart';
import 'package:courier_flutter/ui/courier_theme.dart';
import 'package:flutter/material.dart';

class CourierSheetItem {
  final String title;
  bool isOn;
  final bool isDisabled;
  final CourierUserPreferencesChannel? channel;

  CourierSheetItem({
    required this.title,
    required this.isOn,
    required this.isDisabled,
    required this.channel,
  });
}

class CourierPreferencesSheet extends StatefulWidget {
  final Mode mode;
  final CourierPreferencesTheme theme;
  final CourierUserPreferencesTopic topic;
  final List<CourierSheetItem> items;

  const CourierPreferencesSheet({
    super.key,
    required this.mode,
    required this.theme,
    required this.topic,
    required this.items,
  });

  @override
  CourierPreferencesSheetState createState() => CourierPreferencesSheetState();
}

class CourierPreferencesSheetState extends State<CourierPreferencesSheet> {
  Widget _getListItem(int index, CourierSheetItem item) {
    final onChanged = item.isDisabled
        ? null
        : (bool value) {
            setState(() {
              widget.items[index].isOn = value;
            });
          };

    return ListTile(
      title: Text(
        item.title,
        style: TextStyle(
          fontFamily: 'Courier',
        ),
      ),
      onTap: () {
        if (onChanged != null) {
          onChanged(!item.isOn);
        }
      },
      trailing: Switch(
        value: item.isOn,
        onChanged: onChanged,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context, index) => const SizedBox(),
      // TODO
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.items.length,
      itemBuilder: (context, index) => _getListItem(index, widget.items[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: CourierTheme.margin, top: CourierTheme.margin * 1.5, right: CourierTheme.margin, bottom: CourierTheme.margin),
            child: Text(
              widget.topic.topicName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Courier',
              ),
            ),
          ),
          _buildContent(context)
        ],
      ),
    );
  }
}
