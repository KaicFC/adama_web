import 'package:adama_web/layout/constants.dart';
import 'package:flutter/material.dart';

class LayoutResponsive extends StatelessWidget {
  const LayoutResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
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
              child: CardFormulario(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
              ),
            ),
          ),
        );
      }),
    );
  }
}

class CardFormulario extends StatelessWidget {
  final double height, width;
  const CardFormulario({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.cardFormularioPadding(height, width),
      child: Column(
        crossAxisAlignment:
            Constants.cardFormularioColumnCrossAxis(height, width),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardLogo(height: height, width: width),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: height < 370
                          ? EdgeInsets.all(10)
                          : EdgeInsets.all(25),
                      child: Column(
                        children: [
                          FormTitle(height: height, width: width),
                          CustomForm(
                            title: 'Usuário',
                            hintText: '444.333.222-11',
                            obscureText: false,
                            height: height,
                            width: width,
                          ),
                          CustomForm(
                            title: 'Senha',
                            hintText: '************',
                            obscureText: false,
                            height: height,
                            width: width,
                          ),
                          CardEsqueciSenha(height: height, width: width),
                          ButtomEntrar(height: height, width: width),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FormTitle extends StatelessWidget {
  final double height, width;

  const FormTitle({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login Administrador',
      style: TextStyle(
          fontSize: Constants.fontSizeStyle(height),
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 92, 80, 77)),
    );
  }
}

class ButtomEntrar extends StatelessWidget {
  final double height, width;

  const ButtomEntrar({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.buttomSize(height),
      width: double.maxFinite,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 23, 162, 85)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          'ENTRAR',
          style: TextStyle(
            fontSize: Constants.buttomTextSize(height),
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class CardEsqueciSenha extends StatelessWidget {
  final double height, width;

  const CardEsqueciSenha({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.CardEsqueciSenhaPadding(height),
      child: Center(
        child: Text(
          'Esqueci minha senha',
          style: TextStyle(
            fontSize: Constants.formTextSize(height),
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 23, 162, 85),
          ),
        ),
      ),
    );
  }
}

class CustomForm extends StatelessWidget {
  final double height, width;

  final String title, hintText;
  final bool obscureText;
  const CustomForm({
    Key? key,
    required this.title,
    required this.hintText,
    required this.obscureText,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Constants.CardCustomFormPadding(height),
          child: Text(
            title,
            style: TextStyle(
                fontSize: Constants.formTextSize(height),
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 92, 80, 77)),
          ),
        ),
        Container(
          height: Constants.customFormSize(height),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 247, 245, 244),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              obscureText: obscureText,
              cursorColor: Color.fromARGB(255, 23, 162, 85),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    fontSize: Constants.formTextSize(height),
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 0, 0, 0)),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardLogo extends StatelessWidget {
  final double height, width;

  const CardLogo({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.cardLogoPadding(height),
      child: Container(
        height: Constants.cardLogoSize(height),
        width: 149,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/slogan_adama.png'),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
