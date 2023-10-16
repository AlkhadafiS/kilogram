import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class PostModel {
  final String name;
  final String profilePhotoUrl;
  final String photoUrl;

  PostModel({
    required this.name,
    required this.profilePhotoUrl,
    required this.photoUrl,
  });
}

class _HomeScreenState extends State<HomeScreen> {
  var fitur2 = [
    "Request",
    "Send",
    "Bills",
    "Top Up",
    "Withdraw",
    "Games",
    "Split",
    "Mobile"
  ];

  List<Icon> iconhome = [
    Icon(Icons.call_received),
    Icon(Icons.call_made),
    Icon(Icons.receipt_long),
    Icon(Icons.add),
    Icon(Icons.payments),
    Icon(Icons.sports_esports),
    Icon(Icons.splitscreen_outlined),
    Icon(Icons.phone_android)
  ];

  var ItemImages = [
    "https://www.zenicablog.com/wp-content/uploads/2020/06/dan-gold-4_jhDO54BYg-unsplash-1-.jpg",
    "https://images.unsplash.com/photo-1537963447914-dbc04b81de27?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=812&q=80"
  ];

  var promoTitles = [
    "Get your greens for less",
    "Level up your gaming experience",
  ];

  var promoDescriptions = [
    "Enjoy exclusive discounts at Ranch Market, your go-to veggie supermarket",
    "Get exciting cashback offers on topping up your game balance"
  ];

  var postModels = [
    PostModel(
      name: "Putri Megawat",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/13940670/pexels-photo-13940670.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Postbowo",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/33961/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Diganjar Wadas",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/5185446/pexels-photo-5185446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Anis Aned",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1530268729831-4b0b9e170218?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/12166201/pexels-photo-12166201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
    PostModel(
      name: "Cak Iplus",
      profilePhotoUrl:
          "https://images.unsplash.com/photo-1618077360395-f3068be8e001?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=100&q=80",
      photoUrl:
          "https://images.pexels.com/photos/11544823/pexels-photo-11544823.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 248, 251, 1),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Image.asset("assets/images/logo.png", width: 300),
            ListView.builder(
              itemCount: postModels.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                var postModel = postModels[index];
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                NetworkImage(postModel.profilePhotoUrl),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              postModel.name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            8), // Tambahkan SizedBox di sini untuk memberi jarak vertikal
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(postModel.photoUrl),
                        ),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 110,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 8.0,
                                ),
                                child: Text(
                                  postModel.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        )),
      ),
    );
  }
}
