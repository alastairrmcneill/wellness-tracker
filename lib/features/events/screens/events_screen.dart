import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:provider/provider.dart';
import 'package:wellness_tracker/features/events/widgets/widgets.dart';
import 'package:wellness_tracker/notifiers/notifiers.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    EventNotifier eventNotifier = Provider.of<EventNotifier>(context);
    return Scaffold(
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        children: [
          SpeedDialChild(child: const Icon(Icons.join_left), label: 'Join', onTap: () => showAddEventDialog(context)),
          SpeedDialChild(child: const Icon(Icons.create), label: 'Create', onTap: () => showNewEventDialog(context)),
        ],
      ),
      body: eventNotifier.myEvents == null
          ? const Center(child: CircularProgressIndicator())
          : eventNotifier.myEvents!.isEmpty
              ? Center(child: Text('No events created yet', style: Theme.of(context).textTheme.headline6!))
              : const EventList(),
    );
  }
}
