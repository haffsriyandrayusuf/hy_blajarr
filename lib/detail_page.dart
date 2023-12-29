import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hy_blajarr/constants.dart';
import 'package:hy_blajarr/models.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    // listSection.map((e) {
    //   print(e["sectionTitle"]);
    //   List myLesson = e["sectionLesson"];
    //   myLesson.map((eLesson) {
    //     print(eLesson["itemLesson"]);
    //   }).toList();
    // }).toList();
    return Scaffold(
      backgroundColor: primaryBackgroundColor,
      appBar: AppBar(
        backgroundColor: primaryBackgroundColor,
        centerTitle: true,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leadingWidth: 100,
        leading: Container(
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            color: secondaryBackgroundColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.arrow_back_rounded,
            color: primaryTextColor,
          ),
        ),
        title: Text(
          'Course Details',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: primaryTextColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                color: secondaryBackgroundColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.more_vert_rounded,
                color: primaryTextColor,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                height: 250,
                child: ListView.separated(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 18);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 250,
                      width: 310,
                      decoration: BoxDecoration(
                        color: secondaryBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                        image: const DecorationImage(
                          image: NetworkImage('https://picsum.photos/310/250'),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Design Thinking: Improve Startups Better 100x',
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: primaryTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    RatingBarIndicator(
                      unratedColor: secondaryTextColor,
                      rating: 2.75,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: starColor,
                      ),
                      itemCount: 5,
                      itemSize: 24.0,
                      direction: Axis.horizontal,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '2.75/5',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryTextColor,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '(11,390)',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 41,
                child: ListView.separated(
                  itemCount: listTabs.length,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 12);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                      child: Container(
                        height: 41,
                        // width: 97,
                        decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? buttonColor
                              : secondaryBackgroundColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            listTabs[index],
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: primaryTextColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ListView(
                shrinkWrap: true,
                children: listSection.map((e) {
                  List myLesson = e["sectionLesson"];
                  return ExpansionTile(
                    title: Text(
                      'Section ${e["sectionID"]} - ${e["sectionTitle"]}',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: primaryTextColor,
                      ),
                    ),
                    tilePadding: const EdgeInsets.symmetric(horizontal: 24),
                    childrenPadding: const EdgeInsets.symmetric(horizontal: 24),
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    trailing: const SizedBox.shrink(),
                    children: myLesson.map((eLesson) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        height: 58,
                        decoration: BoxDecoration(
                            color: secondaryBackgroundColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: secondaryTextColor,
                              child: Text(
                                eLesson["itemID"].toString(),
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: primaryTextColor,
                                ),
                              ),
                            ),
                            title: Text(
                              eLesson["itemLesson"],
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: primaryTextColor,
                              ),
                            ),
                            trailing: eLesson["status"] == "done"
                                ? const Icon(
                                    Icons.check_circle_outline_outlined,
                                    color: checkColor)
                                : const Icon(Icons.lock_outline,
                                    color: secondaryTextColor),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
