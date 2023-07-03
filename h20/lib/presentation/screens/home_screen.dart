import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:h20/presentation/state_managers/water_tracker_history_controller.dart';
import 'package:h20/presentation/widgets/scroller_button_list.dart';
import 'package:h20/presentation/state_managers/water_tracker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final date = DateTime.now();
      Get.find<WaterTrackerHistoryController>().getWaterTracks(
          date.day, date.month, date.year);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H20'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32,),
            GetBuilder<WaterTracker>(
              builder: (waterTracker) {
                return Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: CircularProgressIndicator(
                        value: waterTracker.targetFullFilled,
                        backgroundColor: Theme.of(context).primaryColorLight,
                        color: waterTracker.targetFullFilled >= 1
                            ? Colors.green
                            : Theme.of(context).primaryColorDark,
                        strokeWidth: 10,
                      ),
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.water_drop_outlined,
                            color: Colors.blue,
                            size: 36,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${waterTracker.waterIntakeTarget}/${waterTracker.waterIntake} ml',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 24),
            ScrollerButtonList(
              scrollDirection: Axis.horizontal,
              selectedIndex: 1,
              items: [
                ScrollerButtonItem('250 ml', 250),
                ScrollerButtonItem('500 ml', 500),
                ScrollerButtonItem('800 ml', 800),
                ScrollerButtonItem('1L', 1000),
              ],
            ),
            const SizedBox(height: 24,),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text("Today's Record",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 16
                ),
              ),
            ),
            const Divider(height: 16, indent: 16,),
            GetBuilder<WaterTrackerHistoryController>(
                builder: (historyController) {
              return ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  reverse: true,
                  itemCount: historyController.historyList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(historyController
                          .historyList[index].amount
                          .toString()),
                      trailing: IconButton(
                        onPressed: () {
                          historyController.deleteWaterConsume(index);
                        },
                        icon: const Icon(Icons.delete_forever_outlined),
                      ),
                    );
                  });
            })
          ],
        ),
      ),
    );
  }
}
