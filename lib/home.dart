import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st/counterprovider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.blue,
                  width:
                      Provider.of<Counterprovider>(
                        context,
                        listen: true,
                      ).getwidth(),
                  height:
                      Provider.of<Counterprovider>(
                        context,
                        listen: true,
                      ).gethight(),
                ),
              ),
              Consumer<Counterprovider>(
                builder: (ctx, _, _) {
                  return Text(
                    "Hight = ${Provider.of<Counterprovider>(ctx).gethight()} Width = ${Provider.of<Counterprovider>(ctx).getwidth()}",
                  );
                },
              ),
              // Text(
              //   "${Provider.of<Counterprovider>(context, listen: true).getcount()}",
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                          child: Icon(Icons.add),
                          onPressed: () {
                            Provider.of<Counterprovider>(
                              context,
                              listen: false,
                            ).widthincrease();
                            Provider.of<Counterprovider>(
                              context,
                              listen: false,
                            ).hightincrease();
                          },
                        ),
                      ),
                      FloatingActionButton(
                        child: Icon(Icons.minimize_outlined),
                        onPressed: () {
                          Provider.of<Counterprovider>(
                            context,
                            listen: false,
                          ).decreasecontainerhight();
                          Provider.of<Counterprovider>(
                            context,
                            listen: false,
                          ).decreasecontainerwidt();
                        },
                      ),
                    ],
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(10.0),
                  //       child: FloatingActionButton(
                  //         child: Icon(Icons.numbers),
                  //         onPressed: () {
                  //           Provider.of<Counterprovider>(
                  //             context,
                  //             listen: false,
                  //           ).incrementcounter();
                  //         },
                  //       ),
                  //     ),
                  //     FloatingActionButton(
                  //       child: Icon(Icons.numbers),
                  //       onPressed: () {
                  //         Provider.of<Counterprovider>(
                  //           context,
                  //           listen: false,
                  //         ).decrementcounter();
                  //       },
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
