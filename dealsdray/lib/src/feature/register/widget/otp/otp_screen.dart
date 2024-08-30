import 'package:dealsdray/design_system/font/brand_font.dart';
import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/design_system/loader/brand_loader.dart';
import 'package:dealsdray/design_system/style/brand_space.dart';
import 'package:dealsdray/design_system/widget/base_layout.dart';
import 'package:dealsdray/design_system/widget/brand_sized_box.dart';
import 'package:dealsdray/design_system/widget/brand_text.dart';
import 'package:dealsdray/src/feature/register/provider/register_provider.dart';
import 'package:dealsdray/src/theme/colors.dart';
import 'package:dealsdray/util/extentions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  late RegisterNotofierProvider regProvider;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      regProvider.startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(registerProvider);
    regProvider = ref.watch(registerProvider.notifier);
    return BaseLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: BrandSpace.gap20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandVSpace(
              height: 100,
            ),
            const Icon(
              Icons.quiz_sharp,
              size: 55,
              color: AppColor.secondary,
            ),
            const BrandVSpace(
              height: 20,
            ),
            const BrandText.secondary(
              data: Strings.otpverification,
              textStyle: TextStyle(
                fontSize: BrandFontSize.headline1,
                color: AppColor.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const BrandVSpace(
              height: 10,
            ),
            BrandText.grey(
              data:
                  '${Strings.weHaveSentAUniqueOTPNumber} ${regProvider.phoneNumber ?? ''}',
              textStyle: const TextStyle(
                fontSize: BrandFontSize.body,
                color: AppColor.grey166,
              ),
            ),
            const BrandVSpace(
              height: 20,
            ),
            OtpTextField(
              numberOfFields: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              borderRadius: BorderRadius.circular(12),
              fieldWidth: 40,
              fieldHeight: 40,
              cursorColor: AppColor.transparent,
              focusedBorderColor: AppColor.primary,
              borderColor: AppColor.primary,
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (value) {
                if (value.length == 4) {
                  regProvider.varifyOtp(context: context, otp: value);
                }
              },
            ),
            const BrandVSpace(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: context.deviceSize.width * 0.6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // if (regProvider.timer != 0)
                    BrandText.secondary(
                      data: '0:${regProvider.timer.toString()}',
                      fontSize: BrandFontSize.body,
                      textStyle: TextStyle(
                        color: regProvider.timer != 0
                            ? AppColor.black
                            : AppColor.transparent,
                      ),
                    ),
                    Opacity(
                      opacity: regProvider.canResendOtp ? 1 : 0.2,
                      child: InkWell(
                        onTap: () {
                          if (regProvider.canResendOtp) {
                            regProvider.sendOtp(context: context);
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: BrandText.secondary(
                            data: Strings.sendAgain,
                            fontSize: BrandFontSize.body,
                            textStyle: TextStyle(
                              color: AppColor.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const BrandVSpace(
              height: 100,
            ),
            if (regProvider.isVarifyOtpLoading)
              const BrandCircularProgressWidget()
          ],
        ),
      ),
    );
  }
}
