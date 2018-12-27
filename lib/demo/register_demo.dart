import 'package:flutter/material.dart';

class RegisterDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        //Theme主题部件
        //替换应用主题，覆盖所有设置
        data: ThemeData(
          //覆盖之前所有主题设置
          primaryColor: Colors.white,
        ),
        // data: Theme.of(context).copyWith(
        //   //覆盖当前设置，保留之前为改变设置
        //   primaryColor: Colors.purple,
        // ),

        child: Container(
          // color: Theme.of(context).primaryColor,
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterInputDemo(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class RegisterInputDemo extends StatefulWidget {
  _RegisterInputDemoState createState() => _RegisterInputDemoState();
}

class _RegisterInputDemoState extends State<RegisterInputDemo> {
  final registerfromKey = GlobalKey<FormState>(); //保存表单
  String username, password;
  bool autoValidate = false; //自动验证

  void _submitRegisterForm() {
    //提交表单，开启自动验证
    if (registerfromKey.currentState.validate()) {//执行validate()
      registerfromKey.currentState.save(); //执行onSave()
      debugPrint('username:$username');
      debugPrint('password:$password');
    } else {
      autoValidate=true;
    }

    
  }

  //验证表单逻辑
  String _validateUsernam(value) {
    if (value.isEmpty) {
      return 'Username is require';
    } else {
      return null;
    }
  }

  String _validatePassword(value) {
    if (value.isEmpty) {
      return 'Password is require';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerfromKey, //保存表单,onSave()保存表单数据
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.black),
              helperText: '',
            ),
            onSaved: (value) {
              username = value;
            },
            validator: _validateUsernam, //表单验证
            autovalidate: autoValidate, //自动验证
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.black),
              helperText: '',
            ),
            onSaved: (value) {
              password = value;
            },
            validator: _validatePassword,
            autovalidate: autoValidate,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('Register', style: TextStyle(color: Colors.white)),
              elevation: 0.0,
              onPressed: _submitRegisterForm,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    textEditingController.text = 'hi'; //默认填充文字
    textEditingController.addListener(() {
      debugPrint('input:${textEditingController.text}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter your name',
        border: OutlineInputBorder(), //InputBorder.none
        filled: true,
        fillColor: Colors.pink,
      ),

      controller: textEditingController,
      // onChanged: (value){
      //   debugPrint(value);
      // },
      onSubmitted: (value) {
        // debugPrint(value);
      },
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context)
          .accentColor, //离主题最近的颜色,accentColor设置在App里面，能拿到说明copyWith起作用了
    );
  }
}
