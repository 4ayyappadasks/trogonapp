import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogonapp/controller/change%20course%20page%20controller/Course%20conroller.dart';
import 'package:trogonapp/main.dart';
import 'package:trogonapp/utils/color/color.dart';
import 'package:trogonapp/utils/widget/bottomsheet.dart';
import 'package:trogonapp/view/course%20page/coursepage.dart';

class Changecoursepage extends StatelessWidget {
  const Changecoursepage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CousepageController());
    List<String> toplist = [
      "https://s3-alpha-sig.figma.com/img/98f1/cc14/1c6e0d5beef73c37b4d507963b93d9cd?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=kZ1hBLTeSxoslMbVIEazptDA7mHH9tigWfV6wR1YckEYjARwjsbPFlVyYuZ4AJSqmTgHwQlJHzzMGBFwrD1Pq0MxL86-KjwPUXF8fuWhXHF4mZYgwZULiyZl9bO6U-1WrEZyA6xUGWONJI6BCQ8J6h1rUkpLTAVfvLZ7Tj7RALoQco~EgALzR-5xRSL5eD2mSpHs0rQVROeI-NG6gnkCX82O9lw9lHgffMdIdt4wh220Uf-HUlAVevwlemhJ1SG0YGS5k7Rr4vUHmFEzkbCVA7GHWi2CFVIFMwI7CTilL5hyzAwFOLamhyvzvEfHbh4NfiOkLDG3V8vYCiqOC4UIFQ__",
      "https://s3-alpha-sig.figma.com/img/7e99/3290/4baf3e9ec91cd04ab67a02eb349da3fd?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BH20VUvv165wf4r49n-a-ywD4GszFgh~BkR9Bf3sjGdNDRFi7PnuitVVI8ez4Sr7DJmja2VP8z4rh9051TdYapkaxaqNSYOz0adZsM2ohyFeShMHpHAo~qm6vIuF1G3ycBrEzMjg4KreBWg5EfqPnUF6lp~-m7Gfq~e82b7g8ZX~Y~Flz8s4YUpqQTdqOotIA9tLsjTtHqr9SpwgpzAtWFKddAYgiChIWFUe5jzbLv~W6ZNDvhPgzK4g-pfJ-tjocSsx4BEKeZhy2jZHZQ3XwdTW2IqdMQyiFRMi58JU7iO9EtymKvnx9VLsAthB80n7UQD4IHo4T2OFUTLV4O8KGA__",
      "https://s3-alpha-sig.figma.com/img/7ea7/785c/2e6f81e01b7b82907f6e0d1fc8f57c70?Expires=1725235200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=eGHhZ1guD0XvG8LziIIUZXUa7eMAfy6vBDl0-zgfFx9L~nficK1LcpyN5Rpw5ZVinQdlOboca09pM3xfJW~eoGO8gyiirEt353R~Z1T9t0iGWnLZwkExV8KyHIAQzjjcfW0H7y0rA0AeuRYFlWln~CAgUYFz7nk1jDN4vTZsrmlhsDENldsAX3r4eG4igyKvAVMEsv9wjg76g1zEqbfgmEgyF7xE2c1oQIpJwwlhrgQS~XRlRwaXRLIRe~zbLrAAKpzWIZNJI3AIDUvJH5ftZQAL4AGEt4KUo7akzLw1r~97-TL~n7Mm4lY0Ii1TtwmqmmWCuMjiWXsBtJCdzRDMLw__"
    ];
    List<String> toplistname = ["Exam", "Practice", "Materials"];
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {},
          backgroundColor: appprimarycolor,
          child: Image.asset(
            height: MyApp.height * .05,
            "images/img.png",
            fit: BoxFit.cover,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Bottomsheet(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // top container
              Stack(
                children: [
                  Container(
                    width: MyApp.width,
                    height: MyApp.height * 0.3,
                    decoration: BoxDecoration(
                        color: appprimarycolor,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                  ),
                  Positioned(
                      top: MyApp.height * .05,
                      left: MyApp.width * .05,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Good Morning !",
                            style: TextStyle(
                                color: appsecondarycolor,
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Obx(
                              () => controller.loading.value == true
                                  ? Center(child: CircularProgressIndicator())
                                  : Text(
                                      "${controller.cousrselist?.data.userdata.firstName}",
                                      style: TextStyle(
                                          color: appsecondarycolor,
                                          fontWeight: FontWeight.w700),
                                    ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                      right: MyApp.width * .05,
                      top: MyApp.height * .05,
                      child: Row(
                        children: [
                          Container(
                            height: MyApp.height * 0.05,
                            width: MyApp.width * .15,
                            decoration: BoxDecoration(
                              color: appsecondarycolor,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text(
                                    "10",
                                    style: TextStyle(color: gold),
                                  ),
                                  Spacer(),
                                  Image.asset("images/img_1.png")
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Obx(
                              () => controller.loading.value == true
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "${controller.cousrselist?.data.userdata.image}"),
                                    ),
                            ),
                          )
                        ],
                      )),
                  Positioned(
                    bottom: MyApp.height * .04,
                    child: Container(
                      width: MyApp.width * 1, // Adjust width as needed
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: ListTile(
                          title: Text("Selected Course"),
                          subtitle: Text("Montessori"),
                          trailing: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            color: appprimarycolor,
                            onPressed: () {},
                            child: TextButton.icon(
                              onPressed: () {},
                              label: Text(
                                "change",
                                style: TextStyle(color: appsecondarycolor),
                              ),
                              icon: Icon(
                                Icons.speed,
                                color: appsecondarycolor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              // exam practice material
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.white,
                                index == 0
                                    ? pink
                                    : index == 1
                                        ? yellow
                                        : blue,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Image.network(
                            toplist[index],
                            height: MyApp.height * .07,
                            width: MyApp.height * .07,
                          ),
                        ),
                        Align(
                          child: Container(
                            child: Text(
                              toplistname[index],
                              style: TextStyle(
                                  color: appsecondarycolor,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: index == 0
                                  ? pink
                                  : index == 1
                                      ? yellow
                                      : blue,
                            ),
                            width: double.infinity,
                          ),
                          alignment: Alignment.bottomCenter,
                        )
                      ],
                    ),
                  );
                },
              ),
              // course title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Courses",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ))
                  ],
                ),
              ),
              // course list
              Obx(
                () => controller.loading.value == true
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount:
                            controller.cousrselist?.data.subjects.length ?? 0,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(() => Coursepage(
                                  id: int.parse(
                                      "${controller.cousrselist?.data.subjects[index].id}"),
                                  name:
                                      "${controller.cousrselist?.data.subjects[index].title}"));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: appprimarycolor),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.network(
                                      "${controller.cousrselist?.data.subjects[index].icon}",
                                      height: MyApp.height * .07,
                                      width: MyApp.height * .07,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Image.asset("images/image-removebg-preview.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Latest Test Series",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MyApp.height * .2,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: appprimarycolor),
                      child: Column(
                        children: [
                          Text("Exam 102 - Biology "),
                          Row(
                            children: [
                              Text("10 Questions"),
                              Text("120 mins"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
