import 'dart:io';

void main() async {
  final server = await ServerSocket.bind(
    '0.0.0.0',
    8080,
  );

  server.listen((Socket socket) {
    socket.listen((List<int> data) {
      print(data.toString());
    });
  });
}
