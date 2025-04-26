import 'dart:developer';
import 'dart:io';

import 'package:chatbot_app/features/home/data/models/supabase_services.dart';
import 'package:chatbot_app/features/home/data/models/user_info_model.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/profile_view/accept_user_data.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/profile_view/save_changes_button.dart';
import 'package:chatbot_app/features/home/presentation/views/widgets/profile_view/update_user_image.dart';
import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/common_widgets/custom_toggle_button.dart';
import 'package:chatbot_app/utils/common_widgets/cutom_text_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  File? image;
  String gender = 'Male';
  String userEmail = '';

  getUserEmail() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;
    setState(() {
      userEmail = user.email!;
    });
    log("userEmail is ${user.email!}");
  }

  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: ListView(
            children: [
              UpdateUserImage(
                image: (userImage) {
                  setState(() {
                    image = userImage;
                  });
                },
              ),
              SizedBox(
                height: 50.h,
                child: CustomTextButton(
                  text: S.of(context).editProfile,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 50.h),
              AcceptUserData(firstName: firstName, lastName: lastName),
              SizedBox(height: 30.h),
              CustomToggleButton(
                userGender: (userGender) {
                  setState(() {
                    gender = userGender;
                  });
                },
              ),
              SizedBox(height: 40.h),
              SaveChangesButton(
                firstName: firstName.text,
                lastName: lastName.text,
                onPressed: () async {
                  SupabaseService supabaseService = SupabaseService();
                  final userInfo = UserInfoModel(
                      email: userEmail,
                      firstName: firstName.text,
                      lastName: lastName.text,
                      userImage: image.toString(),
                      gender: gender);
                  log({
                    "firstName": userInfo.firstName,
                    "lastName": userInfo.lastName,
                    "email": userInfo.email,
                    "image": userInfo.userImage,
                    "gender": gender
                  }.toString());
                  await supabaseService.addUser(
                    firstName: firstName.text,
                    lastName: lastName.text,
                    gender: gender,
                    imageUrl: image.toString(),
                    email: userEmail,
                  );
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ],
    );
  }
}



  // Future<void> saveUserData({
  //   required String firstName,
  //   required String lastName,
  //   required String gender,
  //   required File? image,
  // }) async {
  //   User? user = FirebaseAuth.instance.currentUser;

  //   if (user != null) {
  //     String? imageUrl;

  //     // ✅ رفع الصورة إلى Firebase Storage إذا كانت موجودة
  //     if (image != null) {
  //       imageUrl = await uploadImageToStorage(image);
  //     }

  //     // ✅ حفظ البيانات في Firestore
  //     await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
  //       'firstName': firstName,
  //       'lastName': lastName,
  //       'gender': gender,
  //       'email': user.email,
  //       'userImage': imageUrl ?? "null", // حفظ رابط الصورة
  //     });

  //     log("User data saved successfully!");
  //   } else {
  //     log("Error: No authenticated user found!");
  //   }
  // }

  // Future<String?> uploadImageToStorage(File image) async {
  //   try {
  //     // ✅ اسم الملف بناءً على الـ Timestamp لضمان عدم التكرار
  //     String fileName =
  //         "profile_images/${DateTime.now().millisecondsSinceEpoch}.jpg";

  //     // ✅ تحديد المرجع في Firebase Storage
  //     Reference ref = FirebaseStorage.instance.ref().child(fileName);

  //     // ✅ رفع الصورة
  //     UploadTask uploadTask = ref.putFile(image);

  //     // ✅ انتظار الرفع ثم الحصول على رابط الصورة
  //     TaskSnapshot snapshot = await uploadTask.whenComplete(() => {});
  //     String downloadUrl = await snapshot.ref.getDownloadURL();

  //     print("✅ Image uploaded successfully: $downloadUrl");
  //     return downloadUrl; // 📌 ترجع رابط الصورة بعد الرفع
  //   } catch (e) {
  //     print("❌ Error uploading image: $e");
  //     return null; // 📌 في حالة الفشل ترجع `null`
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();

  //   loadUserData();
  // }

  // Future<void> loadUserData() async {
  //   userInformations = await getUserData();
  //   if (userInformations != null) {
  //     setState(() {
  //       firstName.text = userInformations!.firstName;
  //       lastName.text = userInformations!.lastName;
  //       gender = userInformations!.gender;
  //       image = userInformations!.userImage != null
  //           ? File(userInformations!.userImage.toString())
  //           : null;
  //     });
  //     log("User data loaded successfully!");

  //     log("firstName: ${userInformations!.firstName},lastName: ${userInformations!.lastName},gender: ${userInformations!.gender},userImage: ${userInformations!.userImage}");
  //   }
  // }