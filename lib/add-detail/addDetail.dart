import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddDetailScreen extends StatefulWidget {
  const AddDetailScreen({Key? key}) : super(key: key);

  @override
  _AddDetailScreenState createState() => _AddDetailScreenState();
}

class _AddDetailScreenState extends State<AddDetailScreen> {
  final _formKey = GlobalKey<FormState>();
  final _orderIDController = TextEditingController();
  final _detailNameController = TextEditingController();
  final _quantityController = TextEditingController();
  XFile? _drawingImage;

  List<Map<String, dynamic>> subDetails = [];

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _drawingImage = pickedImage;
      });
    }
  }

  void _addSubDetail() {
    setState(() {
      subDetails.add({
        'orderIDController': TextEditingController(),
        'detailNameController': TextEditingController(),
        'quantityController': TextEditingController(),
        'drawingImage': null,
      });
    });
  }

  void _saveForm() {
    if (_formKey.currentState?.validate() ?? false) {
      // Process the form data
      print('Номер заказа: ${_orderIDController.text}');
      print('Название детали: ${_detailNameController.text}');
      print('Количество: ${_quantityController.text}');
      if (_drawingImage != null) {
        print('Чертёж: ${_drawingImage!.path}');
      }
      // Handle subdetails similarly
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавление детали'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveForm,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _orderIDController,
                decoration: const InputDecoration(labelText: 'Номер заказа'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите номер заказа';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _detailNameController,
                decoration: const InputDecoration(labelText: 'Название детали'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Введите название детали';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _quantityController,
                decoration: const InputDecoration(labelText: 'Количество'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the quantity';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                icon: const Icon(Icons.photo_library),
                label: const Text('Добавить чертёж'),
                onPressed: _pickImage,
              ),
              if (_drawingImage != null)
                Image.file(
                  File(_drawingImage!.path),
                  height: 200,
                ),
              const SizedBox(height: 20),
              ListTile(
                title: const Text('Поддетали'),
                trailing: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _addSubDetail,
                ),
              ),
              ...subDetails.map((subDetail) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ExpansionTile(
                    title: Text(' ${(subDetails.indexOf(subDetail) + 1)}'),
                    children: [
                      TextFormField(
                        controller: subDetail['orderIDController'],
                        decoration: const InputDecoration(labelText: 'Order ID'),
                      ),
                      TextFormField(
                        controller: subDetail['detailNameController'],
                        decoration: const InputDecoration(labelText: 'Detail Name'),
                      ),
                      TextFormField(
                        controller: subDetail['quantityController'],
                        decoration: const InputDecoration(labelText: 'Quantity'),
                        keyboardType: TextInputType.number,
                      ),
                      ElevatedButton.icon(
                        icon: const Icon(Icons.photo_library),
                        label: const Text('Add Drawing'),
                        onPressed: () async {
                          final ImagePicker picker = ImagePicker();
                          final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
                          if (pickedImage != null) {
                            setState(() {
                              subDetail['drawingImage'] = pickedImage;
                            });
                          }
                        },
                      ),
                      if (subDetail['drawingImage'] != null)
                        Image.file(
                          File(subDetail['drawingImage'].path),
                          height: 200,
                        ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
