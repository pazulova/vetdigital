import 'package:flutter/material.dart';

import '../../../../src.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Expanded(child: Assets.images.error.image()),
            Center(
              child: SizedBox(
                width: 315,
                child: Column(
                  children: [
                    const Text(
                      AppString.sorry,
                      style: AppTextStyles.poppinsGrey16w700,
                    ),
                    AppSpace.sized20,
                    const Text(
                      AppString.errorPage,
                      style: AppTextStyles.robotoGrey13w400,
                      textAlign: TextAlign.center,
                    ),
                    AppSpace.sized20,
                    SizedBox(
                      width: 124,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.grayE,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: const Text(
                          AppString.goBack,
                          style: AppTextStyles.poppinsWhite16w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
