import 'package:dealsdray/design_system/font/brand_font.dart';
import 'package:dealsdray/design_system/label/label.dart';
import 'package:dealsdray/design_system/style/text_style.dart';
import 'package:dealsdray/design_system/widget/base_layout.dart';
import 'package:dealsdray/design_system/widget/brand_button.dart';
import 'package:dealsdray/design_system/widget/brand_sized_box.dart';
import 'package:dealsdray/design_system/widget/brand_text.dart';
import 'package:dealsdray/design_system/widget/brand_text_field.dart';
import 'package:dealsdray/route/route_name.dart';
import 'package:dealsdray/src/feature/register/provider/register_provider.dart';
import 'package:dealsdray/src/theme/colors.dart';
import 'package:dealsdray/util/assets/assets.dart';
import 'package:dealsdray/util/extentions/extensions.dart';
import 'package:dealsdray/util/regular_expression/regular_expression.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PhoneNumberScreen extends ConsumerStatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends ConsumerState<PhoneNumberScreen>
    with SingleTickerProviderStateMixin {
  late RegisterNotofierProvider provider;
  TabController? tabController;

  TextEditingController phoneController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      tabController?.addListener(() {
        provider.updateActiveIndex(tabController?.index);
      });
      phoneController.addListener(() {
        if (phoneController.text.isEmpty || phoneController.text.length <= 9) {
          provider.updateCanSendOtp(false);
        } else {
          provider.updateCanSendOtp(true);
        }
      });
      emailController.addListener(() {
        if (emailController.text.isEmpty) {
          provider.updateCanSendOtp(false);
        } else {
          provider.updateCanSendOtp(true);
        }
      });
    });
    super.initState();
  }

  Future<void> sendOtp(String value) async {
    var result = await provider.sendOtp(context: context, phone: value);
    if (result) {
      // ignore: use_build_context_synchronously
      context.push(RouteName.otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(registerProvider);
    provider = ref.watch(registerProvider.notifier);
    return BaseLayout(
      child: SingleChildScrollView(
        child: Column(
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
            Container(
              width: context.deviceSize.width * 0.5,
              height: 40,
              decoration: const BoxDecoration(
                color: AppColor.greyDC,
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: TabBar(
                indicatorColor: AppColor.primary,
                labelColor: AppColor.white,
                unselectedLabelColor: Colors.black,
                splashBorderRadius:
                    const BorderRadius.all(Radius.circular(100)),
                indicator: BoxDecoration(
                  color: AppColor.primary,
                  borderRadius: BorderRadius.circular(100),
                ),
                tabs: const [
                  Tab(
                    child: Center(
                      child: BrandText(
                        data: Strings.phone,
                      ),
                    ),
                  ),
                  Tab(
                    child: Center(
                      child: BrandText(
                        data: Strings.email,
                      ),
                    ),
                  )
                ],
                controller: tabController,
                onTap: (value) {},
              ),
            ),
            Form(
              key: formKey,
              child: SizedBox(
                width: context.deviceSize.width * 0.7,
                height: context.deviceSize.height * 0.5,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Center(child: phoneNumberWidget(provider.activeTabIndex)),
                    Center(child: emailWidget(provider.activeTabIndex)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget phoneNumberWidget(int activeIndex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BrandVSpace(
          height: 20,
        ),
        const BrandText(
          data: Strings.gladToSeeYou,
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
          data: Strings.pleaseProvideYourPhoneNumer,
          textStyle: BrandTextStyle(
            fontSize: BrandFontSize.body,
            color: AppColor.grey166,
          ),
        ),
        const BrandVSpace(
          height: 10,
        ),
        BrandTextField(
          controller: phoneController,
          hintText: Strings.phone,
          keyboardType: TextInputType.number,
          inputFormatters: [LengthLimitingTextInputFormatter(10)],
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
        Opacity(
          opacity: provider.canSendOtp ? 1 : 0.6,
          child: SizedBox(
            height: 50,
            child: BrandButton.primary(
              title: provider.isPhoneOrEmailLoading
                  ? Strings.pleaseWait
                  : Strings.sendCode,
              onTap: () {
                if (provider.canSendOtp &&
                    phoneController.text.isNotEmpty &&
                    !provider.isPhoneOrEmailLoading) {
                  sendOtp(phoneController.text);
                }
              },
            ),
          ),
        )
      ],
    );
  }

  Widget emailWidget(int activeIndex) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BrandVSpace(
          height: 20,
        ),
        const BrandText(
          data: Strings.gladToSeeYou,
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
          data: Strings.pleaseProvideYourPhoneEmail,
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
        const BrandVSpace(
          height: 20,
        ),
        Opacity(
          opacity: emailController.text.isEmpty ? 0.6 : 1,
          child: SizedBox(
            height: 50,
            child: BrandButton.primary(
              title: Strings.sendCode,
              onTap: () {
                if (provider.canSendOtp && emailController.text.isNotEmpty) {
                  sendOtp(emailController.text);
                }
              },
            ),
          ),
        )
      ],
    );
  }
}
