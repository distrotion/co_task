import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class InfoMessageDialog extends StatefulWidget {
  @override
  _InfoMessageDialogState createState() => _InfoMessageDialogState();
}

class _InfoMessageDialogState extends State<InfoMessageDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
