import 'package:flutter/material.dart';
import 'package:kandy_vpn/utils/email_validator.dart';

class StartTextInput extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final Widget? beforeIcon;
  final Widget? afterIcon;
  final Function(TextEditingController) onSubmitted;

  const StartTextInput({
    super.key,
    this.hintText,
    this.labelText,
    this.beforeIcon,
    this.afterIcon,
    required this.onSubmitted,
  });

  @override
  State<StartTextInput> createState() => _StartTextInputState();
}

class _StartTextInputState extends State<StartTextInput> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      autocorrect: false,
      autofocus: true,
      decoration: InputDecoration(
        hintText: widget.hintText,
        labelText: widget.labelText,
        icon: widget.beforeIcon,
        suffixIcon: widget.afterIcon,
      ),
      maxLines: 1,
      onSubmitted: (value) {
        widget.onSubmitted(textEditingController);
      },
      // focusNode: FocusNode(),
    );
  }
}

class StartTextForm extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? beforeIcon;
  final Widget? afterIcon;
  final bool isEmail;
  final bool validate;

  const StartTextForm({
    super.key,
    this.hintText,
    this.labelText,
    this.beforeIcon,
    this.afterIcon,
    this.isEmail = false,
    this.validate = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: true,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        icon: beforeIcon,
        suffixIcon: afterIcon,
      ),
      validator: (value) {
        if (!validate) {
          return null;
        }

        if (value?.isEmpty ?? false) {
          return "This field is required";
        }

        if (isEmail && !isValidEmail(value!)) {
          return "Please enter a valid email";
        }

        return "";
      },
      maxLines: 1,
    );
  }
}
