import 'package:flutter/material.dart';

class ProfileImageAvatar extends StatelessWidget {
  const ProfileImageAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 70,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset('assets/images/profile.png')),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera,
                color: Theme.of(context).primaryColorLight,
              ),
            ),
          )
        ],
      ),
    );
  }
}