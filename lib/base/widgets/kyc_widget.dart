import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KycFormScreen extends StatefulWidget {
  final Map<String, dynamic> apiResponse;

  KycFormScreen({required this.apiResponse});

  @override
  _KycFormScreenState createState() => _KycFormScreenState();
}

class _KycFormScreenState extends State<KycFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData = {};
  final ImagePicker _picker = ImagePicker();

  // Map to store images for different fields
  Map<String, XFile?> selectedImages = {};

  @override
  Widget build(BuildContext context) {
    List<dynamic> inputFields = widget.apiResponse['data']['input_fields'];

    return Scaffold(
      appBar: AppBar(
        title: Text('KYC Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView.builder(
            itemCount: inputFields.length,
            itemBuilder: (context, index) {
              var field = inputFields[index];

              if (field['type'] == 'select') {
                return buildDropdownField(field);
              } else if (field['type'] == 'file') {
                return buildFileUploadField(field['name']);
              }

              return SizedBox.shrink();
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Submitting KYC')),
            );
          }
        },
        child: Icon(Icons.check),
      ),
    );
  }

  // Dropdown Field Builder
  Widget buildDropdownField(Map<String, dynamic> field) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: field['label'],
          border: OutlineInputBorder(),
        ),
        items: (field['validation']['options'] as List<dynamic>).map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            formData[field['name']] = newValue;
          });
        },
        validator: (value) {
          if (field['required'] == true && (value == null || value.isEmpty)) {
            return 'Please select a ${field['label']}';
          }
          return null;
        },
      ),
    );
  }

  // File Upload Field Builder
  Widget buildFileUploadField(String fieldName) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _getFieldLabel(fieldName),
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () => _showImagePickerOptions(fieldName),
            child: Text('Pick Image'),
          ),
          SizedBox(height: 8.0),
          _buildImagePreview(fieldName),
        ],
      ),
    );
  }

  // Method to get label for the field
  String _getFieldLabel(String fieldName) {
    switch (fieldName) {
      case 'id_front_part':
        return 'ID Front Part';
      case 'id_back_part':
        return 'ID Back Part';
      default:
        return 'Unknown Field';
    }
  }

  // Method to show bottom sheet with Camera and Gallery options
  void _showImagePickerOptions(String fieldName) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Gallery'),
                onTap: () {
                  _pickImage(ImageSource.gallery, fieldName);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Camera'),
                onTap: () {
                  _pickImage(ImageSource.camera, fieldName);
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  // Method to pick a single image (either from Camera or Gallery)
  Future<void> _pickImage(ImageSource source, String fieldName) async {
    final XFile? image = await _picker.pickImage(source: source);

    if (image != null) {
      setState(() {
        selectedImages[fieldName] = image;
      });
    }
  }

  // Image Preview Builder (dynamic for any field)
  Widget _buildImagePreview(String fieldName) {
    if (selectedImages[fieldName] == null) {
      return Text('No image selected');
    }

    return Image.file(
      File(selectedImages[fieldName]!.path),
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: KycFormScreen(apiResponse: {
      "message": {
        "success": ["User KYC input fields fetch successfully!"]
      },
      "data": {
        "status_info": "0: Unverified, 1: Verified, 2: Pending, 3: Rejected",
        "kyc_status": 0,
        "input_fields": [
          {
            "type": "select",
            "label": "Document Type",
            "name": "document_type",
            "required": true,
            "validation": {
              "max": 0,
              "min": 0,
              "mimes": [],
              "options": ["NID", " Driving License", " Passport"],
              "required": true
            }
          },
          {
            "type": "file",
            "label": "Id Front Part",
            "name": "id_front_part",
            "required": true,
            "validation": {
              "max": "10",
              "mimes": ["jpg", "png", "svg", "webp"],
              "min": 0,
              "options": [],
              "required": true
            }
          },
          {
            "type": "file",
            "label": "Id Back Part",
            "name": "id_back_part",
            "required": true,
            "validation": {
              "max": "10",
              "mimes": ["jpg", "png", "svg", "webp"],
              "min": 0,
              "options": [],
              "required": true
            }
          },
          {
            "type": "file",
            "label": "test",
            "name": "test",
            "required": true,
            "validation": {
              "max": "10",
              "mimes": ["jpg", "png", "svg", "webp"],
              "min": 0,
              "options": [],
              "required": true
            }
          }
        ]
      },
      "type": "success"
    }),
  ));
}
