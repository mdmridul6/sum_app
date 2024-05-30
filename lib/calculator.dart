import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _number1 = TextEditingController();
  final TextEditingController _number2 = TextEditingController();

  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              "Result : $_result",
              style: const TextStyle(
                fontSize: 28,
                color: Colors.deepOrange,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              controller: _number1,
              decoration: const InputDecoration(
                  hintText: "Number 1", label: Text('Number 1')),
            ),
            const SizedBox(height: 16),
            TextField(
              keyboardType: TextInputType.number,
              controller: _number2,
              decoration: const InputDecoration(
                  hintText: "Number 2", label: Text('Number 2')),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 16,
              alignment: WrapAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: _add,
                  icon: const Icon(Icons.add),
                  label: const Text("Add"),
                ),
                ElevatedButton.icon(
                  onPressed: _sub,
                  icon: const Icon(Icons.linear_scale_sharp),
                  label: const Text("Subtract"),
                ),
                ElevatedButton.icon(
                  onPressed: _multiply,
                  icon: const Icon(Icons.star),
                  label: const Text("Multiply"),
                ),
                ElevatedButton.icon(
                  onPressed: _divide,
                  icon: const Icon(Icons.link),
                  label: const Text("Division"),
                ),
                ElevatedButton.icon(
                  onPressed: _clear,
                  icon: const Icon(Icons.delete_outlined),
                  label: const Text("Clear"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _add() {
    double number1 = double.tryParse(_number1.text) ?? 0;
    double number2 = double.tryParse(_number2.text) ?? 0;
    _result = number1 + number2;
    _number1.clear();
    _number2.clear();
    setState(() {});
  }

  void _sub() {
    double number1 = double.tryParse(_number1.text) ?? 0;
    double number2 = double.tryParse(_number2.text) ?? 0;
    _result = number1 - number2;
    _number1.clear();
    _number2.clear();
    setState(() {});
  }

  void _multiply() {
    double number1 = double.tryParse(_number1.text) ?? 0;
    double number2 = double.tryParse(_number2.text) ?? 0;
    _result = number1 * number2;
    _number1.clear();
    _number2.clear();
    setState(() {});
  }

  void _divide() {
    double number1 = double.tryParse(_number1.text) ?? 0;
    double number2 = double.tryParse(_number2.text) ?? 0;
    _result = number1 / number2;
    _number1.clear();
    _number2.clear();
    setState(() {});
  }
  void _clear(){
    _number1.clear();
    _number2.clear();
    _result=0.0;
    setState(() {});

  }

  @override
  void dispose() {
    _number1.dispose();
    _number2.dispose();
    super.dispose();
  }
}
