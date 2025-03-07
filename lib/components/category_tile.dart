import 'package:flutter/material.dart';
import "package:travel_app/models/item_list.dart";

class CategoryTile extends StatelessWidget {
  // Member Variables
  Itemlist itemlist;
  // Constructor
  CategoryTile({super.key, required this.itemlist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 150,
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(itemlist.backgroundImage),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black.withOpacity(0.4),
            ),
            width: double.infinity,
            height: 130,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 1),
                  child: Text(
                    itemlist.title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.pin_drop, color: Colors.red[400]),
                          Text(
                            itemlist.location,
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "\$${itemlist.price.toString()}",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // Under the Row
                  children: [
                    Row(
                      children: List.generate(3, (int index) {
                        return Icon(
                          Icons.star,
                          color:
                              index < itemlist.review
                                  ? Colors.yellow
                                  : Colors.grey,
                        );
                      }),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
