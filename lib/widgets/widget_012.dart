import 'package:flutter/material.dart';

class Widget012 extends StatefulWidget {
  const Widget012({super.key});

  @override
  State<Widget012> createState() => _Widget012State();
}

class _Widget012State extends State<Widget012> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.indigoAccent,
            child: ListTile(
              title: Text(
                'Deleted',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        IconButton(
          onPressed: _addItem,
          icon: const Icon(Icons.add),
        ),
        Expanded(
          child: AnimatedList(
            key: _key,
            initialItemCount: 0,
            padding: EdgeInsets.all(10),
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                key: UniqueKey(),
                sizeFactor: animation,
                child: ListTile(
                  title: Text(
                    _items[index],
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      _removeItem(index);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
