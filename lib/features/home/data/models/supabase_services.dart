import 'dart:developer';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final supabase = Supabase.instance.client;

  Future<void> addUser({
    required String firstName,
    required String lastName,
    required String email,
    required String gender,
    required String imageUrl,
  }) async {
    try {
      await supabase.from('users').insert({
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'gender': gender,
        'image_url': imageUrl,
      });
      log("User added successfully!");
      log("First Name: $firstName, Last Name: $lastName, Email: $email, Gender: $gender, Image URL: $imageUrl");
    } catch (e) {
      log("Error adding user: $e");
    }
  }

Future<File?> pickImage() async {
  final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    return File(pickedFile.path);
  }
  return null;
}

Future<String?> uploadImage(File imageFile) async {
  try {
    final supabase = Supabase.instance.client;
    final imageName = '${DateTime.now().millisecondsSinceEpoch}.jpg';

    final response = await supabase.storage
        .from('avatars') // تأكد من إنشاء Storage Bucket باسم avatars في Supabase
        .upload(imageName, imageFile);

    if (response.isNotEmpty) {
      return supabase.storage.from('avatars').getPublicUrl(imageName);
    }
  } catch (e) {
    print('Error uploading image: $e');
  }
  return null;
}
}