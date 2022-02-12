import 'package:arzan/core/constants/palette.dart';
import 'package:flutter/material.dart';

class MyInputDecs {
  username()=>InputDecoration(
      prefixIcon: const Icon(Icons.person_outline_rounded),
      filled: true,
      hintText: 'Username',
      fillColor: Palette.kGrey,
      counterText: '',
      border: myOutlineBorder(),
      enabledBorder: myOutlineBorder());
  telephone() => InputDecoration(
      prefixIcon: const Icon(Icons.local_phone_outlined),
      filled: true,
      prefixText: '+993',
      //hintText: 'Telephone',
      fillColor: Palette.kGrey,
      counterText: '',
      border: myOutlineBorder(),
      enabledBorder: myOutlineBorder());
  password() => InputDecoration(
      prefixIcon: const Icon(Icons.vpn_key_outlined),
      filled: true,
      fillColor: Palette.kGrey,
      hintText: 'Password',
      counterText: '',
      border: myOutlineBorder(),
      enabledBorder: myOutlineBorder());
  confirmPassword() => InputDecoration(
      prefixIcon: const Icon(Icons.vpn_key_outlined),
      filled: true,
      fillColor: Palette.kGrey,
      counterText: '',
      hintText: 'Confirm Password',
      border: myOutlineBorder(),
      enabledBorder: myOutlineBorder());
  myOutlineBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.transparent));
}
