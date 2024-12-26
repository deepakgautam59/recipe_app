import 'package:flutter/material.dart';
import 'package:recepie_app/api/mock_yummy_service.dart';
import 'package:recepie_app/components/today_recipe_list_view.dart';
import 'package:recepie_app/components/component.dart';


class ExploreScreen extends StatelessWidget {
  final mockService = MockYummyService();
  ExploreScreen({super.key});
  
  get recipes => null;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, AsyncSnapshot<ExploreData> snapshot){
        if(snapshot.connectionState==ConnectionState.done){
          return TodayRecipeListView(recipes : recipes);
        }
        else{
          return Center(
            child: CircularProgressIndicator(),
          );
        }

      },
    );
  }
}