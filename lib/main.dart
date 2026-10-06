import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SR Dashboard',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      const Text(
                        "Hello Habib",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF10203F),
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        "Here's what's happening today.",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blueGrey.shade400,
                        ),
                      ),
                    ],
                  ),

                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Color(0xFF10203F),
                  ),
                ],
              ),

              const SizedBox(height: 28),

              // First Row Cards
              Row(
                children: [

                  Expanded(
                    child: summaryCard(
                      title: "Total Orders",
                      value: "24",
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: summaryCard(
                      title: "Today's Sale",
                      value: "৳ 12,480",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 14),

              // Second Row Cards
              Row(
                children: [

                  Expanded(
                    child: summaryCard(
                      title: "Pending Task",
                      value: "5",
                    ),
                  ),

                  const SizedBox(width: 14),

                  Expanded(
                    child: summaryCard(
                      title: "Visits Today",
                      value: "8",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 35),

              // Recent Activity Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    "Recent Activity",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF10203F),
                    ),
                  ),

                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue.shade700,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // Activity Items
              activityItem(
                title: "Order submitted successfully",
                time: "2 hours ago",
              ),

              activityItem(
                title: "New Outlet Added",
                time: "4 hours ago",
              ),

              activityItem(
                title: "Task Completed",
                time: "6 hours ago",
              ),


              activityItem(
                title: "Task Done",
                time: "6 hours ago",
              ),

              activityItem(
                title: "Meeting Scheduled",
                time: "2 hours ago",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Summary Card
  Widget summaryCard({
    required String title,
    required String value,
  }) {
    return Container(
      height: 140,
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFFF5F8FC),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: Colors.blueGrey.shade500,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(
                value,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF10203F),
                ),
              ),

              Icon(
                Icons.arrow_forward,
                color: Colors.blueGrey.shade500,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Activity Item
  Widget activityItem({
    required String title,
    required String time,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),

      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFE8EDF3),
          ),
        ),
      ),

      child: Row(
        children: [

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF10203F),
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  time,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey.shade400,
                  ),
                ),
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward,
            color: Colors.blueGrey.shade400,
          ),
        ],
      ),
    );
  }
}