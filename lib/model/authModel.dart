import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthModel {
  String? authInput;
  String? message;
  bool? ruleCheck;

  AuthModel({
    required authInput,
    required ruleCheck,
  });
}
