import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/shared/cubit/cubit.dart';

// default button is for use
Widget defaultButton(
        {double width = double.infinity,
        Color background = Colors.blue,
        bool isUpperCase = true,
        double radius = 3,
        required VoidCallback function,
        required String text}) =>
    Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        child: Text(
          isUpperCase ? text.toUpperCase() : text.toLowerCase(),
          style: TextStyle(color: Colors.white),
        ),
        onPressed: function,
      ),
    );

// default text form filed
Widget defaultFormField(
        {required TextEditingController controller,
        required TextInputType type,
        required String label,
        Function(dynamic val)? onSubmit,
        Function(dynamic val)? onChanged,
        void Function()? onTap,
        required Function(String? val) validator,
        required IconData? prefixIcon,
        VoidCallback? onEyePress,
        IconData? suffixIcon,
        bool isPassword = false,
        bool isEnabled = true}) =>
    TextFormField(
      enabled: isEnabled,
      obscureText: isPassword,
      onChanged: onChanged,
      onTap: onTap,
      onFieldSubmitted: onSubmit,
      validator: (value) => validator(value),
      controller: controller,
      // Keyboard type
      keyboardType: type,
      decoration: InputDecoration(
        // hintText: "Email Address",
        labelText: label,
        border: OutlineInputBorder(),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(icon: Icon(suffixIcon), onPressed: onEyePress)
            : null,
      ),
    );

// item

Widget buildTaskItem(Map model, context) => Dismissible(
      onDismissed: (direction) {
        AppCubit.get(context).deleteData(id: model['id']);
      },
      key: Key(model['id'].toString()),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              child: Text("${model['time']}"),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${model['title']}',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${model['date']}',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            IconButton(
              onPressed: () {
                AppCubit.get(context)
                    .updateData(status: 'done', id: model['id']);
              },
              icon: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
            ),
            IconButton(
              onPressed: () {
                AppCubit.get(context)
                    .updateData(status: 'archive', id: model['id']);
              },
              icon: Icon(
                Icons.archive,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );


   // tasks builder

Widget tasksBuilder({
  required List<Map> tasks
}) => BuildCondition(
    condition: tasks.length > 0,
    builder:(context) => ListView.separated(
      itemBuilder: (context, index) => buildTaskItem(tasks[index], context),
      separatorBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(start: 20.0),
        child: Container(
          width: double.infinity,
          height: 1.0,
          color: Colors.grey[300],
        ),
      ),
      itemCount: tasks.length,
    ),
    fallback: (context) => Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.menu,
            size: 100.0,
            color: Colors.grey,
          ),
          Text(
            'No Tasks Yet, add Some more Tasks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ),
  );


Widget buildArticleItem(article, context) => Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        width: 120.0,
        height: 120.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: NetworkImage('${article['urlToImage']}'),
                fit: BoxFit.cover
            )
        ),
      ),
      SizedBox(
        width: 20.0,
      ),
      Expanded(
        child: Container(
          height: 120.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  '${article['title']}',
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${article['publishedAt']}',
                style: TextStyle(
                    color: Colors.grey
                ),
              ),
            ],
          ),
        ),
      )
    ],
  ),
);


Widget getSeparator() => Padding(
  padding: const EdgeInsetsDirectional.only(start: 20.0),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);



Widget articleBuilder(list) => BuildCondition(
  condition: list.length > 0,
  builder: (context) => ListView.separated(
    itemBuilder: (context, index) => buildArticleItem(list[index], context),
    separatorBuilder: (context, index) => getSeparator(),
    itemCount: list.length,
    physics: BouncingScrollPhysics(),
  ),
  fallback: (context) => Center(child: CircularProgressIndicator()),
);