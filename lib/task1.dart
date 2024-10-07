import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            centerTitle: false,
            backgroundColor: const Color(0xffFEFCFF),
            elevation: 0,
            title: const SizedBox(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "أهلاً بك، مريم 👋",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "تابعي طلابك في الحضانة بكل سهولة",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B97A3),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border:
                        Border.all(color: const Color(0xffE7E7E7), width: 2),
                  ),
                  child: const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.transparent,
                    child: Icon(
                      Icons.notifications,
                      color: Color(0xff9D3ADF),
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: const Color(0xffFEFCFF),
          body: const SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "الإحصائيات الشهرية",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 170),
                        Text(
                          "ابريل 2023",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff8344AD),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.date_range, color: Color(0xff8344AD)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly,
                      children: [
                        StatCard(
                          title: 'الأطفال',
                          count: '356',
                          icon: Icons.person,
                        ),
                        StatCard(
                          title: 'الفصول',
                          count: '300',
                          icon: Icons.desk,
                        ),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceEvenly,
                        children: [
                          StatCard(
                            title: 'الأذونات',
                            count: '20',
                            icon: Icons.access_time_outlined,
                          ),
                          StatCard(
                            title: 'الأجازات',
                            count: '5',
                            icon: Icons.date_range,
                          ),
                        ]),
                    SizedBox(height: 20),
                    Text(
                      "منشورات الحضانة 👀",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Column(
                      children: [
                        PostCard(
                          title: 'روضة الحياة للأطفال',
                          description:
                              'اليوم قمنا بالاحتفال بالأجيال الجديدة في حضانة الحياة وتمنّى لكم عام سعيد! 💖',
                          imageUrl: 'assets/video.png',
                        ),
                        PostCard(
                          title: 'روضة الحياة للأطفال',
                          description:
                              'اليوم قمنا بالاحتفال بالأجيال الجديدة في حضانة الحياة وتمنَّى لكم عام سعيد 💖',
                          imageUrl: 'assets/video.png',
                        ),
                        PostCard(
                          title: 'المستقبل المشرق',
                          description:
                              'اليوم قمنا بالاحتفال بالأجيال الجديدة في حضانة الحياة وتمنَّى لكم عام سعيد 💖',
                        ),
                        PostCard(
                          title: 'المستقبل المشرق',
                          description:
                          'اليوم قمنا بالاحتفال بالأجيال الجديدة في حضانة الحياة وتمنَّى لكم عام سعيد 💖',

                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () { },
            backgroundColor: const Color(0xff8344AD),
            //foregroundColor: Colors.white,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                color: Color(0xff8344AD),
                size: 20,
              ),
            ),

          ),

        ),
      ),
    );
  }
}

class StatCard extends StatelessWidget {
  final String title;
  final String count;
  final IconData icon;

  const StatCard(
      {super.key,
      required this.title,
      required this.count,
      required this.icon});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 90,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF3EDF7),
                    ),
                    child: Icon(icon, color: const Color(0xff8344AD), size: 30),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff8B97A3),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        count,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff8344AD),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 43),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xffCDB4DE),
                    size: 16,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String title;
  final String description;
  final String? imageUrl;
  const PostCard({
    Key? key,
    required this.title,
    required this.description,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xffF4F1F9),
                      width: 2,
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.cover,
                      width: 46,
                      height: 46,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      "اليوم، منذ ٣ دقائق",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8B97A3),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(description),
            const SizedBox(height: 8),
            if (imageUrl != null)
              Container(
                height: 110,
                width: 495,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  imageUrl!,
                  fit: BoxFit.cover,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
