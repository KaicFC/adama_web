import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Adama',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    var widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back_image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/curves.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: (heightScreen / 12)),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: widthScreen,
                      color: const Color.fromARGB(255, 44, 44, 44),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 170),
                child: Container(
                  height: 112,
                  width: 149,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/slogan_adama.png',
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60, left: 90),
                child: Container(
                  height: 330,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login Administrador',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 92, 80, 77)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            'Usuário',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 92, 80, 77)),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 247, 245, 244),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '444.333.222.111',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 10),
                          child: Text(
                            'Senha',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 92, 80, 77)),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromARGB(255, 247, 245, 244),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: '*************',
                                hintStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 10),
                          child: Center(
                            child: Text(
                              'Esqueci minha senha',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 23, 162, 85),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: double.maxFinite,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 23, 162, 85)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'ENTRAR',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
