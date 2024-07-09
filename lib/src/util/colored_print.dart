
import 'package:flutter/cupertino.dart';
import 'package:highlighted_print/highlighted_print.dart';

void printColoredText (String text, {TextColor color = TextColor.red, bool debug = true}){
  if(debug){
    debugPrint('${color.prefix}$text${color.suffix}');
    return;
  }
  print('${color.prefix}$text${color.suffix}');
}

void printColoredBackground (String text, {BgColor color = BgColor.red, bool debug = true}){
  if(debug){
    debugPrint('${color.prefix}\x1B[30m$text${color.suffix}');
    return;
  }
  print('${color.prefix}\x1B[30m$text${color.suffix}');
}

void printColored (String text, {TextColor? textColor, BgColor? bgColor, bool debug = true}){
  if(debug){
    debugPrint('${bgColor?.prefix ?? ""}${textColor?.prefix ?? ""}$text${bgColor?.suffix ?? ""}');
    return;
  }
  print('${bgColor?.prefix ?? ""}${textColor?.prefix ?? ""}$text${bgColor?.suffix ?? ""}');
}