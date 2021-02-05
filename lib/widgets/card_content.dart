import 'package:flutter/material.dart';
import 'multicity_inputs.dart';
import 'price_tab.dart';

class CardContent extends StatefulWidget {
  @override
  _CardContentState createState() => _CardContentState();
}

class _CardContentState extends State<CardContent> {
  bool showInput = true;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.all(8.0),
      child: DefaultTabController(
        length: 3,
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return Column(
            children: <Widget>[
              _buildTabBar(),
              _buildContentContainer(viewportConstraints),
            ],
          );
        }),
      ),
    );
  }

  Widget _buildTabBar() {
    return Stack(
      children: <Widget>[
        Positioned.fill(
          top: null,
          child: Container(
            height: 2.0,
            color: Color(0xFFEEEEEE),
          ),
        ),
        TabBar(
          tabs: [
            Tab(text: 'Flight'),
            Tab(text: 'Train'),
            Tab(text: 'Bus'),
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
      ],
    );
  }

  Widget _buildContentContainer(BoxConstraints viewportConstraints) {
    return Expanded(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(minHeight: viewportConstraints.maxHeight - 48.0),
          child: IntrinsicHeight(
            child: showInput
                ? _buildMulticityTab()
                : PriceTab(
                    height: viewportConstraints.maxHeight - 48.0,
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildMulticityTab() {
    return Column(
      children: <Widget>[
        MulticityInput(),
        Expanded(
          child: Container(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
          child: FloatingActionButton(
            onPressed: () => setState(() => showInput = false),
            child: Icon(
              Icons.timeline,
              size: 36.0,
            ),
          ),
        )
      ],
    );
  }
}
