import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_ui/common/app_styles.dart';
import 'package:real_state_ui/View/product_detail_page.dart';
import 'package:real_state_ui/common/size_config.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> categories=[
    "Home",
    "Apartment",
    "Hotel",
    "Villa",
    "Cottage",

  ];
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
                SizeConfig().init(context);
    return Scaffold(body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:kPadding20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Location',style: kRalewayRegular.copyWith(
                        color: kGrey83,
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5
                      ),),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 0.5,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jakarta',style: kRalewayMedium.copyWith(
                              color: kBlack,
                              fontSize: SizeConfig.blockSizeHorizontal! * 5
                          ),),
                          SizedBox(
                            width:SizeConfig.blockSizeHorizontal! * 0.5 ,
                          ),
                          SvgPicture.asset('assets/icon_dropdown.svg')

                        ],
                      )

                    ],
                  ),

                  SvgPicture.asset('assets/icon_notification_has_notif.svg')

                ],
              ),
            ),
           const  SizedBox(
              height: kPadding24,
            ),
            Padding(padding:const  EdgeInsets.symmetric(horizontal: kPadding20),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      style: kRalewayRegular.copyWith(
                          color: kBlack,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3
                      ),
                      controller: TextEditingController(),
                      decoration: InputDecoration(
                          contentPadding:const EdgeInsets.symmetric(
                              horizontal: kPadding16
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(kPadding8),
                            child: SvgPicture.asset('assets/icon_search.svg'),
                          ),
                          hintText: 'Search address or near you',
                          border: kInputBorder,
                          errorBorder: kInputBorder,
                          focusedBorder: kInputBorder,
                          disabledBorder: kInputBorder,
                          enabledBorder: kInputBorder,
                          hintStyle: kRalewayRegular.copyWith(
                              color: kGrey85,
                              fontSize: SizeConfig.blockSizeHorizontal!*3
                          ),
                          filled: true,
                          fillColor: kWhiteF7
                      ),


                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal!*4,
                  ),
                  Container(
                    height: 49,
                    width: 49,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                        gradient: kLinearGradientBlue
                    ),
                    child: SvgPicture.asset('assets/icon_filter.svg'),
                  ),
                ],
              )
            ),


            const SizedBox(
              height: kPadding24,
            ),
            SizedBox(
              height: 32,
              width: double.infinity,
              child: ListView.builder(
                physics:const BouncingScrollPhysics(),
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        currentIndex=index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: index==0?kPadding20:12,
                        right: index==categories.length-1?kPadding20:kPadding16

                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: kPadding16
                      ),
                      height: 34,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            offset: const Offset(0, 18),
                            blurRadius: 18,
                            color: currentIndex==index?kBlue.withOpacity(0.1):kBlue.withOpacity(0)
                          ),
                        ],
                        gradient: currentIndex==index?kLinearGradientBlue:kLinearGradientWhite,
                        borderRadius: BorderRadius.circular(kBorderRadius10)
                      ),
                      child: Center(child: Text(categories[index],style: kRalewayMedium.copyWith(
                                color: currentIndex==index?kWhite:kGrey85,
                        fontSize: SizeConfig.blockSizeHorizontal!*2.5

                      ),),),
                    ),
                  );
                  
                },
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Padding(padding:const EdgeInsets.symmetric(
              horizontal: kPadding20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Near from you',style: kRalewayMedium.copyWith(
                  color: kBlack,
                  fontSize: SizeConfig.blockSizeHorizontal!*4,
                ),),
                Text('see more',style: kRalewayRegular.copyWith(
                  color: kGrey85,
                  fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                ),),
              ],
            ),
            ),
            SizedBox(
              height: kPadding24,
            ),
            SizedBox(
              height: 272,
              child: ListView.builder(
                itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductDetailPage()));
                      },
                      child: Container(
                        height: 272,
                        width: 222,
                        margin: EdgeInsets.only(
                          left: kPadding20,
                          right: index==5-1?kPadding20:0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            kBorderRadius20,

                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: kBlack.withOpacity(0.1)
                            ),

                          ],
                          image:  DecorationImage(
                              fit: BoxFit.cover,
                              image:  NetworkImage('https://cdn.pixabay.com/photo/2016/03/20/10/23/cannstadt-1268304_1280.jpg'))
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 130,
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
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: kPadding16,
                                  vertical: kPadding20,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset('assets/icon_pinpoint.svg'),
                                      const  SizedBox(
                                          width: kPadding4,
                                        ),
                                        Text('1.8km',style: kRalewayRegular.copyWith(
                                          color: kWhite,
                                          fontSize: SizeConfig.blockSizeHorizontal!*2.5
                                        ),)

                                        
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Dreamsville House',style: kRalewayMedium.copyWith(
                                          color: kWhite,
                                          fontSize: SizeConfig.blockSizeHorizontal!*4
                                        ),),
                                        SizedBox(
                                          height: SizeConfig.blockSizeVertical!*0.5,
                                        ),
                                        Text('xwati ,Murad Ali Khan',style: kRalewayRegular.copyWith(
                                            color: kWhite,
                                            fontSize: SizeConfig.blockSizeHorizontal!*2.5
                                        ),),

                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                    
                    
                  }
              
              ),
            ),
          const   SizedBox(
              height: kPadding24,
            ),

            Padding(padding:const EdgeInsets.symmetric(
              horizontal: kPadding20,
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Best for you',style: kRalewayMedium.copyWith(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal!*4,
                  ),),
                  Text('see more',style: kRalewayRegular.copyWith(
                    color: kGrey85,
                    fontSize: SizeConfig.blockSizeHorizontal!*2.5,
                  ),),
                ],
              ),
            ),
           const SizedBox(
              height: kPadding24,
            ),
            Padding(padding: const EdgeInsets.symmetric(
              horizontal: kPadding20,
            ),
            child: ListView.builder(

              shrinkWrap: true,
              physics:NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context,index){
                return Container(
                  height: 70,
                  margin: const EdgeInsets.only(
                    bottom: kPadding24
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius10),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: kBlack.withOpacity(0.1)
                            )
                          ],
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://cdn.pixabay.com/photo/2016/03/20/10/23/cannstadt-1268304_1280.jpg'))

                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal!*4.5,
                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Orchad House',style: kRalewayMedium.copyWith(
                              color: kBlack,
                              fontSize: SizeConfig.blockSizeHorizontal!*4
                          ),),
                          SizedBox(
                            height: SizeConfig.blockSizeVertical!*0.5,
                          ),
                          Text('25,00,000.00/year',style: kRalewayMedium.copyWith(
                              color: kBlue,
                              fontSize: SizeConfig.blockSizeHorizontal!*2.5
                          ),),
                          Expanded(child:
                          Row(
                            children: [
                              SvgPicture.asset('assets/icon_bedroom.svg'),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal!*0.5,
                              ),
                              Text('6 Bedroom',style: kRalewayRegular.copyWith(
                                  color: kGrey85,
                                  fontSize: SizeConfig.blockSizeHorizontal!*2.5
                              ),),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal!*1,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icon_bathroom.svg'),
                                  SizedBox(
                                    width: SizeConfig.blockSizeHorizontal!*0.5,
                                  ),
                                  Text('4 Bathroom',style: kRalewayRegular.copyWith(
                                      color: kGrey85,
                                      fontSize: SizeConfig.blockSizeHorizontal!*2.5
                                  ),)
                                ],
                              )
                            ],

                          ))
                        ],
                      )),

                    ],
                  ),
                );
              },

            ),
            ),




          ],
        ),
      ),
    ));
  }
}
