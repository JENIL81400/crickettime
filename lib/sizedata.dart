import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sizedata
{
  static double? width,height,stheight,btheight,appheight,bodyheight;


  sizedata(BuildContext context)
  {
    width=MediaQuery.of(context).size.width;
    height=MediaQuery.of(context).size.height; //screenheight
    stheight=MediaQuery.of(context).padding.top; //statusbar
    btheight=MediaQuery.of(context).padding.bottom; //bottombar
    appheight=kToolbarHeight;     //appbar

    bodyheight=height!-stheight!-btheight!-appheight!;

    print("w=$width");
    print("w=${width!/2}");
    print("h=$height");
  }
}