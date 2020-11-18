import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:http/http.dart' as http;


class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String _userName, _email, _passWord;
  double height;
  double width;
  bool passwordVisible, _isSubmitting;
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
        "Register",
        textAlign: TextAlign.start,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Colors.white, fontSize: 35, fontWeight: FontWeight.normal),
      ),
    );
  }

  Widget _showUserNameInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
          onSaved: (val) => _userName = val.trim(),
          keyboardType: TextInputType.name,
          textCapitalization: TextCapitalization.words,
          validator: (value) => value.length < 6 ? "UserName too Short" : null,
          style:Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 16, color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black26,
            prefixIcon: Icon(Icons.face_outlined,color: Color(0XFF0AA7BA),),
           enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF0AA7BA)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            labelText: 'UserName',
            labelStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 16, color: Colors.white),
            hintText: "Enter UserName* ",
            hintStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 16, color: Colors.white),
          )),
    );
  }

  Widget _showEmailInput() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
          onSaved: (val) => _email = val.trim(),
           validator: _emailValidator,
          keyboardType: TextInputType.emailAddress,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 16, color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black26,
            prefixIcon: Icon(Icons.email,color: Color(0XFF0AA7BA)),
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
          onSaved: (val) => _passWord = val.trim(),
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
            prefixIcon: Icon(Icons.lock, color: Color(0XFF0AA7BA)),
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
                color: Color(0XFF0AA7BA)
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
            _isSubmitting == true
                ? CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation(Theme.of(context).accentColor),
                  )
                : Container(
                    width: mWidth() * 0.5,
                    child: RaisedButton(
                      onPressed: _submit,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
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
                    Navigator.pushReplacementNamed(context, '/Login_Screen'),
                child:  Text.rich(TextSpan(
              text: 'Existing User ?   ',
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontSize: 12,
                  color: Color(0XFF0AA7BA),
                  ),
              children: <InlineSpan>[
                TextSpan(
                  text: 'LOGIN',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Color(0XFFF58345)),
                )
              ])),)
          ],
        ),
      ),
    );
  }

  void _submit() {
    final form = _formKey.currentState;

    if (form.validate()) {
      form.save();
      print("Username: $_userName \n Email: $_email \n Password: $_passWord");
      _registerUser();
    }
  }

  void _registerUser() async {
    _redirectUser();
    _showSuccessSnack();
  }

  void _showSuccessSnack() {
    final snackbar = SnackBar(
      backgroundColor: Colors.black87,
      content: Text('User $_userName successfully created!',
          style:Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.green),),
    );
    _scaffoldKey.currentState.showSnackBar(snackbar);
    _formKey.currentState.reset();
  }

  void _showErrorSnack(String errorMsg){
     final snackbar = SnackBar(
       backgroundColor: Colors.black87,
      content: Text("Error :  $errorMsg",
          style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.red),)
    );
    _scaffoldKey.currentState.showSnackBar(snackbar);
     
    //throw Exception('Error registering: $errorMsg');
   
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
              _showUserNameInput(),
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
    return Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   title: Text("Ragistration Page"),
        // ),
        body: _body());
  }
}
