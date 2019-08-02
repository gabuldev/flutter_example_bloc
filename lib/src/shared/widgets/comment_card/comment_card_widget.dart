import 'package:flutter/material.dart';
import 'package:flutter_talks_design/src/shared/models/comentario_model.dart';

class CommentCard extends StatefulWidget {
  final ComentarioModel snapshot;

  const CommentCard({Key key, this.snapshot}) : super(key: key); 
  @override
  State<StatefulWidget> createState() {
    return _CommentCardState();
  }
}

class _CommentCardState extends State < StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: Text(""),
          subtitle: Text("Amazing text guy you areth da n;fa d fkna ;ad nfa dlna; ldnfa lfns; dfnasd ;nfa lknas"),
        ),
      ),
    );
  }
}