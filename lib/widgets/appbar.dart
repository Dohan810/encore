import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_encore/constants.dart';
import 'package:my_encore/pages/home/home_page.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final List<Map<String, dynamic>> topTabs;
  final TabController topTabController;
  final Widget child;
  CustomAppBar(
      {@required this.title, this.topTabs, this.topTabController, this.child});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  double _getAppBarSize() {
    if (widget.topTabs != null) return 120;

    return 80;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> arr = [];
    List<Widget> arrView = [];

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height - _getAppBarSize() - 50;

    arr.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.canPop(context)
                  ? Navigator.of(context).pop()
                  : Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
            },
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          IconButton(
            icon: Icon(Icons.logout_rounded, color: Colors.white),
            onPressed: () {},
            //onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );

    if (widget.topTabs != null) {
      List<Widget> tempTopBar = [];
      List<Widget> tempTopView = [];

      for (var i = 0; i < widget.topTabs.length; i++) {
        String key = widget.topTabs[i].keys
            .toString()
            .replaceAll("(", "")
            .replaceAll(")", "");

        Widget value = widget.topTabs[i][key];
        tempTopBar.add(Tab(text: key));
        tempTopView.add(value);
      }

      arr.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Center(
            child: Container(
              height: 30,
              child: DefaultTabController(
                length: widget.topTabs.length,
                child: TabBar(
                  controller: widget.topTabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: CircleTabIndicator(color: Colors.white, radius: 4),
                  isScrollable: true,
                  labelColor: Colors.white,
                  tabs: tempTopBar,
                ),
              ),
            ),
          ),
        ),
      );

      arrView.add(
        Container(
          width: _width,
          height: _height,
          child: TabBarView(
            controller: widget.topTabController,
            children: tempTopView,
          ),
        ),
      );
    }

    if (widget.child != null) {
      arrView.add(widget.child);
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: _getAppBarSize(),
              decoration: kAppBarBoxDecorations,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: arr,
                ),
              ),
            ),
            Container(
              height:
                  MediaQuery.of(context).size.height - _getAppBarSize() - 50,
              child: ListView(
                children: arrView,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color color, @required double radius})
      : _painter = _CirclePainter(color, radius);

  @override
  BoxPainter createBoxPainter([onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size.width / 2, cfg.size.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
