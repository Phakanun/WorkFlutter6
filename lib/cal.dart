import 'package:flutter/material.dart';
import 'package:flutter_app2/about_me.dart';

class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  // Variables for input
  final TextEditingController currentSOCController = TextEditingController();
  final TextEditingController targetSOCController = TextEditingController();
  final TextEditingController chargingRateController = TextEditingController();
  final TextEditingController voltageController = TextEditingController();
  final TextEditingController batteryCapacityController = TextEditingController();
  final TextEditingController efficiencyController = TextEditingController();

  String chargingPower = '----';
  String chargingTime = '----';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        leading: IconButton(
          onPressed: () {
            debugPrint('Leading icon pressed');
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            Card(
              color: const Color.fromARGB(255, 127, 62, 152),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      'Charging Time: $chargingTime hrs',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Charging Power: $chargingPower kWh',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: currentSOCController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Current SOC',
                      hintText: 'Current SOC (%)',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: targetSOCController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Target SOC',
                      hintText: 'Target SOC (%)',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: chargingRateController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Charging Rate',
                      hintText: 'Charging Rate (A)',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: voltageController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Voltage',
                      hintText: 'Voltage (V)',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: batteryCapacityController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Bat Capacity',
                      hintText: 'Bat Capacity (kWh)',
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: efficiencyController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Efficiency',
                      hintText: 'Efficiency (%)',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Parse inputs
                  double? currentSOC = double.tryParse(currentSOCController.text);
                  double? targetSOC = double.tryParse(targetSOCController.text);
                  double? chargingRate = double.tryParse(chargingRateController.text);
                  double? voltage = double.tryParse(voltageController.text);
                  double? batteryCapacity = double.tryParse(batteryCapacityController.text);
                  double? efficiency = double.tryParse(efficiencyController.text);

                  double? power = voltage!*chargingRate!/1000;
                  double? time = (targetSOC!-currentSOC!)*batteryCapacity!/100/(power*efficiency!);

                  chargingPower = '${power.toStringAsFixed(3)}';
                  chargingTime = '${time.toStringAsFixed(3)}';
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 127, 62, 152),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Calculate',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutMe(),),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 127, 62, 152),
                padding:
                const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'About Me',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
