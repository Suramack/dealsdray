import 'package:dealsdray/design_system/font/brand_font.dart';
import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/design_system/style/brand_space.dart';
import 'package:dealsdray/design_system/style/text_style.dart';
import 'package:dealsdray/design_system/widget/base_layout.dart';
import 'package:dealsdray/design_system/widget/brand_sized_box.dart';
import 'package:dealsdray/design_system/widget/brand_text.dart';
import 'package:dealsdray/design_system/widget/brand_text_field.dart';
import 'package:dealsdray/src/feature/register/provider/register_provider.dart';
import 'package:dealsdray/src/theme/colors.dart';
import 'package:dealsdray/util/assets/assets.dart';
import 'package:dealsdray/util/extentions/extensions.dart';
import 'package:dealsdray/util/regular_expression/regular_expression.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  late RegisterNotofierProvider provider;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController referralController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ref.watch(registerProvider);
    provider = ref.watch(registerProvider.notifier);
    return BaseLayout(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: BrandSpace.gap20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandVSpace(
                height: 50,
              ),
              Center(
                child: ClipOval(
                  child: Image.asset(
                    Assets.logo,
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              BrandVSpace(
                height: context.deviceSize.height * 0.2,
              ),
              const BrandVSpace(
                height: 20,
              ),
              const BrandText(
                data: Strings.letsBegin,
                textStyle: BrandTextStyle(
                  fontSize: BrandFontSize.size24,
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const BrandVSpace(
                height: 10,
              ),
              const BrandText.grey(
                data: Strings.pleaseEnterYourCredentianToPro,
                textStyle: BrandTextStyle(
                  fontSize: BrandFontSize.body,
                  color: AppColor.grey166,
                ),
              ),
              const BrandVSpace(
                height: 10,
              ),
              BrandTextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: Strings.email,
                validator: (val) {
                  if (val?.isEmpty ?? true) {
                    return Strings.pleaseEnterAValidEmail;
                  } else if (!RegularExpression.email.hasMatch(val!)) {
                    return Strings.pleaseEnterAValidEmail;
                  }
                  return '';
                },
              ),
              BrandTextField(
                controller: passwordController,
                hintText: Strings.createPassword,
                obscureText: true,
                validator: (val) {
                  if (val?.isEmpty ?? true) {
                    return Strings.pleaseProvideYourPhoneNumer;
                  }
                  return '';
                },
              ),
              BrandTextField(
                controller: referralController,
                hintText: Strings.referalCodeOp,
                validator: (val) {
                  if (val?.isEmpty ?? true) {
                    return Strings.pleaseProvideYourPhoneNumer;
                  }
                  return '';
                },
              ),
              const BrandVSpace(
                height: 20,
              ),
              const BrandVSpace(
                height: 50,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: BrandSpace.gap10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 50,
                    height: 50,
                    child: const Icon(
                      Icons.arrow_forward_rounded,
                      color: AppColor.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
