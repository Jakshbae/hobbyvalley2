import 'package:flutter/material.dart';
import 'package:hobby_valley2/screens/cart_page.dart';
import 'package:hobby_valley2/widgets/home_bottom_bar.dart';
import 'package:hobby_valley2/widgets/items_widget.dart';


class HomeScreen extends StatefulWidget {



  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
        child: Padding(
        padding: EdgeInsets.only(top: 15),
    child: ListView(
    children: [
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    InkWell(
    onTap: () {},
    child: Icon(
    Icons.sort_rounded,
    color: Color(0xFF7986CB),
    size: 35,
    ),
    ),
    InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return CartPage();
          },
        ),
      );
    },
    child: Icon(
    Icons.shopping_cart,
    color: Color(0xFF7986CB),
    size: 35,
    ),
    )
    ],
    ),
    ),
    SizedBox(height: 30),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: Text(
    "Hello!",
    style: TextStyle(
    color:Color(0xFF7986CB),
    fontSize: 30,
    fontWeight: FontWeight.w500,
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    width:MediaQuery.of(context).size.width,
    height: 60,
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color:Colors.black12,
    borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: "Find ",
    hintStyle: TextStyle(
    color: Color(0xFF7986CB),
    ),
    prefixIcon: Icon(
    Icons.search,
    size: 30,
    color: Color(0xFF7986CB),
    ),
    ),
    ),
    ),
    TabBar(
    controller: _tabController,
    labelColor: Color(0xFF5C6BC0),
    unselectedLabelColor:Color(0xFF7986CB),
    isScrollable: true,
    indicator: UnderlineTabIndicator(
    borderSide: BorderSide(
    width: 3,
    color: Color(0xFF5C6BC0),
    ),
    insets: EdgeInsets.symmetric(horizontal: 16),
    ),
    labelStyle:
    TextStyle(fontSize: 18, fontWeight:FontWeight.w500),
    labelPadding: EdgeInsets.symmetric(horizontal: 20),
    tabs: [
    Tab(text: "Knitting"),
    Tab(text: "Painting"),
    Tab(text: "Scrapbooking"),
      Tab(text: "Beading"),
    ],
    ),
      SizedBox(height: 10),
      Center(
        child: [
          ItemsWidget(),
          ItemsWidget(),
          ItemsWidget(),
          ItemsWidget(),

        ][_tabController.index],
      ),
    ],
    ),
    ),
        ),


      bottomNavigationBar: HomeBottomBar(),
    );
  }
}