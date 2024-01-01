import 'package:ayoub_baali/core/constants/app_color.dart';
import 'package:flutter/material.dart';



class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(

      children: [
        Expanded(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  margin: const EdgeInsets.only(left: 20),
                  decoration:const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.secondaryColor
                  ),
                  child: const Icon(Icons.person,color: Colors.white,size: 50,),
                ),
                const SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SAMEER 07',style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 5,),
                    const Text('Consultant Manager',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),),
                    const SizedBox(height: 5,),
                    const Text('Membership: Daimond',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),),
                    const SizedBox(height: 5,),
                    const Text('Upgrade Expires: 31 Dec, 2025',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 8),),

                  ],
                ),
              ],
            )
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.settings,color: AppColors.secondaryColor,size: 35,),
              Text.rich(
                TextSpan(
                  //text: 'Joined on: ',
                  children: [
                    TextSpan(text: 'Joined on: ',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                    TextSpan(text: '07.06.2021',style: TextStyle(fontSize: 8))
                  ],

                ),
              ),
              Text.rich(
                TextSpan(
                  //text: 'Joined on: ',
                  children: [
                    TextSpan(text: 'By user ID: ',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize:10,fontWeight: FontWeight.bold,color: Colors.black)),
                    const TextSpan(text: '42245',style: TextStyle(fontSize: 8))
                  ],

                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
