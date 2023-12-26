import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/ModelsAndData/GroceryItem.dart';
import 'package:nutronutro/Widgets/DrawerButton.dart';
import 'package:nutronutro/Widgets/HorizontalItems.dart';
import 'package:nutronutro/Widgets/StackFoodImage.dart';
import 'package:nutronutro/Widgets/customer_deals_widget.dart';

import '../ModelsAndData/food_items.dart';
import '../Widgets/CateoryButton.dart';
import '../Widgets/SignUpTextField.dart';
import '../Widgets/Title.dart';

class CustomerMainPage extends StatefulWidget {
  const CustomerMainPage({Key? key}) : super(key: key);

  @override
  State<CustomerMainPage> createState() => _CustomerMainPageState();
}

class _CustomerMainPageState extends State<CustomerMainPage> {
  TextEditingController searching = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 252, 255),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width / 1.5,
        child: NavigationDrawer(
          children: [
            ListTile(
              leading: CircleAvatar(
                  child: Image.asset(
                'assets/Images/Logo.png',
                fit: BoxFit.fill,
              )),
              title: Text(
                'User Name',
                style: GoogleFonts.raleway(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'UserEmail@gmail.com',
                style: GoogleFonts.raleway(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              ),
            ),
            CustomDrawerButton(
                imagePath: 'DashBoard.svg',
                function: () {},
                title: 'Dashboard'),
            CustomDrawerButton(
                imagePath: 'Settings.svg', function: () {}, title: 'Settings'),
            CustomDrawerButton(
                imagePath: 'bell.svg', function: () {}, title: 'Notification'),
            CustomDrawerButton(
                imagePath: 'Insights.svg', function: () {}, title: 'Insights'),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(color: Colors.grey.shade100)),
            leading: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Image.asset('assets/Images/Ham.png')),
          )
        ],
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              child: Center(
                child: FadeInUpBig(
                  duration: const Duration(milliseconds: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 250),
                        child: Column(
                          children: [
                            const MainTitle(size: 25, text: 'Hello User'),
                            Text(
                              'Good Morning!',
                              style: GoogleFonts.raleway(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const MainTitle(
                                size: 12, text: 'CyberJaya, Malaysia'),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                    left: 15,
                                    top: 15,
                                    right: 0,
                                  ),
                                  child: SignUpTextField(
                                    iconData: Icons.search,
                                    backgroundColor: Colors.white54,
                                    controller: searching,
                                    text: 'Search for Groceries',
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 10, right: 5),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    'assets/Images/FilterPic.png',
                                    height: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 240,
                            child: GridView.builder(
                              shrinkWrap: true,
                              itemCount: foodsCategory.length,
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 0,
                                crossAxisSpacing: 0,
                              ),
                              itemBuilder: (context, index) => StackImageWidget(
                                  title: foodsCategory[index].title,
                                  imagePath: foodsCategory[index].imagePath),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          FadeInLeft(
                              child: const CustomerCard(
                            mainText: "Great Deals!",
                            pargraphText:
                                "Save on Groceries and\n more at stores near you",
                            buttonText: 'Take me there!',
                            imagePath: 'assets/Images/SavingPig.png',
                          )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(
                                      right: 195, left: 20),
                                  child: const MainTitle(
                                      size: 20, text: 'Categories')),
                              InkWell(
                                radius: 0,
                                onTap: () {
                                  print('object');
                                },
                                child: Text(
                                  'See all',
                                  style:
                                      GoogleFonts.raleway(color: Colors.blue),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 70,
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CategoryToggle(
                                  function: () {},
                                  picturePath: 'assets/SVGs/2.svg',
                                ),
                                CategoryToggle(
                                  function: () {},
                                  picturePath: 'assets/SVGs/FoodIcons.svg',
                                ),
                                CategoryToggle(
                                  function: () {},
                                  picturePath: 'assets/SVGs/FoodIcons3.svg',
                                ),
                                CategoryToggle(
                                  function: () {},
                                  picturePath: 'assets/SVGs/FoodIcons4.svg',
                                ),
                                CategoryToggle(
                                  function: () {},
                                  picturePath: 'assets/SVGs/FoodIcons5.svg',
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 0),
                          BuildHorizontal(
                              rightMargin: 0,
                              listOfItems: groceryItems,
                              mainTitle: '',
                              fontSize: 20),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                right: MediaQuery.of(context).size.width / 4,
                              ),
                              child: const MainTitle(
                                  size: 20,
                                  text: 'Based on Your Order History')),
                          const SizedBox(
                            height: 25,
                          ),
                          BuildHorizontal(
                              rightMargin:
                                  MediaQuery.of(context).size.width / 1.5,
                              listOfItems: groceryItems,
                              mainTitle: 'Herbs and Spices',
                              fontSize: 12),
                          const SizedBox(
                            height: 15,
                          ),
                          BuildHorizontal(
                              rightMargin:
                                  MediaQuery.of(context).size.width / 1.35,
                              listOfItems: groceryItems,
                              mainTitle: 'Vegetables ',
                              fontSize: 12),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  child: const MainTitle(
                                      size: 24, text: 'Vendors')),
                              InkWell(
                                onTap: () {
                                  print('Move to All Vendors Page');
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 25),
                                  child: Text(
                                    'All Services',
                                    style: GoogleFonts.raleway(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
