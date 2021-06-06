import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/Data/people.dart';

class Dialog_Screen extends StatefulWidget {
  @override
  _Dialog_Screen_State createState() => _Dialog_Screen_State();
}

class _Dialog_Screen_State extends State<Dialog_Screen> {
  String getname = '';
  String searchname = '';
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: ListView(
          children: [
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'Material彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {_MaterialDialog(context)},
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'Cupertino彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {_CupertinoDialog(context)},
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                '自訂義彈跳視窗,你的名子:$getname',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {
                _GeneralDialog(context).then((value) => {
                      setState(() => {
                            if (value != null) {getname = value as String}
                          }),
                    }),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'About彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {
                _AboutDialog(context),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'License彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {
                _LicenseDialog(context),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'BottomSheet彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {
                _BottomSheetDialog(context),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'MaterialModalBottom彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {
                _MaterialModalBottomDialog(context),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'CupertinoModalBottom彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {
                _CupertinoModalBottomDialog(context),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'Menu彈跳視窗',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {

                _MenuDialog(context),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.grey.withOpacity(0.5);
                    return Colors.white; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'Search彈跳視窗,搜尋結果:$searchname',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () => {

                _SearchDialog(context).then((value) => setState(() =>{searchname = value!})),
              },
            ),
            Divider(
              thickness: 5,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

void _MaterialDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => new AlertDialog(
      title: new Text("Material Dialog"),
      content: new Text("這是Material彈跳視窗"),
      actions: [
        ElevatedButton(
            onPressed: () => {Navigator.of(context).pop()}, child: Text('取消')),
        ElevatedButton(
            onPressed: () => {Navigator.of(context).pop()}, child: Text('確認')),
      ],
    ),
  );
}

void _CupertinoDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => new CupertinoAlertDialog(
      title: new Text("Cupertino Dialog"),
      content: new Text("這是Cupertino彈跳視窗"),
      actions: [
        ElevatedButton(
            onPressed: () => {Navigator.of(context).pop()}, child: Text('取消')),
        ElevatedButton(
            onPressed: () => {Navigator.of(context).pop()}, child: Text('確認')),
      ],
    ),
  );
}

Future<Object?> _GeneralDialog(BuildContext context) {
  List<String> _name = Name;
  String search = '';

  return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      //是否可以點選背景關閉
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.white.withOpacity(.5),
      //背景顏色
      transitionDuration: Duration(milliseconds: 200),
      //動畫時長
      transitionBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return ScaleTransition(scale: animation, child: child);
      },
      //構建進出動畫，預設動畫是漸隱漸顯
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Scaffold(
          body: StatefulBuilder(builder: (context, state) {
            _name = Name.where((element) => element.contains(search)).toList();//模糊查詢
            return Container(
              height: MediaQuery.of(context).size.height - 5,//設定高度螢幕減5
              width: MediaQuery.of(context).size.width - 5,//設定寬度螢幕減5
              color: Colors.white,//設定背景為白色
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,//靠右邊
                children: [
                  Text(
                    '自訂義彈跳視窗',
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  Divider(
                    thickness: 5,
                    color: Colors.orange,
                  ),
                  TextFormField(
                      maxLength: 20,
                      minLines: 1,
                      maxLines: 1,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: '輸入關鍵字',
                        labelText: '人名',
                      ),
                      onChanged: (value) {
                        state(() => {search = value});//刷新資畫面
                      }),
                  Divider(
                    thickness: 5,
                    color: Colors.green,
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,//垂直滾輪
                        shrinkWrap: true,
                        itemCount: _name.length,//共幾筆
                        itemBuilder: (context, i) {
                          return Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text(_name[i]),
                                onTap: () => {Navigator.pop(context, _name[i])},
                              ),
                              Divider(),
                            ],
                          );
                        }),
                  ),
                  Text(
                    '總筆數:${_name.length}',
                    textAlign: TextAlign.right,
                    style:
                        TextStyle(color: Colors.lightBlueAccent, fontSize: 15),
                  ),
                  Divider(
                    thickness: 5,
                    color: Colors.red,
                  ),
                  ButtonBar(
                    children: [
                      TextButton(
                          onPressed: () => {Navigator.of(context).pop()},
                          child: Text('取消')),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.pressed))
                                return Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.5);
                              return null; // Use the component's default.
                            },
                          ),
                        ),
                        child: Text(
                          '確認',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () => {Navigator.of(context).pop()},
                      ),
                    ],
                    alignment: MainAxisAlignment.spaceBetween,
                  )
                ],
              ),
            );
          }),
        );
      });
}

void _AboutDialog(BuildContext context) {
  showAboutDialog(
    context: context,

    applicationIcon: Icon(Icons.account_balance_outlined,size: 100,),
    applicationName: '應用程式',
    applicationVersion: '1.0.0',
    applicationLegalese: 'copyright 123456789',
    children: <Widget>[
    Text(''),
    ],
  );
}

void _LicenseDialog(BuildContext context) {
  showLicensePage(
    context: context,
    applicationIcon: Icon(Icons.account_balance_outlined,size: 100,),
    applicationName: '應用程式',
    applicationVersion: '1.0.0',
    applicationLegalese: 'copyright 123456789',
  );
}

void _BottomSheetDialog(BuildContext context) {
  showBottomSheet(
      context: context,
      backgroundColor: Colors.lightGreenAccent,
      elevation:20,
      shape: CircleBorder(),//形狀
      builder: (context) {
        return Container(height: 200);
      });
}

void _MaterialModalBottomDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    elevation: 10,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    builder: (BuildContext context) {
      return Container(
        height: 200,
        color: Colors.amber,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text('Modal BottomSheet'),
              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        ),
      );
    },
  );
}

void _CupertinoModalBottomDialog(BuildContext context) {
  showCupertinoModalPopup(
      context: context,
      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('提示'),
          message: Text('是否要刪除當前項？'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('刪除'),
              onPressed: () {},
              isDefaultAction: true,
            ),
            CupertinoActionSheetAction(
              child: Text('暫時不刪'),
              onPressed: () {},
              isDestructiveAction: true,
            ),
          ],
        );
      }
  );
}

void _MenuDialog(BuildContext context) {

  showMenu(
      context: context,
      position: RelativeRect.fill,
      items: <PopupMenuEntry>[
        PopupMenuItem(child: Text('語文')),
        PopupMenuDivider(),
        CheckedPopupMenuItem(
          child: Text('數學'),
          checked: true,
        ),
        PopupMenuDivider(),
        PopupMenuItem(child: Text('英語')),
      ]);
}

Future<String?> _SearchDialog(BuildContext context)  {
 return  showSearch(context: context, delegate: CustomSearchDelegate());

}
class CustomSearchDelegate extends SearchDelegate<String>{
  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme;
  }

  @override//建立搜尋框清除按鈕
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override //建立搜尋框
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back,color: Colors.white,),
      onPressed: (){
        close(context, '');
      },
    );
  }

  @override//搜尋結果
  Widget buildResults(BuildContext context) {
    var data = Name.where((element) => element.contains(query)).toList();
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(data[index]),
          onTap: () {
            close(context, data[index]);
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount:data.length,
    );
  }

  @override //顯示選項
  Widget buildSuggestions(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(Name[index]),
          onTap: () {
            close(context, Name[index]);//將選項名稱放入搜尋欄位
          },
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount:Name.length,
    );
  }

}
