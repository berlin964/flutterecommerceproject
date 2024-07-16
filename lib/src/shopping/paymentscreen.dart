import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';

import 'adressscreen.dart';

// class StepperExample extends StatefulWidget {
//   @override
//   _StepperExampleState createState() => _StepperExampleState();
// }

// class _StepperExampleState extends State<StepperExample> {
//   int _currentStep = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Checkout Process'),
//       ),
//       body: Stepper(
//         type: StepperType.horizontal,
//         currentStep: _currentStep,
//         onStepTapped: (step) => setState(() => _currentStep = step),
//         onStepContinue: _currentStep < 2 ? () => setState(() => _currentStep += 1) : null,
//         onStepCancel: _currentStep > 0 ? () => setState(() => _currentStep -= 1) : null,
//         steps: <Step>[
//           Step(
//             title: Icon(I)
//             subtitle: Text("Address"),
//             content: Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Full Name'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Address Line 1'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Address Line 2'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'City'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'State'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'ZIP Code'),
//                 ),
//               ],
//             ),
//             isActive: _currentStep >= 0,
//             state: _currentStep > 0 ? StepState.complete : StepState.indexed,
//           ),
//           Step(
//             title: Text('Summary'),
//             content: Column(
//               children: <Widget>[
//                 Text('Order Summary:'),
//                 ListTile(
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text('Product 1'),
//                   subtitle: Text('Quantity: 1'),
//                   trailing: Text('\$100'),
//                 ),
//                 ListTile(
//                   leading: Icon(Icons.shopping_cart),
//                   title: Text('Product 2'),
//                   subtitle: Text('Quantity: 2'),
//                   trailing: Text('\$200'),
//                 ),
//                 Divider(),
//                 ListTile(
//                   title: Text('Total'),
//                   trailing: Text('\$300'),
//                 ),
//               ],
//             ),
//             isActive: _currentStep >= 1,
//             state: _currentStep > 1 ? StepState.complete : StepState.indexed,
//           ),
//           Step(
//             title: Text('Payment'),
//             content: Column(
//               children: <Widget>[
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Card Number'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Expiry Date'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'CVV'),
//                 ),
//                 TextFormField(
//                   decoration: InputDecoration(labelText: 'Card Holder Name'),
//                 ),
//               ],
//             ),
//             isActive: _currentStep >= 2,
//             state: _currentStep == 2 ? StepState.complete : StepState.indexed,
//           ),
//         ],
//       ),
//     );
//   }
// }

//-----------------------------------------------------------------------

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  int activeStep = 0;
  List<Address> addresses = [];

  void _addAddress(Address address) {
    setState(() {
      addresses.add(address);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stepper"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          EasyStepper(
            activeStep: activeStep,
            lineStyle: LineStyle(lineLength: 35),
            stepShape: StepShape.circle,
            stepBorderRadius: 15,
            borderThickness: 2,
            stepRadius: 28,
            finishedStepBorderColor: Colors.deepOrange,
            finishedStepTextColor: Colors.deepOrange,
            finishedStepBackgroundColor: Colors.deepOrange,
            activeStepIconColor: Colors.deepOrange,
            showLoadingAnimation: false,
            steps: [
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 0 ? 1 : 0.3,
                    child: Icon(Icons.note),
                  ),
                ),
                customTitle: const Text(
                  'Address',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 1 ? 1 : 0.3,
                    child: Icon(Icons.summarize),
                  ),
                ),
                customTitle: const Text(
                  'Summary',
                  textAlign: TextAlign.center,
                ),
              ),
              EasyStep(
                customStep: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Opacity(
                    opacity: activeStep >= 2 ? 1 : 0.3,
                    child: Icon(Icons.payment),
                  ),
                ),
                customTitle: const Text(
                  'Payment',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
            onStepReached: (index) => setState(() => activeStep = index),
          ),
          if (activeStep == 0)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              AddAddressScreen(onSave: _addAddress),
                        ),
                      );
                    },
                    icon: Icon(Icons.add),
                  ),
                ),
                Text("Add Address")
              ],
            ),
          if (activeStep == 0)
            SizedBox(
              height: 100,
              width: 200,
              child: ListView.builder(
                itemCount: addresses.length,
                itemBuilder: (context, index) {
                  final address = addresses[index];
                  return Container(
                    color: Colors.grey.shade100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ListTile(
                        title: Text(address.fullName),
                        subtitle: Text(
                            '${address.addressLine1}, ${address.city}, ${address.state}, ${address.zipCode}'),
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

//--------------------------------------------------------------------------

// import 'package:ecommerce_application_1/provider/addcart.dart';
// import 'package:ecommerce_application_1/src/constants.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class StepperScreen extends StatefulWidget {
//   const StepperScreen({super.key});

//   @override
//   State<StepperScreen> createState() => _StepperScreenState();
// }

// class _StepperScreenState extends State<StepperScreen> {
//   int activeStep = 0;
//   final TextEditingController addressController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<CartProvider>(context);
//     final cartItems = provider.cart;
//     final totalPrice = provider.totalprice();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Stepper"),
//         centerTitle: true,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           EasyStepper(
//             activeStep: activeStep,
//             lineStyle: LineStyle(lineLength: 35),
//             stepShape: StepShape.circle,
//             stepBorderRadius: 15,
//             borderThickness: 2,
//             stepRadius: 28,
//             finishedStepBorderColor: Colors.deepOrange,
//             finishedStepTextColor: Colors.deepOrange,
//             finishedStepBackgroundColor: Colors.deepOrange,
//             activeStepIconColor: Colors.deepOrange,
//             showLoadingAnimation: false,
//             steps: [
//               EasyStep(
//                 customStep: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Opacity(
//                     opacity: activeStep >= 0 ? 1 : 0.3,
//                     child: Icon(Icons.note),
//                   ),
//                 ),
//                 customTitle: const Text(
//                   'Address',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               EasyStep(
//                 customStep: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Opacity(
//                     opacity: activeStep >= 1 ? 1 : 0.3,
//                     child: Icon(Icons.summarize),
//                   ),
//                 ),
//                 customTitle: const Text(
//                   'Summary',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               EasyStep(
//                 customStep: ClipRRect(
//                   borderRadius: BorderRadius.circular(15),
//                   child: Opacity(
//                     opacity: activeStep >= 2 ? 1 : 0.3,
//                     child: Icon(Icons.payment),
//                   ),
//                 ),
//                 customTitle: const Text(
//                   'Payment',
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//             onStepReached: (index) => setState(() => activeStep = index),
//           ),
//           Expanded(
//             child: activeStep == 0
//                 ? Padding(
//                     padding: const EdgeInsets.all(20),
//                     child: Column(
//                       children: [
//                         TextField(
//                           controller: addressController,
//                           decoration: InputDecoration(
//                             labelText: 'Shipping Address',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         ElevatedButton(
//                           onPressed: () {
//                             setState(() {
//                               activeStep++;
//                             });
//                           },
//                           child: const Text("Next"),
//                         ),
//                       ],
//                     ),
//                   )
//                 : activeStep == 1
//                     ? Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Text(
//                               'Order Summary:',
//                               style: TextStyle(
//                                   fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                             Expanded(
//                               child: ListView.builder(
//                                 itemCount: cartItems.length,
//                                 itemBuilder: (context, index) {
//                                   final cartItem = cartItems[index];
//                                   return ListTile(
//                                     leading: Image.asset(cartItem.image),
//                                     title: Text(cartItem.title),
//                                     subtitle: Text(
//                                         'Quantity: ${cartItem.quantity} \nCategory: ${cartItem.category}'),
//                                     trailing: Text(
//                                         '\$${(cartItem.price * cartItem.quantity).toStringAsFixed(2)}'),
//                                   );
//                                 },
//                               ),
//                             ),
//                             Divider(),
//                             Padding(
//                               padding: const EdgeInsets.symmetric(vertical: 8),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text(
//                                     'Total:',
//                                     style: TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text(
//                                     '\$${totalPrice.toStringAsFixed(2)}',
//                                     style: const TextStyle(
//                                         fontSize: 18,
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 setState(() {
//                                   activeStep++;
//                                 });
//                               },
//                               child: const Text("Next"),
//                             ),
//                           ],
//                         ),
//                       )
//                     : Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Column(
//                           children: [
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: 'Card Number',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: 'Expiry Date',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: 'CVV',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             TextField(
//                               decoration: InputDecoration(
//                                 labelText: 'Card Holder Name',
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 20),
//                             ElevatedButton(
//                               onPressed: () {
//                                 // Handle payment logic here
//                               },
//                               child: const Text("Pay Now"),
//                             ),
//                           ],
//                         ),
//                       ),
//           ),
//         ],
//       ),
//     );
//   }
// }
