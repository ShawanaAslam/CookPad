//import 'package:cookpad/view/Starting_screens/splash_screen/splash_view.dart';
import 'package:cookpad/src/view/Home_views/recipe_ingrident/recipeIngrident_view.dart';
import 'package:cookpad/src/view/Home_views/saved_recipe/savedrecipe_view.dart';
import 'package:cookpad/src/view/Home_views/search_view/search_view.dart';
import 'package:cookpad/src/view/Starting_views/splash_view/splash_view.dart';
import 'package:cookpad/src/view/auth_views/login_view/login_view.dart';
//import 'package:cookpad/src/view/auth_views/search_view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'src/view/auth_views/signup_view/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 823),
      builder: (context, child) {
        return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              // This is the theme of your application.
              //
              // TRY THIS: Try running your application with "flutter run". You'll see
              // the application has a purple toolbar. Then, without quitting the app,
              // try changing the seedColor in the colorScheme below to Colors.green
              // and then invoke "hot reload" (save your changes or press the "hot
              // reload" button in a Flutter-supported IDE, or press "r" if you used
              // the command line to start the app).
              //
              // Notice that the counter didn't reset back to zero; the application
              // state is not lost during the reload. To reset the state, use hot
              // restart instead.
              //
              // This works for code too, not just values: Most code changes can be
              // tested with just a hot reload.
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: WidgetOne()
            //    RecipeIngridentView()
            //SavedRecipeView()
            // SearchView()
            //SignUpView()
            //LoginView()
            //SplashView()
            //const MyHomePage(title: 'Flutter Demo Home Page'),
            );
      },
    );
  }
}

class WidgetOne extends StatelessWidget {
  const WidgetOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //height: 150,
              width: double.infinity,
              // color: Colors.red,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 12, right: 12),
                    child: Container(
                      //height: 120,

                      width: double.infinity,
                      child: const Card(
                        shadowColor: Colors.black87,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 15.0,
                            top: 15,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Steak with tomato'),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('data')
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 38.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.amber,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.punch_clock),
                            SizedBox(
                              width: 10,
                            ),
                            Text('data')
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

