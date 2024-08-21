import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogonapp/controller/course%20page%20controller/cousrcontroller.dart';
import 'package:trogonapp/main.dart';
import 'package:trogonapp/utils/color/color.dart';
import 'package:trogonapp/view/change%20course%20page/Change%20course%20page.dart';

class Coursepage extends StatelessWidget {
  const Coursepage({super.key, required this.name, required this.id});
  final String name;
  final int id;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SelectionsController(id: id));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: appsecondarycolor,
          ),
          onPressed: () {
            Get.off(() => Changecoursepage());
          },
        ),
        title: Text(
          "${name}",
          style: TextStyle(color: appsecondarycolor),
        ),
        backgroundColor: appprimarycolor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: MyApp.height * .08,
            ),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                  "images/img_2.png",
                )),
                color: sectionyellow.withOpacity(.5),
                borderRadius: BorderRadius.circular(15),
              ),
              height: MyApp.height * .2,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Upgrade and unlock the \n full course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      color: sectionorange,
                      child: Text("Upgrade"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MyApp.height * .08,
            ),
            Container(
              decoration: BoxDecoration(
                color: sectiongreen.withOpacity(.5),
                borderRadius: BorderRadius.circular(15),
              ),
              height: MyApp.height * .2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " WhatsApp ലെ സഹായത്തിനായി",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "8606017527",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(sectiondaerkgreen),
                                shape: WidgetStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5)))),
                            icon: Icon(Icons.whatshot),
                            onPressed: () {},
                            label: Text("WhatsApp")),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
