import 'package:alex_final_project/core/common_widgets/app_text_field.dart';
import 'package:alex_final_project/core/common_widgets/primary_button.dart';
import 'package:alex_final_project/core/enums/snackbar_type.dart';
import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:alex_final_project/core/resources/app_router.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:alex_final_project/features/auth/login/presentation/cubit/auth_cubit.dart';
import 'package:alex_final_project/features/auth/login/presentation/cubit/auth_state.dart';
import 'package:alex_final_project/features/auth/login/presentation/widgets/auth_header.dart';
import 'package:alex_final_project/utils/extensions/context_extension.dart';
import 'package:alex_final_project/utils/validations/app_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16.0),
            child: Column(
              children: [
                Align(alignment: Alignment.centerLeft,
                  child: AuthHeader(
                    title: 'Welcome back!',
                    subtitle: 'Sign in to your account',
                  ),
                ),
                SizedBox(height: 32),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      AppTextField(
                        validator: (value) => AppValidation.isRequired(
                          fieldName: 'username',
                          value: value,
                        ),
                        label: 'Username',
                        hint: 'Your username',
                        controller: _emailController,
                      ),
                      SizedBox(height: 16),
                      AppTextField(
                        validator: (value) =>
                            AppValidation.validatePassword(value),
                        label: 'Password',
                        hint: 'Your password',
                        controller: _passwordController,
                        isPassword: true,
                      ),
                      SizedBox(height: 16),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password?',
                            style: AppTextStyles.primaryColor16Medium.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      BlocConsumer<AuthCubit, AuthState>(
                        builder: (context, state) {
                          if (state is AuthLoading) {
                            return CircularProgressIndicator(
                              color: AppColors.primaryColor,
                            );
                          } else {
                            return PrimaryButton(
                              onPrimaryButtonPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<AuthCubit>().login(
                                    _emailController.text,
                                    _passwordController.text,
                                  );
                                }
                              },
                              buttonLabel: 'Login',
                            );
                          }
                        },
                        listenWhen: (previous, current) =>
                            current is AuthError || current is AuthSuccess,
                        listener: (context, state) {
                          if (state is AuthError) {
                            context.showSnackBar(
                              state.message,
                              type: SnackBarType.error,
                            );
                          } else {
                            context.showSnackBar(
                              'Login success',
                              type: SnackBarType.success,
                            );
                            context.navigateTo(Routes.home);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
