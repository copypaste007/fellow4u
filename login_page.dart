import 'package:fellow4u/components/button.dart';
import 'package:fellow4u/components/clippart_header.dart';
import 'package:fellow4u/components/input_text_with_title.dart';
import 'package:fellow4u/configs/app_routes.dart';
import 'package:fellow4u/styles/app_colors.dart';
import 'package:fellow4u/styles/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipPathHeader(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign In',
                        style: AppText.heading1,
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Text(
                        'Welcome back, Yoo Jin',
                        style:
                            AppText.heading2.copyWith(color: AppColors.primary),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      InputTextWithTitle(
                        title: 'Email',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      InputTextWithTitle(
                        title: 'Password',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Forgot Password',
                        style: AppText.caption
                            .copyWith(color: AppColors.colorTextDark),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Button(
                    text: 'SIGN IN',
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(AppRoutes.main);
                    }),
              ],
            ),
            Column(
              children: [
                Text(
                  'or sign in with',
                  style: AppText.helperText
                      .copyWith(color: AppColors.colorTextDark),
                ),
                SizedBox(
                  height: 19,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svgs/ic_facebook.svg'),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset('assets/svgs/ic_talk.svg'),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset('assets/svgs/ic_line.svg')
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: AppText.caption.copyWith(color: AppColors.gray),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.register);
                        },
                        child: Text(
                          'Sign Up',
                          style: AppText.caption
                              .copyWith(color: AppColors.primary),
                        ))
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
