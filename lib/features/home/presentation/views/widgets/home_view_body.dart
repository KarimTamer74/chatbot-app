import 'package:chatbot_app/generated/l10n.dart';
import 'package:chatbot_app/utils/app_colors.dart';
import 'package:chatbot_app/utils/constants.dart';
import 'package:chatbot_app/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppConstants.appPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Icon(
              Icons.chat_bubble_outline,
              size: 100.sp,
              color: AppColors.kdarkBlueColor,
            ),
            SizedBox(height: 30.h),
            Text(
              S.of(context).startConversation,
              textAlign: TextAlign.center,
              style: Styles.textStyleBold20,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, AppConstants.botView);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kdarkBlueColor,
                padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(S.of(context).startChat,
                  style: Styles.textStyleBold22.copyWith(
                    color: AppColors.kWhiteColor,
                  )),
            ),
           
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

//  BlocConsumer<SignOutCubit, SignOutState>(
//           listener: (context, state) {
//             if (state is SignOutSuccessState) {
//               Navigator.pushReplacementNamed(context, signInView);
//               showSnackBar(context, 'Logout successfully✔️');
//               signOutCompleted();
//             }
//             if (state is SignOutFailureState) {
//               showSnackBar(context, state.errorMessage);
//             } else if (state is SignOutLoadingState) {
//               const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }
//           },
//           builder: (context, state) {
//             return const HomeViewBuildWidgets();
//           },
//         ),