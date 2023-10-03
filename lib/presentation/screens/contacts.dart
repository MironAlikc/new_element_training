import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:new_element_training/presentation/common_widgets/list_contacts.dart';

@RoutePage()
class Contacts extends StatefulWidget {
  const Contacts({
    super.key,
  });

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 50,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: Color(0xFFA3A3A3),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
                fillColor: Color(0xFFF2F2F2),
                filled: true,
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
              controller: controller,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListContacts(
                    onTap: () {
                      //AutoRouter.of(context).push(const HomeRoute());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => CharsDetailsPage(
                      //       data: state.model.results?[index] ?? MyCharacter(),
                      //     ),
                      //   ),
                      // );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
