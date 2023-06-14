// import 'package:rxdart/rxdart.dart';

// class Counter {
//   int initialCount = 0;
//   BehaviorSubject<int>? _subjectCounter;

//   Counter({required this.initialCount}) {
//     _subjectCounter = BehaviorSubject<int>.seeded(initialCount);
//   }

//   Stream<int> get counterObservable => _subjectCounter!.stream;

//   void increment() {
//     initialCount++;
//     _subjectCounter!.sink.add(initialCount);
//   }

//   void decrement() {
//     if (initialCount > 0) {
//       initialCount--;
//       _subjectCounter!.sink.add(initialCount);
//     }
//   }

//   void dispose() {
//     _subjectCounter!.close();
//   }
// }
