import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:homission/Presentation/Profile/myPage.dart';
import 'package:homission/Presentation/responsive_positioned.dart';
import 'package:homission/Presentation/Login/login_userType.dart';
import 'package:homission/Presentation/Login/login_signUp1.dart';
import 'package:homission/Presentation/Login/login_signIn.dart';
import 'Config.dart';
import 'package:homission/Presentation/Login/main.dart';

class login_admin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          width: deviceWidth,
          height: deviceHeight,
          color: Color(0xFF76A9FF),
          child: Stack(
            children: [
              Positioned(
                left: deviceWidth * 0.04,
                top: deviceHeight * 0.66,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => myPage()),
                          );
                        },
                        child: Container(
                          width: deviceWidth * 0.92,
                          padding: const EdgeInsets.all(16),
                          decoration: ShapeDecoration(
                            color: Color(0xFFFFDA1B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0),
                                ),
                                child: Image.asset(
                                  'assets/images/userManagementSystem/kakaotalk_login.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '카카오톡으로 로그인',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_signIn()),
                          );
                        },
                        child: Container(
                          width: deviceWidth * 0.92,
                          padding: const EdgeInsets.all(16),
                          decoration: ShapeDecoration(
                            color: Color(0xFF26231D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                padding: const EdgeInsets.all(2),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  'assets/images/userManagementSystem/material_symbols_alternate_email_rounded.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  '이메일로 로그인',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_signUp1()),
                          );
                        },
                        child: Container(
                          width: deviceWidth * 0.92,
                          padding: const EdgeInsets.all(16),
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 24),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '아직 호미션 회원이 아니라면',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '회원가입',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Pretendard',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: deviceWidth * 0.31,
                top: deviceHeight * 0.22,
                child: Image.asset(
                  'assets/images/userManagementSystem/Vector_12w.png',
                  width: deviceWidth * 0.2,
                  height: deviceHeight * 0.05,
                ),
              ),
              Positioned(
                left: deviceWidth * 0.48,
                top: deviceHeight * 0.22,
                child: Image.asset(
                  'assets/images/userManagementSystem/Vector_13w.png',
                  width: deviceWidth * 0.2,
                  height: deviceHeight * 0.05,
                ),
              ),
              Positioned(
                left: deviceWidth * 0.31,
                top: deviceHeight * 0.32,
                child: Text(
                  '호미션',
                  style: TextStyle(
                    color: Color(0xFF27221E),
                    fontSize: deviceWidth * 0.13,
                    fontFamily: 'ONE Mobile Title OTF',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: deviceWidth * 0.30,
                top: deviceHeight * 0.44,
                child: Text(
                  '노숙인 자립을 위한\n미션 보상 서비스',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF5C5C5C),
                    fontSize: deviceWidth * 0.05,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: deviceHeight * 0.02,
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Config().isAdmin = false;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '일반사용자이신가요? ',
                            style: TextStyle(
                              color: Color(0xFF5C5C5C),
                              fontSize: deviceWidth * 0.035, // Smaller font size
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: '사용자 로그인',
                            style: TextStyle(
                              color: Color(0xFF5C5C5C),
                              fontSize: deviceWidth * 0.035, // Smaller font size
                              fontFamily: 'Pretendard',
                              fontWeight: FontWeight.w700,
                              decoration: TextDecoration.underline, // Underline
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}