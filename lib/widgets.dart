import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

XylophoneTab (Color color, int SoundNo){
 return Expanded(
   child: GestureDetector(
     onTap: (){
       PlaySound(SoundNo);
     },
     child: Container(
       decoration: BoxDecoration(
         color: color,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 2.0),
            blurRadius: 1,
            spreadRadius: 1,
          )
        ]
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.music_note),
                SizedBox(width: 10),
                Icon(Icons.audiotrack_outlined),
                SizedBox(width: 10),
                Icon(Icons.music_note_rounded),
              ],
       ),
     ),
   ),
 );
 }
void PlaySound(int SoundNo){
  final audioplayer = AudioPlayer();
  audioplayer.play(AssetSource('assets_note$SoundNo.wav'));
}
