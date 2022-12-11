import 'package:queue/queue.dart';
import 'package:test/test.dart';

void main() {
  group('Queue', () {
    test('overall test', () {
      final queue = Queue<int>();
      queue
        ..enqueue(1)
        ..enqueue(2)
        ..enqueue(3);

      expect(queue.peek(), 1);
      expect(queue.dequeue(), 1);
      expect(queue.size, 2);

      expect(queue.peek(), 2);
      expect(queue.isEmpty, false);
    });
  });
}
