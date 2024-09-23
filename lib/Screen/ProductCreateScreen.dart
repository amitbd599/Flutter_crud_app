import 'package:crud_app/style/style.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product"),
      ),
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            child: (SingleChildScrollView(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) {},
                    decoration: AppInputDecoration("Product Name"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {},
                    decoration: AppInputDecoration("Product Code"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {},
                    decoration: AppInputDecoration("Product Image"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {},
                    decoration: AppInputDecoration("Unit Price"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {},
                    decoration: AppInputDecoration("Total Price"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppDropDown(DropdownButton(
                    value: "",
                    items: const [
                      DropdownMenuItem(
                        child: Text("Select QTY"),
                        value: "",
                      ),
                      DropdownMenuItem(
                        child: Text("1 pcs"),
                        value: "1 pcs",
                      ),
                      DropdownMenuItem(
                        child: Text("2 pcs"),
                        value: "2 pcs",
                      ),
                      DropdownMenuItem(
                        child: Text("3 pcs"),
                        value: "3 pcs",
                      ),
                    ],
                    onChanged: (value) {},
                    isExpanded: true,
                    underline: Container(),
                  )),
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
