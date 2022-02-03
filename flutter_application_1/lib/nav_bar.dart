import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Oflutter.com'),
            accountEmail: const Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  "https://www.google.com/imgres?imgurl=https%3A%2F%2Fraw.githubusercontent.com%2Ftufantunc%2FOpenAssetsInVSCode%2Fmaster%2Fassets%2Fcontext-menu.png&imgrefurl=https%3A%2F%2Fmarketplace.visualstudio.com%2Fitems%3FitemName%3DTufanTunc.openasetsinvscode&tbnid=lx6sWeYyuLpkzM&vet=12ahUKEwiLhL_b7uP1AhUGxeAKHeMJCOkQMygAegUIARC7AQ..i&docid=tFczfLlDMGQPDM&w=378&h=134&q=image%20assets%20vscode&ved=2ahUKEwiLhL_b7uP1AhUGxeAKHeMJCOkQMygAegUIARC7AQ",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg")),
            ),
          ),
        ],
      ),
    );
  }
}
