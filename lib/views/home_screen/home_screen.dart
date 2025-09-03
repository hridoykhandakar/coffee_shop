import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:coffee_shop/constants/colors.dart';
import 'package:coffee_shop/views/home_screen/widgets/all_coffee.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // main column
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xff313131), Color(0xff111111)],
                    ),
                  ),
                  height: 280,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Location and profile
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Location",
                                style: TextStyle(
                                  color: AppColors.textLight,
                                  fontSize: 12,
                                ),
                              ),

                              Row(
                                children: [
                                  Text(
                                    "Bilzen, Tanjungbalai",
                                    style: TextStyle(
                                      color: AppColors.normalActive,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: AppColors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // Search and filter
                        SizedBox(height: 20),

                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search coffee",
                                  hintStyle: TextStyle(
                                    color: AppColors.textLight,
                                    fontSize: 14,
                                  ),
                                  filled: true,
                                  fillColor: AppColors.normalHover,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: AppColors.white,
                                  ),
                                ),
                                onTapOutside: (event) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                              ),
                            ),
                            SizedBox(width: 16),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                minimumSize: Size(52, 52),
                              ),
                              child: Icon(Icons.tune, color: AppColors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: -70,
                  left: 24,
                  right: 24,

                  child: Image.asset(
                    "assets/images/Banner.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            SizedBox(height: 95),
            Expanded(
              child: Container(
                color: AppColors.whiteHover,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Column(
                    children: [
                      ButtonsTabBar(
                        backgroundColor: AppColors.primary,
                        unselectedBackgroundColor: AppColors.unSelectTab,

                        controller: _tabController,
                        onTap: (index) {
                          _tabController.animateTo(index);
                        },
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                        buttonMargin: EdgeInsets.only(right: 32),

                        tabs: [
                          Tab(text: 'All Coffee'),
                          Tab(text: 'Machiato'),
                          Tab(text: 'Latte'),
                          Tab(text: "Americano"),
                          Tab(text: 'Americano'),
                          Tab(text: 'Americano'),
                        ],
                      ),
                      SizedBox(height: 16),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            AllCoffee(),
                            Center(child: Text('Content 2')),
                            Center(child: Text('Content 3')),
                            Center(child: Text('Content 3')),
                            Center(child: Text('Content 3')),
                            Center(child: Text('Content 4')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildTab(String text) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 8), // gap between tabs
    child: Tab(text: text),
  );
}
