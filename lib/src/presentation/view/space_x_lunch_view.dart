// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:sizer/sizer.dart';
import 'package:space_x_latest_launch/src/core/components/expansion_tile/custom_expansion_tile.dart';
import 'package:space_x_latest_launch/src/core/contants/app_contants.dart';

import 'package:space_x_latest_launch/src/core/theme/colors.dart';

import '../bloc/space_x_launch_bloc.dart';

class SpaceXLunchView extends StatefulWidget {
  const SpaceXLunchView({Key? key}) : super(key: key);

  @override
  _SpaceXLunchViewState createState() => _SpaceXLunchViewState();
}

class _SpaceXLunchViewState extends State<SpaceXLunchView> {
  @override
  void initState() {
    context.read<SpaceXLaunchBloc>().add(const GetAllSpaceXList());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _content(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: const Text('SpaceX Lunch List'),
      elevation: 0,
      backgroundColor: ColorTones.lightBlue,
    );
  }

  Widget _content() {
    return BlocBuilder<SpaceXLaunchBloc, SpaceXLaunchState>(
      builder: (context, state) {
        if (state is SpaceXLaunchBlocLoaded) {
          Future loadList() async {
            await Future.delayed(const Duration(milliseconds: 400));
            List data = state.getSpaceXList;
            setState(() => data = data);
          }

          return RefreshIndicator(
            onRefresh: loadList,
            child: ListView.separated(
                padding: EdgeInsets.all(5.w),
                separatorBuilder: (context, index) => seperatorSize(),
                shrinkWrap: true,
                itemCount: state.getSpaceXList.length,
                primary: false,
                itemBuilder: (context, index) {
                  //Null Safety Name

                  String name;
                  if (state.getSpaceXList[index].name != null) {
                    name = state.getSpaceXList[index].name!;
                  } else {
                    name = 'NO NAME';
                  }
                  //Null Safety Details
                  String details;
                  if (state.getSpaceXList[index].details != null) {
                    details = state.getSpaceXList[index].details!;
                  } else {
                    details = 'Details not available';
                  }

                  //Null Safety SmallImage
                  String smallImage;
                  if (state.getSpaceXList[index].links!.patch!.small != null) {
                    smallImage =
                        state.getSpaceXList[index].links!.patch!.small!;
                  } else {
                    smallImage = ApplicationConstants.noSmallUrl;
                  }
                  //Null Safety LargeImage
                  String largeImage;
                  if (state.getSpaceXList[index].links!.patch!.large != null) {
                    largeImage =
                        state.getSpaceXList[index].links!.patch!.large!;
                  } else {
                    largeImage = ApplicationConstants.noLargeUrl;
                  }

                  //Null Safety DateUtc
                  String date;
                  if (state.getSpaceXList[index].dateUtc != null) {
                    date = DateFormat("yyyy-MM-dd hh:mm:ss")
                        .format(state.getSpaceXList[index].dateUtc!);
                  } else {
                    date = 'Failed to load date';
                  }

                  return ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CustomExpansionTile(
                      backgroundColor: ColorTones.sandGrey,
                      collapsedBackgroundColor: ColorTones.sandGrey,
                      textColor: ColorTones.seaBlue,
                      expansionTitle: name,
                      subTitle: Text(date.substring(0, 10)),
                      children: [
                        ListTile(title: Text(details)),
                        Image.network(
                          smallImage,
                          height: 15.h,
                          width: 10.w,
                        ),
                        Image.network(
                          largeImage,
                          height: 35.h,
                          width: 25.w,
                        ),
                      ],
                    ),
                  );
                }),
          );
        } else if (state is SpaceXLaunchBlocLoading) {
          return Center(
            child: CircularProgressIndicator.adaptive(
                backgroundColor: ColorTones.red),
          );
        } else if (state is SpaceXLaunchBlocEmpty) {
          Container(
            color: ColorTones.rosePink,
            child: const Text('This page is empty'),
          );
        } else if (state is SpaceXLaunchBlocError) {
          Container(
            color: ColorTones.seaBlue,
            child: const Text('ERROR'),
          );
        }
        return Container();
      },
    );
  }

  Widget seperatorSize() {
    return SizedBox(
      height: 2.5.h,
    );
  }
}
