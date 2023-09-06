part of "main.dart";

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text('Name'),
      subtitle: Text('Subtitile'),
      trailing: Text('10.00 PM'),
    );
  }
}
