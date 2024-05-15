import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xffd00304),
        child: Icon(
          Icons.qr_code_2_outlined,
          color: Colors.white,
          size: 38,
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          const Gap(20),
          tapBar(),
          location(),
          const Gap(20),
          searchBar(),
          const Gap(20),
          categories(),
          const Gap(20),
          cardsView()
        ]),
      ),
    );
  }

  Widget tapBar() {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Image.asset("assets/images/person.png"),
        ),
        const Gap(14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8b8b8b)),
            ),
            Text(
              "Ferreteria Arellano",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff000000)),
            )
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffffffff),
          child: Image.asset(
            "assets/images/notificaciones.png",
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          Icons.location_on_sharp,
          color: Color(0xffd00304),
          size: 16,
        ),
        Gap(6),
        Text(
          "Av.miguel de la Madrid ",
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xff8b8b8b)),
        ),
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget searchBar() {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffdde2e5),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/images/buscar.png"),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20),
            prefixIconConstraints: const BoxConstraints(maxHeight: 24),
            border: InputBorder.none,
            fillColor: const Color(0xffdde2e5),
            filled: true,
            hintText: "Buscar herramientas",
            hintStyle: const TextStyle(fontSize: 14, color: Colors.blueGrey)),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Lo mas buscado",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const Gap(20),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: const Color(0xffd00304)),
                child: const Center(
                    child: Text("Todo",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Martillos",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Pinzas",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Bombas",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(left: 10),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  border:
                      Border.all(color: const Color(0xff8b9ab0), width: 1.5),
                ),
                child: const Center(
                    child: Text("Brochas",
                        style: TextStyle(
                            color: Color(0xff8b9ab0),
                            fontSize: 16,
                            fontWeight: FontWeight.w500))),
              ),
            ],
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20);
  }

  Widget cardsView() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.71,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffd00304),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/milwaukee.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Milwaukee",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffd00304),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2,750",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffe3691c),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/truper.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Truper",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffe3691c),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2,990",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff023a66),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/bosch.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Bosch",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff023a66),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$5,250",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer()
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffedb40f),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/dewalt.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro De-Walt",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffedb40f),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2,550",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffa6b300),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/ryboi.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Ryboi",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffa6b300),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2,358",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff000000),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/makita.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Makita",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xff000000),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2.946",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffd00304),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/milwaukee.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Milwaukee",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffd00304),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2,950",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xffc5c5c5),
                borderRadius: BorderRadius.circular(12)),
            child: Stack(
              children: [
                const Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xffe3691c),
                    radius: 12,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/truper.png",
                      height: 140,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text("Taladro Truper",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            const Gap(8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  color: const Color(0xffe3691c),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text("\$2,500",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
