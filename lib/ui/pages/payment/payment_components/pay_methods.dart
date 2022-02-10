class PaymentMethod {
  final int id;
  final String title;
  PaymentMethod({required this.id, required this.title});
}

class RegionsMethod {
  final int id;
  final String city;
   bool state;
  RegionsMethod({required this.id, required this.city, required this.state});
}

List<RegionsMethod> paymentRegions = [
  RegionsMethod(id: 1, city: 'Asgabat', state: false),
  RegionsMethod(id: 2, city: 'Ahal', state: false),
  RegionsMethod(id: 3, city: 'Mary', state: false),
  RegionsMethod(id: 4, city: 'Lebap', state: false),
  RegionsMethod(id: 5, city: 'Dasoguz', state: false),
  RegionsMethod(id: 6, city: 'Balkan', state: false),
  RegionsMethod(id: 7, city: 'Turkmenistan', state: false)
];
List<PaymentMethod> paymentMethods = [
  PaymentMethod(id: 1, title: 'Free post'),
  PaymentMethod(id: 2, title: 'Post'),
  PaymentMethod(id: 3, title: 'Recommended post'),
  PaymentMethod(id: 4, title: 'Banner'),
  PaymentMethod(id: 5, title: 'Official profile')
];
