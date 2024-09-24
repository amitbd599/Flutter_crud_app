import 'package:crud_app/style/style.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  Map<String, String> FormValues = {
    "Img": "",
    "ProductCode": "",
    "ProductName": "",
    "Qty": "",
    "TotalPrice": "",
    "UnitPrice": "",
  };

  inputOnChange(key, value) {
    setState(() {
      FormValues.update(key, (v) => value);
    });
  }

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
                    onChanged: (value) {
                      inputOnChange("ProductName", value);
                    },
                    decoration: AppInputDecoration("Product Name"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {
                      inputOnChange("ProductCode", value);
                    },
                    decoration: AppInputDecoration("Product Code"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {
                      inputOnChange("Img", value);
                    },
                    decoration: AppInputDecoration("Product Image"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {
                      inputOnChange("UnitPrice", value);
                    },
                    decoration: AppInputDecoration("Unit Price"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (value) {
                      inputOnChange("TotalPrice", value);
                    },
                    decoration: AppInputDecoration("Total Price"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppDropDown(
                    DropdownButton(
                      value: FormValues['Qty'],
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
                      onChanged: (value) {
                        inputOnChange("Qty", value);
                      },
                      isExpanded: true,
                      underline: Container(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: AppButtonStyle(),
                    onPressed: () {},
                    child: SuccessButton("Submit"),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
