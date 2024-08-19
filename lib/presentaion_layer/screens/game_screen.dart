import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoegame/presentaion_layer/widgets/widgets.dart';

import '../../buisness_layer/cubit/cubit.dart';
import '../../buisness_layer/cubit/state.dart';

class GameScreen extends StatelessWidget {
  @override
  ScrollController controllerr = ScrollController();
  Widget build(BuildContext context) {
    var cubit = AppCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildRowDetails(context),
              Padding(
                padding: const EdgeInsets.only(bottom: 40,right: 10,left: 10),
                child: Container(
                  height: 398,
                  width: 398,
                  padding: const EdgeInsetsDirectional.only(
                      start: 20, end: 20, top: 20, bottom: 5),

                  child: BlocBuilder<AppCubit,AppState>(
                    builder: (context,state){
                      return GridView.builder(
                        controller: controllerr,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5),
                        itemBuilder: (context, index) =>GestureDetector(
                            onTap: () {
                              AppCubit.get(context).handleTab(index, context);
                            },
                            child: _buildGameArea(cubit.xO[index],context,index)),
                        itemCount: 9,
                      );
                    },
                  ),
                ),
              ),
             buildDefauldButton(onpress: (){}, text: 'End Game', height: 56, width: 322, color: Color(0xFFFF0000))
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildGameArea(String x,context,int index) {
    return Container(
      height: 300,
      width: 300,
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
         color:  Color(0XFFBAF9FF)
      ),
      child: AppCubit.get(context).xO[index]!=''?Image(
        height: 61.45,
          width: 61,
          image: AssetImage('${AppCubit.get(context).xO[index]=='O'?'assets/image/imageo.png':'assets/image/ximage.png'}')):Container(),
    );
  }

  Widget _buildRowDetails(context) => Padding(
    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
    child: BlocBuilder<AppCubit,AppState>(
      builder: (context,state){
        return Row(
          children: [
            _buildContainer(),
            const Spacer(),
            Text(
              'VS.',
              style: TextStyle(
                fontSize: 58,
                color: Color(0xFF54A4E7),
                fontWeight: FontWeight.bold
              ),
            ),
            const Spacer(),
            _buildContainer(),
          ],
        );
      },

    ),
  );

  Widget _buildContainer() {

    return Column(
      children: [
        CircleAvatar(
          radius: 46,
          backgroundColor: Color(0xFFBAF9FF),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              'assets/image/profile.png'
            ),
          ),
        ),
        Text(
          '0',
          style: TextStyle(
            color: Color(0xFFF8793B),
            fontWeight: FontWeight.bold,
            fontSize: 40
          ),
        )
      ],
    );
  }

  Widget _buildContainerSecound(String name,context) {

    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadiusDirectional.circular(20),
          border: AppCubit.get(context).isPlayerOTurn == false ? Border.all(color: Colors.white, width: 3) :const Border()),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const  Icon(
            Icons.person,
            color: Colors.white,
            size: 60,
          ),
          Text(
            ' ${name}',
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
        ],
      ),
    );
  }



}