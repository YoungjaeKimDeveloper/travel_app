import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:travel_app/models/item_list.dart";
import 'package:travel_app/models/repository.dart';

class CategoryTile extends StatefulWidget {
  // Member Variables
  Itemlist itemlist;
  // Constructor
  CategoryTile({super.key, required this.itemlist});

  @override
  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Repository>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            width: 150,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.itemlist.backgroundImage),
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
                        widget.itemlist.title,
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
                                widget.itemlist.location,
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "\$${widget.itemlist.price.toString()}",
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
                                  index < widget.itemlist.review
                                      ? Colors.yellow
                                      : Colors.grey,
                            );
                          }),
                        ),
                        IconButton(
                          onPressed:
                              () => {
                                setState(() {
                                  if (!value.itemCart.contains(
                                    widget.itemlist,
                                  )) {
                                    value.addItem(widget.itemlist);
                                  } else {
                                    value.deleteItem(widget.itemlist);
                                  }
                                }),
                              },
                          icon: Icon(
                            Icons.favorite,
                            color:
                                widget.itemlist.isCart
                                    ? Colors.pink[500]
                                    : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
