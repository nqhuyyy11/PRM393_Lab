import 'package:flutter/material.dart';

class InputControlsDemo extends StatefulWidget {
  const InputControlsDemo({super.key});

  @override
  State<InputControlsDemo> createState() => _InputControlsDemoState();
}

class _InputControlsDemoState extends State<InputControlsDemo> {
  final TextEditingController _textController = TextEditingController();
  bool _isChecked = false;
  int _radioValue = 1;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Demo TextField & Input Controls',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nhập thông tin',
            ),
          ),
          const SizedBox(height: 12),
          CheckboxListTile(
            title: const Text('Đồng ý điều khoản'),
            value: _isChecked,
            onChanged: (bool? val) {
              setState(() {
                _isChecked = val ?? false;
              });
            },
          ),
          const SizedBox(height: 12),
          RadioListTile<int>(
            title: const Text('Lựa chọn 1'),
            value: 1,
            groupValue: _radioValue,
            onChanged: (int? val) {
              setState(() {
                _radioValue = val ?? 1;
              });
            },
          ),
          RadioListTile<int>(
            title: const Text('Lựa chọn 2'),
            value: 2,
            groupValue: _radioValue,
            onChanged: (int? val) {
              setState(() {
                _radioValue = val ?? 2;
              });
            },
          ),
        ],
      ),
    );
  }
}
