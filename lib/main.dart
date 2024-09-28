import 'package:flutter/material.dart';

void main() => runApp(const JoshuaTempConverterApp());

class JoshuaTempConverterApp extends StatelessWidget {
  const JoshuaTempConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.light,
      ),
      home: const ModernConverterScreen(),
    );
  }
}

class ModernConverterScreen extends StatefulWidget {
  const ModernConverterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ModernConverterScreenState createState() => _ModernConverterScreenState();
}

class _ModernConverterScreenState extends State<ModernConverterScreen> {
  String _selectedConversion = 'Fahrenheit to Celsius';
  final TextEditingController _controller = TextEditingController();
  String _convertedValue = '';
  final List<String> _conversionHistory = [];

  void _convertTemperature() {
    double inputTemp = double.tryParse(_controller.text) ?? 0.0;
    double convertedTemp;
    String historyEntry;

    if (_selectedConversion == 'Fahrenheit to Celsius') {
      convertedTemp = (inputTemp - 32) * 5 / 9;
      historyEntry =
          'F to C: $inputTemp => ${convertedTemp.toStringAsFixed(2)}';
    } else {
      convertedTemp = (inputTemp * 9 / 5) + 32;
      historyEntry =
          'C to F: $inputTemp => ${convertedTemp.toStringAsFixed(2)}';
    }

    setState(() {
      _convertedValue = convertedTemp.toStringAsFixed(2);
      _conversionHistory.insert(0, historyEntry);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Joshua Temperature Converter'),
        backgroundColor: Colors.amber[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber[50],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ChoiceChip(
                    label: const Text('F to C'),
                    selected: _selectedConversion == 'Fahrenheit to Celsius',
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedConversion = 'Fahrenheit to Celsius';
                      });
                    },
                  ),
                  ChoiceChip(
                    label: const Text('C to F'),
                    selected: _selectedConversion == 'Celsius to Fahrenheit',
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedConversion = 'Celsius to Fahrenheit';
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Temperature',
                border: const OutlineInputBorder(),
                filled: true,
                fillColor: Colors.amber[100],
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _convertTemperature,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber[600],
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('CONVERT', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 20),
            Text(
              'Converted Value: $_convertedValue',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _conversionHistory.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      title: Text(_conversionHistory[index]),
                      leading: const Icon(Icons.history),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
