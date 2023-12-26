import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nutronutro/Widgets/ReviewIndicator.dart';
import 'package:nutronutro/Widgets/ReviewWidget.dart';
import 'package:nutronutro/Widgets/StackItemImage.dart';

class ProductDetails extends StatefulWidget {
  ProductDetails(
      {super.key,
      required this.title,
      required this.source,
      required this.imagePath,
      required this.price,
      required this.longDescription,
      required this.heroTag});

  final String title;
  final String source;
  final String imagePath;
  final String longDescription;
  final String price;
  var numberOfItems = 0;
  final String heroTag;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 90,
          leading: IconButton(
              splashRadius: 15,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset('assets/SVGs/BackButton.svg')),
          backgroundColor: const Color.fromARGB(73, 156, 174, 248)),
      body: SingleChildScrollView(
        child: FadeInDown(
          child: Column(
            children: [
              Stack(children: [
                StackItemImage(
                  title: widget.title,
                  imagePath: widget.imagePath,
                ),
                Positioned(
                    top: 210,
                    right: 20,
                    child: Row(
                      children: [
                        InkWell(
                          radius: 0,
                          onTap: () {
                            setState(() {
                              if (widget.numberOfItems > 0) {
                                widget.numberOfItems--;
                              }
                            });
                          },
                          child:
                              SvgPicture.asset('assets/SVGs/minus-circle.svg'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          widget.numberOfItems.toString(),
                          style: const TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 1, 97, 254)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          radius: 0,
                          onTap: () {
                            setState(() {
                              widget.numberOfItems++;
                            });
                          },
                          child:
                              SvgPicture.asset('assets/SVGs/plus-circle.svg'),
                        ),
                      ],
                    ))
              ]),
              Container(
                  margin: EdgeInsets.only(
                      right: widget.title.length > 8
                          ? MediaQuery.of(context).size.width / 1.56
                          : MediaQuery.of(context).size.width / 1.3),
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 1.56),
                  child: Text(
                    widget.source,
                    style: GoogleFonts.raleway(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 1.3),
                child: Text(
                  'RM${widget.price}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 1.35),
                  child: Text(
                    'Description',
                    style: GoogleFonts.raleway(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  widget.longDescription,
                  overflow: TextOverflow.visible,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 95,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const ReviewIndicator(
                        leadingText: '5 Star', suffixText: 40),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewIndicator(
                        leadingText: '4 Star', suffixText: 20),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewIndicator(
                        leadingText: '3 Star', suffixText: 20),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewIndicator(
                        leadingText: '2 Star', suffixText: 10),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReviewIndicator(
                        leadingText: '1 Star', suffixText: 10),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Top Reviews',
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.filter_alt_rounded))
                      ],
                    ),
                  ],
                ),
              ),
              const ReviewWidget(
                  userName: 'userName',
                  rating: 4,
                  review:
                      'oasdna doa[sid a doais do osd FO FAIPJ FIO [o [j sdfj so[fiwoenf wfw[oefinwoifenwo fweo[fj we[of ',
                  imagePath: 'assets/Images/Logo.png')
            ],
          ),
        ),
      ),
    );
  }
}
