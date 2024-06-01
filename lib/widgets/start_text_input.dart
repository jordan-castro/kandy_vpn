import 'package:flutter/material.dart';

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
