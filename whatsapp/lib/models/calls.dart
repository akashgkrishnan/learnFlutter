import 'package:flutter/material.dart';

class Calls {
  final String fromUser;
  final String receivedTime;
  final bool isVideoCall;
  final bool isMissed;
  final String image;

  const Calls({
    @required this.fromUser,
    @required this.receivedTime,
    @required this.isMissed,
    @required this.isVideoCall,
    @required this.image,
  });
}

const CALLS_DATA = const [
  Calls(
      fromUser: 'christy',
      receivedTime: '17:29',
      isMissed: true,
      isVideoCall: true,
    image: 'assets/icons/girl-1.svg',),
      Calls(
      fromUser: 'Akash',
      receivedTime: '17:20',
      isMissed: true,
      isVideoCall: true,
      image: 'assets/icons/profile_pic.svg'),
  Calls(
      fromUser: 'mom',
      receivedTime: '17:20',
      isMissed: true,
      isVideoCall: true,
      image: 'assets/icons/girl.svg'),
  Calls(
      fromUser: 'Akhila',
      receivedTime: '17:20',
      isMissed: true,
      isVideoCall: true,
      image: 'assets/icons/french.svg'),

  Calls(
      fromUser: 'Dad',
      receivedTime: '17:20',
      isMissed: true,
      isVideoCall: true,
      image: 'assets/icons/delivery-man.svg'),

];
