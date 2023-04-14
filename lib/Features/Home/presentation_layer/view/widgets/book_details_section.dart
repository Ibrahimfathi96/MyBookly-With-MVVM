import 'package:bookly/Core/Utils/AppAssets.dart';
import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Core/widgets/custom_button_details.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.3, vertical: size.width * 0.05),
          child: const FeaturedBooksListViewItem(
            imageUrl: AppAssets.kBook,
          ),
        ),
        const Text(
          'The Jungle Book',
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          'Rudyard Kipling',
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(
              color: const Color(0xff707070), fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 15,
        ),
        const Center(child: BooksRating()),
        const Padding(
          padding: EdgeInsets.only(right: 30, left: 30, top: 30),
          child: CustomDetailsButtons(),
        ),
      ],
    );
  }
}
