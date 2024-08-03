import 'package:flutter/material.dart';
import 'package:video_app/domain/entities/video_post.dart';

class VideoScrollableView extends StatelessWidget{
    
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});


  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        Container( color: Colors.red),
        Container( color: Colors.blue),
        Container( color: Colors.yellow),
        Container( color: Colors.green),
        Container( color: Colors.white),
        Container( color: Colors.purple),
        Container( color: Colors.grey),
        Container( color: Colors.black),
      ],
    
    );
  }
}
