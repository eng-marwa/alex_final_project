import 'package:alex_final_project/core/resources/app_colors.dart';
import 'package:alex_final_project/core/resources/app_text_styles.dart';
import 'package:alex_final_project/utils/validations/app_validation.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    this.type,
    required this.controller,
    this.isPassword = false,
    this.validator,
  });

  final String label;
  final String hint;
  final TextInputType? type;
  final TextEditingController controller;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label, style: AppTextStyles.darkGrey12Color14Medium),
        SizedBox(height: 6),
        TextFormField(
          validator:widget.validator,
          obscureText: widget.isPassword && !isVisible,
          keyboardType: widget.type ?? TextInputType.text,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: AppTextStyles.greyA6Color16Regular,
            fillColor: AppColors.lightGreyFAColor,
            filled: true,
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    icon: Icon(
                      isVisible ? Icons.visibility_off : Icons.visibility,
                    ),
                    color: AppColors.greyA6Color,
                  )
                : null,
          ),
        ),
      ],
    );
  }

  OutlineInputBorder get border => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: AppColors.lightGreyFAColor),
  );
}
