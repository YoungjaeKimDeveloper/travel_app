import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/models/item_list.dart';

class FavoriteTile extends StatefulWidget {
  Itemlist itemlist;
  FavoriteTile({super.key, required this.itemlist});

  @override
  State<FavoriteTile> createState() => _FavoriteTileState();
}

class _FavoriteTileState extends State<FavoriteTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 435,
        height: 150,
        padding: EdgeInsets.all(0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.pink[200],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 이미지 - 1
            Row(
              children: [
                SizedBox(
                  width: 120,
                  height: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      widget.itemlist.backgroundImage,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                // Details - 2
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                widget.itemlist.title,
                                style: GoogleFonts.inknutAntiqua(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.pin_drop,
                            color: Colors.red[500],
                            size: 30,
                          ),
                          Text(
                            widget.itemlist.location,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: List.generate(
                                3,
                                (int index) => Icon(
                                  Icons.star,
                                  size: 35,
                                  color:
                                      index < widget.itemlist.review
                                          ? Colors.yellow
                                          : Colors.grey,
                                ),
                              ),
                            ),

                            // 제거해주기
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                "\$${widget.itemlist.price}",
                style: GoogleFonts.cuteFont(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Price -3
          ],
        ),
      ),
    );
  }
}
