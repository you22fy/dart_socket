import 'package:socket_io_client/socket_io_client.dart' as IO;

main() {
  // Dart client
  final socket = IO.io('http://0.0.0.0:8080');
  socket.onConnect((_) {
    print('connect');
    socket.emit('msg', 'test');
  });
  socket.on('event', (data) => print(data));
  socket.onDisconnect((_) => print('disconnect'));
  socket.on('fromServer', (_) => print(_));
}
