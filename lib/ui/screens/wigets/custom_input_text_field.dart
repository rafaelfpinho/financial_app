import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputTextField extends StatefulWidget {
  final String title;
  final TextEditingController? controller;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final bool obscureText;
  final String? error;
  final bool enabled;
  final ValueChanged<String> onChanged;
  final GestureTapCallback? onTap;
  final bool? readOnly;
  final TextInputType textInputType;
  final String? mask;
  final int? maxLength;
  final String? initialValue;
  final Widget? counter;
  final String? counterText;
  final TextCapitalization textCapitalization;
  final String? hintText;
  final TextStyle? style;

  const CustomInputTextField({Key? key,
    required this.title,
    required this.onChanged,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.enabled = true,
    this.obscureText = false,
    this.error,
    this.textInputType = TextInputType.text,
    this.mask,
    this.onTap,
    this.readOnly = false,
    this.maxLength,
    this.initialValue,
    this.counter,
    this.counterText,
    this.textCapitalization = TextCapitalization.none,
    this.hintText,
    this.style,
  })
      : super(key: key);

  @override
  _CustomInputTextFieldState createState() =>
      _CustomInputTextFieldState();
}

class _CustomInputTextFieldState extends State<CustomInputTextField> {
  final FocusNode _focus = FocusNode();
  bool _focused = false;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {
      _focused = !_focused;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          widget.title,
          style: widget.style ?? const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 6),
        TextFormField(
          // inputFormatters:
          // widget.mask != null ? [TextInputMask(mask: widget.mask)] : null,
          controller: widget.controller,
          keyboardType: widget.textInputType,
          enabled: widget.enabled,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
              filled: !_focused || !widget.enabled,
              fillColor: Colors.grey.shade300,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              // errorBorder: _errorBorder,
              // focusedErrorBorder: _errorBorder,
              // enabledBorder: _enabledBorder,
              // focusedBorder: _focusedBorder,
              // disabledBorder: _enabledBorder,
              errorText: widget.error,
              counter: widget.counter,
              counterText: widget.counter == null ? "" : widget.counterText,
              hintText: widget.hintText
          ),
          obscureText: widget.obscureText,
          onChanged: widget.onChanged,
          focusNode: _focus,
          readOnly: widget.readOnly ?? false,
          initialValue: widget.initialValue,
          style: (Theme.of(context).brightness == Brightness.dark
              && (!_focused || !widget.enabled))
              ? const TextStyle(color: Colors.black87)
              : null,
          textCapitalization: widget.textCapitalization,
          onFieldSubmitted: (value) {
          },
        )
      ],
    );
  }
}