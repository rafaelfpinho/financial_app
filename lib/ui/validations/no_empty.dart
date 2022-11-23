import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum EmptyValidationError { empty, minLength }

class NoEmpty extends FormzInput<String, EmptyValidationError> {
  const NoEmpty.pure({this.minLength = 0}) : super.pure('');

  const NoEmpty.dirty([String value = '', this.minLength = 0]) : super.dirty(value);

  final int minLength;

  @override
  EmptyValidationError? validator(String value) {
    if (value.isEmpty) {
      return EmptyValidationError.empty;
    } else if(value.length < minLength) {
      return EmptyValidationError.minLength;
    }
    return null;
  }
}