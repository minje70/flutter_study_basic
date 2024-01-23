import 'package:flutter/material.dart';
import 'package:flutter_study_basic/main.dart';

class ShoppingListItem extends StatelessWidget {
  const ShoppingListItem(
      {required this.profile, required this.onClickFunc, this.isCheck = false});

  final Profile profile;
  final bool isCheck;
  final onClickFunc;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        selected: isCheck,
        onTap: () {
          onClickFunc(profile);
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
              'https://substackcdn.com/image/fetch/w_80,h_80,c_fill,f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F682a2e94-9aed-4992-b571-d7afec2ba718_3088x2316.jpeg'),
        ),
        title: Text(profile.name),
        subtitle: Text(profile.subtitle),
      ),
    );
  }
}

class ShoppingList extends StatefulWidget {
  ShoppingList({super.key, required this.profiles});
  final List<Profile> profiles;

  @override
  State<ShoppingList> createState() => ShoppingListState();
}

class ShoppingListState extends State<ShoppingList> {
  List<Profile> checkedProfile = [];

  void onClickFunc(Profile profile) {
    setState(() {
      final checked = checkedProfile.contains(profile);
      if (checked) {
        checkedProfile.remove(profile);
      } else {
        checkedProfile.add(profile);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widget.profiles
          .map(
            (profile) => ShoppingListItem(
              profile: profile,
              onClickFunc: onClickFunc,
              isCheck: checkedProfile.contains(profile),
            ),
          )
          .toList(),
    );
  }
}
