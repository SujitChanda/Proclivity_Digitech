import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email, _passWord;
  double height;
  double width;
  bool passwordVisible;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  mHeight() {
    return height = MediaQuery.of(context).size.height;
  }

  mWidth() {
    return width = MediaQuery.of(context).size.width;
  }

  String _emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  Widget _showTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Text(
        "Login",
        textAlign: TextAlign.start,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Colors.white, fontSize: 35,fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
          onSaved: (val) => _email = val,
          validator: _emailValidator,
          keyboardType: TextInputType.emailAddress,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 16, color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black26,
            prefixIcon: Icon(
              Icons.email,
              color: Color(0XFF0AA7BA),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF0AA7BA)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            labelText: 'Email ID',
            labelStyle: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 16, color: Colors.white),
            hintText: "Enter Email ID* ",
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 16, color: Colors.white),
          )),
    );
  }

  Widget _showPasswordInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
          onSaved: (val) => _passWord = val,
          validator: (value) => value.length < 6 ? "Password too Short" : null,
          // obscureText: true,
          obscureText: passwordVisible,
          keyboardType: TextInputType.text,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 16, color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black26,
            prefixIcon: Icon(Icons.lock,color: Color(0XFF0AA7BA)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF0AA7BA)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            labelText: 'Password',
            labelStyle: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 16, color: Colors.white),
            hintText: "Enter Password* ",
            hintStyle: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(fontSize: 16, color: Colors.white),
            suffixIcon: IconButton(
              icon: Icon(
                passwordVisible ? Icons.visibility : Icons.visibility_off,
                 color: Color(0XFF0AA7BA),
              ),
              onPressed: () {
                setState(() {
                  passwordVisible = !passwordVisible;
                });
              },
            ),
          )),
    );
  }

  Widget _showFormAction() {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      child: Center(
        child: Column(
          children: [
            Container(
              width: mWidth() * 0.5,
              child: RaisedButton(
                onPressed: _submit,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text(
                    "Submit",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 16, color: Colors.black),
                  ),
                ),
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                color: Color(0XFF0AA7BA),
              ),
            ),
            SizedBox(height: 20),
            FlatButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/Reg_Screen'),
                child:  
                Text.rich(TextSpan(
              text: 'New User ?   ',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 12,
                  color: Color(0XFF0AA7BA),
                  ),
              children: <InlineSpan>[
                TextSpan(
                  text: 'REGISTER',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Color(0XFFF58345)),
                )
              ])),
                
                )
          ],
        ),
      ),
    );
  }

  void _submit() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
      print(" Email: $_email \n Password: $_passWord");
      _redirectUser();
    }
  }

  void _redirectUser() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/Home_Screen');
    });
  }

  Widget _inputForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _showTitle(),
        Center(
          child: Form(
            key: _formKey,
            child: Column(children: [
              _showEmailInput(),
              _showPasswordInput(),
            ]),
          ),
        ),
        _showFormAction(),
      ],
    );
  }

  Widget _body() {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/reg_page.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.3), BlendMode.srcOver),
          alignment: Alignment.topCenter,
        )),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: _inputForm());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: false, body: _body());
  }
}
