import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:testovoe_zadanie/core/theme/app_color.dart';
import 'package:testovoe_zadanie/core/theme/style.dart';
import 'package:testovoe_zadanie/core/theme/typography.dart';
import 'package:testovoe_zadanie/core/validator/email_validator.dart';
import 'package:testovoe_zadanie/core/validator/mobile_validator.dart';
import 'package:testovoe_zadanie/feature/app/router/app_path_route.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/state/auth_page_state.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/state/manager.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/widget/app_text_field_widget.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> with EmailFormatter, PhoneFormatter {
  final TextEditingController textEditingControllerSignIn = TextEditingController();
  final TextEditingController textEditingControllerPhoneNumber = TextEditingController();

  final GlobalKey<FormState> _formKeyPhone = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'регисрация',
          style: AppTypography.h5.copyWith(color: AppColors.black).bold,
        ),
      ),
      body: Consumer(builder: (context, ref, child) {
        final state = ref.watch(authPageStateProvider);
        final manager = ref.watch(authManagerProvider);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKeyPhone,
                child: AppTextFieldWidget(
                  labelText: 'Номер телефона',
                  inputType: TextInputType.phone,
                  height: 50,
                  textEditingController: textEditingControllerPhoneNumber,
                  validator: phoneValidator,
                  inputFormatters: [maskFormatterNumber],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        final valid = _formKeyPhone.currentState?.validate() ?? true;
                        if (!valid) return;
                        manager.getCode(
                          phone: textEditingControllerPhoneNumber.text,
                          context: context,
                        );
                      },
                      style: AppButtonStyle.primaryStyleLight,
                      child: const Text('Зарегестрироваться '),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                        onPressed: () {
                          manager.setIsSignInValue(true);
                          context.go(AppRoute.authenticationRoute);
                        },
                        child: Text('Войти'))
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
