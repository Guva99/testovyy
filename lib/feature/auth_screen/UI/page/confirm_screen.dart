import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:testovoe_zadanie/core/theme/app_color.dart';
import 'package:testovoe_zadanie/core/theme/style.dart';
import 'package:testovoe_zadanie/core/theme/typography.dart';
import 'package:testovoe_zadanie/core/validator/mobile_validator.dart';
import 'package:testovoe_zadanie/feature/app/router/app_path_route.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/state/auth_page_state.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/state/manager.dart';
import 'package:testovoe_zadanie/feature/auth_screen/UI/widget/app_text_field_widget.dart';

class ConfirmScreen extends ConsumerStatefulWidget {
  const ConfirmScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends ConsumerState<ConfirmScreen> with PhoneFormatter {
  final TextEditingController textEditingControllerPin = TextEditingController();
  final GlobalKey<FormState> _formKeyPass = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final manager = ref.watch(authManagerProvider);
    final state = ref.watch(authPageStateProvider);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Подтверждение',
          style: AppTypography.h5.copyWith(color: AppColors.black).bold,
        ),
        leading: IconButton(
          onPressed: () {
            context.go(AppRoute.authenticationRoute);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: AppColors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Подтверждение смс: ${state.code}',
              style: AppTypography.paragraphP1.copyWith(color: AppColors.red),
            ),
            Container(
              decoration:
                  const BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Form(
                  key: _formKeyPass,
                  child: SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: AppTextFieldWidget(
                      maxLength: 4,
                      labelText: 'пин код',
                      inputType: TextInputType.number,
                      height: 50,
                      textEditingController: textEditingControllerPin,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      await confirmSend(state, manager, context);
                    },
                    style: AppButtonStyle.primaryStyleBlue,
                    child: const Text('Подтвердить'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> confirmSend(AuthPageState state, AuthorizationManager manager, BuildContext context) async {
      final validPass = _formKeyPass.currentState?.validate() ?? true;
    if (!validPass) return;

    if (state.isSignIn) {
      await manager.confirmUser(
        pinCode: textEditingControllerPin.text,
        context: context,
      );
      return;
    }
    await manager.confirmRegisterUser(
      pinCode: textEditingControllerPin.text,
      context: context,
    );
    return;
  }
}
