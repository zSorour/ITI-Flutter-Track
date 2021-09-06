import 'package:flutter/material.dart';
import 'package:sot_cooking_timer/models/foodItem.dart';
import 'package:sot_cooking_timer/pages/cookTimer.dart';
import 'package:sot_cooking_timer/pages/infoTabPage.dart';

List<FoodItem> foodItems = [
  FoodItem('Fish', 'assets/img/fish.png', 30, 40, 120),
  FoodItem('Trophy Fish', 'assets/img/trophyFish.png', 80, 90, 180),
  FoodItem('Meat', 'assets/img/meat.png', 50, 60, 120),
  FoodItem('Kraken', 'assets/img/kraken.png', 100, 120, 240),
  FoodItem('Megalodon', 'assets/img/megalodon.png', 100, 120, 240)
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          child: Container(
            color: Colors.black54,
            child: ListView(
              children: [
                for (int i = 0; i < foodItems.length; i++)
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Image.asset(foodItems[i].getImgPath()),
                      ),
                      title: Text(foodItems[i].getName()),
                      subtitle: Text(
                          'Gets cooked in ${foodItems[i].getCookedTime()} seconds'),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) =>
                                CookTimer(foodItems[i])));
                      },
                    ),
                  )
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('SoT Cooking Timer'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.av_timer),
                text: 'Cooking',
              ),
              Tab(
                icon: Icon(Icons.info),
                text: 'Info',
              ),
            ],
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: TabBarView(
            children: [
              ListView(
                children: [
                  for (int row = 0; row < 3; row++)
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /*
                          Kindly note that the index of the item in the foodItems list is calculated with the equation 2*row + j by observation as follows:
                          The first item in the first row has index (2*0 + 0) = 0
                          The second item in the first row has index (2*0 + 1) = 1
                          The first item in the second row has index (2*1 + 0) = 2
                          The second item in the second row has index (2*1 + 1) = 3
                          The first item in the third row has index (2*2 + 0) = 4
                          The second item in the third row has index (2*2 + 1) = 5 (which is not in the list, and that's why it is not displayed)
                          And so on...
                          */
                          for (int j = 0;
                              j < 2 && 2 * row + j < foodItems.length;
                              j++)

                            //Use Expanded widget to solve Row and ListTile issue as stated here: https://github.com/flutter/flutter/issues/55726
                            Expanded(
                              child: ListTile(
                                title: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 60,
                                      child: Image.asset(
                                          foodItems[2 * row + j].getImgPath()),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      child: Text(
                                        foodItems[2 * row + j].getName(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          CookTimer(foodItems[2 * row + j])));
                                },
                              ),
                            ),
                        ],
                      ),
                    ),
                ],
              ),
              infoTabPage()
            ],
          ),
        ),
      ),
    );
  }
}
