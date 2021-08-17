import 'package:flutter/material.dart';
import 'package:my_encore/pages/home/children/calendar_page.dart';
import 'package:my_encore/pages/home/children/contact_us_page.dart';
import 'package:my_encore/pages/home/children/details_page.dart';
import 'package:my_encore/pages/home/children/news_page.dart';
import 'package:my_encore/widgets/appbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(initialIndex: 0, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: "Home",
      topTabs: [
        {"Details": DetailsPage()},
        {"News": NewsDetails()},
        {"Calendar": CalendarDetails()},
        {"Contact Us": ContactUsPage()},
      ],
      topTabController: _controller,
    );
  }
}
