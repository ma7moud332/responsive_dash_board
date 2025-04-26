import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensess(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}