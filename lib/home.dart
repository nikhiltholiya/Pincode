import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectState = 'Select State';
  List<String> stateList = [
    'Andaman & Nicobar',
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chandigarh',
    'Chattisgarh',
    'Dadra & Nagar Haveli',
    'Daman & Diu',
    'Delhi',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jammu & Kashmir',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Lakshadweep',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Pondicherry',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/pin_logo.jpg",
                  height: 100,
                  width: 500,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: Colors.white,
                    border: const Border(
                      bottom: BorderSide(
                          color: Color(0xFFCACACA),
                          width: 1.2,
                          style: BorderStyle.solid),
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 2,
                      )
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Color(0xFFE3E3E3),
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.home_rounded,
                          color: Colors.red,
                          size: 24,
                        ),
                        Expanded(
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.spaceAround,
                            children: [
                              headerTagWidget("Search By Location"),
                              headerTagWidget("Search By PIN Code"),
                              headerTagWidget("Search By Post Office"),
                              headerTagWidget("Indian Postal Stamps"),
                              headerTagWidget("Info"),
                              headerTagWidget("Help"),
                              headerTagWidget("API Docs"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  margin: const EdgeInsets.only(top: 15, bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 3,
                      )
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: const Row(
                    children: [
                      Text(
                        "You are here: ",
                        style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x33000000),
                        blurRadius: 2,
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: stateList.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Color(0x33000000),
                                        blurRadius: 2,
                                        offset: Offset(2, 1),
                                      )
                                    ],
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_right_rounded,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  "${stateList[index]} (${Random().nextInt(500).toString()})",
                                  style: const TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            }),
                      ),
                      Expanded(
                        child: Container(
                          height: 300,
                          margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0x33000000),
                                blurRadius: 2,
                              )
                            ],
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "State",
                                      style: TextStyle(
                                        fontSize: 18,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(right: 5),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: Colors.grey,
                                          width: 2,
                                          style: BorderStyle.solid,
                                        ),
                                      ),
                                      width:
                                          MediaQuery.of(context).size.width / 4,
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton2<String>(
                                          value: selectState,
                                          onChanged: (value) {
                                            selectState = value!;
                                          },
                                          dropdownStyleData: DropdownStyleData(
                                            elevation: 1,
                                            offset: const Offset(0, -5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: Colors.white,
                                              border: Border.all(
                                                color: const Color(0xFFDDDDDD),
                                                width: 1.5,
                                                style: BorderStyle.solid,
                                              ),
                                            ),
                                          ),
                                          isExpanded: true,
                                          items: [
                                            'Select State',
                                            'Gujarat',
                                            'Bihar',
                                            'Assam',
                                            'Delhi',
                                          ].map((value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(
                                                value,
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget headerTagWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 14,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
}
