import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:real_state_ui/common/app_styles.dart';

import '../common/size_config.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding8,
          ),
          height: 43,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(
              horizontal: kPadding20
          ),
          child: Row(
            children: [

              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price',style: kRalewayRegular.copyWith(
                    color: kGrey85,
                    fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                  ),),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical!*0.5,
                  ),

                  Text('25,000,000.00/year',style: kRalewayRegular.copyWith(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal!*4,
                  ),),

                ],
              )),
              GestureDetector(
                onTap: (){
                  print('rent a car');
                },
                child: Container(
                  height: 43,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          kBorderRadius10
                      ),
                      gradient: kLinearGradientBlue
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: kPadding24
                  ),
                  child: Center(
                    child: Text('Rent Now',style: kRalewaySemibold.copyWith(
                        color: kWhite,
                        fontSize: SizeConfig.blockSizeHorizontal!*4
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),

      ),
   body: SafeArea(
     child: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(
           horizontal: kPadding20,
           vertical: kPadding8
         ),
         child: Column(
           children: [
             Container(
               height: 319,
               width: double.infinity,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(kBorderRadius20),
                 boxShadow: [
                   BoxShadow(
                     spreadRadius: 0,
                     offset: const Offset(0, 18),
                     blurRadius: 18,
                     color: kBlack.withOpacity(0.1),
                   ),
                 ],
                 image: const DecorationImage(
                     fit: BoxFit.cover,
                     image: NetworkImage('https://cdn.pixabay.com/photo/2016/03/20/10/23/cannstadt-1268304_1280.jpg'))
               ),
                child: Stack(
             children: [
             Align(
             alignment: Alignment.bottomCenter,
               child: Container(
                 height: 200,
                 decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(kBorderRadius20),
                       bottomRight: Radius.circular(kBorderRadius20),
                     ),
                     gradient: kLinearGradientBlack
                   // gradient: kLinearGradientBlack
                 ),
               ),
             ),
               Padding(padding: const EdgeInsets.all(kPadding20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       CircleAvatar(
                         radius: 17,
                         backgroundColor: kBlack.withOpacity(0.24),
                         child: SvgPicture.asset('assets/icon_arrow_back.svg'),
                       ),
                       CircleAvatar(
                         radius: 17,
                         backgroundColor: kBlack.withOpacity(0.24),
                         child: SvgPicture.asset('assets/icon_bookmark.svg'),
                       ),
                     ],
                   ),
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Dreamsville House',style: kRalewaySemibold.copyWith(
                           color: kWhite,
                           fontSize: SizeConfig.blockSizeHorizontal!*4.5
                       ),),
                       SizedBox(
                         height: SizeConfig.blockSizeVertical!*0.5,
                       ),
                       Text('xwati,Murad Ali Khan',style: kRalewayRegular.copyWith(
                           color: kWhite,
                           fontSize: SizeConfig.blockSizeHorizontal!*3
                       ),),
                       SizedBox(
                         height: SizeConfig.blockSizeVertical!*1.5,
                       ),
                       Row(
                         children: [
                           Container(
                               height: SizeConfig.blockSizeHorizontal!*7,
                               width:SizeConfig.blockSizeHorizontal!*7,
                               decoration: BoxDecoration(
                                 color: kWhite.withOpacity(0.2),
                                 borderRadius: BorderRadius.circular(kBorderRadius5),
                               ),
                               padding: const EdgeInsets.all(kPadding4),
                               child: SvgPicture.asset('assets/icon_bedroom_white.svg')),
                           SizedBox(
                             width: SizeConfig.blockSizeHorizontal!*2.5,
                           ),
                           Text('6 Bedroom',style: kRalewayRegular.copyWith(
                               color: kWhite,
                               fontSize: SizeConfig.blockSizeHorizontal!*2.5
                           ),),
                           SizedBox(
                             width: SizeConfig.blockSizeHorizontal!*7.5,
                           ),

                           Row(
                             children: [
                               Container(
                                   height: SizeConfig.blockSizeHorizontal!*7,
                                   width:SizeConfig.blockSizeHorizontal!*7,
                                   decoration: BoxDecoration(
                                     color: kWhite.withOpacity(0.2),
                                     borderRadius: BorderRadius.circular(kBorderRadius5),
                                   ),
                                   padding: const EdgeInsets.all(kPadding4),

                                   child: SvgPicture.asset('assets/icon_bathroom_white.svg')),
                               SizedBox(
                                 width: SizeConfig.blockSizeHorizontal!*2.5,
                               ),
                               Text('4 Bathroom',style: kRalewayRegular.copyWith(
                                   color: kWhite,
                                   fontSize: SizeConfig.blockSizeHorizontal!*2.5
                               ),)
                             ],
                           )
                         ],

                       )


                     ],
                   )
                 ],
               ),
               )
           ],
         ),
             ),
             const SizedBox(
               height: kPadding24,
             ),
             Row(
               children: [
                 Text('Desciption',style: kRalewayMedium.copyWith(
                     color: kBlack,
                     fontSize: SizeConfig.blockSizeHorizontal!*4
                 ),)

               ],
             ),
             const SizedBox(
               height: kPadding24,
             ),
             ReadMoreText('The 3 level house that has modern design ,'
                 'has a large pool and a garage that fits up to four cars'
                 ' the three level house that has a modern design '
                 'has a large pool and a garage that fits upto four cars..',
                 trimLines: 2,
               trimMode: TrimMode.Line,
               delimiter: '...',
               trimCollapsedText: 'show more',
               trimExpandedText: 'show less',
               style: kRalewayRegular.copyWith(
                 color: kGrey85,
                 fontSize: SizeConfig.blockSizeHorizontal!*3
               ),
               moreStyle: kRalewayRegular.copyWith(
                   color: kBlue,
                   fontSize: SizeConfig.blockSizeHorizontal!*3
               ),
               lessStyle: kRalewayRegular.copyWith(
                   color: kBlue,
                   fontSize: SizeConfig.blockSizeHorizontal!*3
               ),
                 ),
             const SizedBox(
               height: kPadding24,
             ),
             Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                    const CircleAvatar(
                       radius: 20,
                       backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/03/26/20/35/young-man-1281282_1280.jpg'),
                     backgroundColor: kBlue,
                     ),
                     SizedBox(
                       width: SizeConfig.blockSizeHorizontal!*4,
                     ),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Murad Ali Khan',style: kRalewayMedium.copyWith(
                             color: kBlack,
                             fontSize: SizeConfig.blockSizeHorizontal!*4
                         ),),
                         SizedBox(
                           height:SizeConfig.blockSizeVertical!*0.2,
                         ),
                         Text('Owner',style: kRalewayMedium.copyWith(
                             color: kBlack,
                             fontSize: SizeConfig.blockSizeHorizontal!*2.5
                         ),),
                       ],
                     )

                   ],
                 ),
                 Row(
                   children: [
                     Container(
                       height: 28,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(kBorderRadius5),
                         color: kBlue.withOpacity(0.5)
                       ),
                       child: SvgPicture.asset('assets/icon_phone.svg'),
                     ),
                     SizedBox(
                       width: SizeConfig.blockSizeHorizontal!*4,
                     ),
                     Container(
                       height: 28,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(kBorderRadius5),
                           color: kBlue.withOpacity(0.5)
                       ),
                       child: SvgPicture.asset('assets/icon_message.svg'),
                     )
                   ],
                 ),
               ],
             ),
            const SizedBox(
               height: kPadding24,
             ),
             Row(
               children: [
                 Text('Gallery',style: kRalewayMedium.copyWith(
                     color: kBlack,
                     fontSize: SizeConfig.blockSizeHorizontal!*4
                 ),),
               ],

             ),
             const SizedBox(
               height: kPadding24,
             ),
             GridView.builder(
               physics: NeverScrollableScrollPhysics(),
               padding: EdgeInsets.zero,
               shrinkWrap: true,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 4,
                 crossAxisSpacing: kPadding16,
                 childAspectRatio: 1
               ),
               itemCount: 4,
               itemBuilder: ( BuildContext context,int index){
                 return Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(kBorderRadius10),
                     color: kBlue,
                     image: const DecorationImage(
                         fit: BoxFit.cover,
                         image: NetworkImage('https://cdn.pixabay.com/photo/2022/09/24/13/14/villa-7476390_1280.jpg'))
                   ),
                   child:Container(
                     decoration: BoxDecoration(
                       color: index==4-1?kBlack.withOpacity(0.3):null,
                       borderRadius: BorderRadius.circular(kBorderRadius10),
                     ),
                     child: Center(
                       child: index==4-1?Text('+5',style: kRalewayMedium.copyWith(
                           color: kWhite,
                           fontSize: SizeConfig.blockSizeHorizontal!*5
                       ),):null
                     ),
                   ),
                 );
               },
             ),
             const SizedBox(
               height: kPadding24,
             ),
             Container(
               height: 161,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(kBorderRadius20),
                 image:const DecorationImage(
                     fit: BoxFit.cover,
                     image: AssetImage('assets/map_sample.png'))
               ),
               child: Stack(
                 children: [
                   Align(
                     alignment: Alignment.bottomCenter,
                     child: Container(
                       height: 161,
                       decoration: BoxDecoration(

                           borderRadius: BorderRadius.only(
                             bottomLeft: Radius.circular(kBorderRadius20),
                             bottomRight: Radius.circular(kBorderRadius20),
                           ),
                           gradient: kLinearGradientWhite
                         // gradient: kLinearGradientBlack
                       ),
                     ),
                   )
                 ],
               ),
             ),
            const SizedBox(
               height: kPadding24,
             ),

           ],
         ),
       ),
     ),
   ),

    );
  }
}
