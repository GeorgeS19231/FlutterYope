library chached_image;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Utilities{

  static networkImage () {
    return CachedNetworkImage(
  imageUrl: "https://i.pinimg.com/originals/02/af/69/02af69028308b7da23c528bffded9e51.jpg",
  progressIndicatorBuilder: (context, url, downloadProgress) =>
  CircularProgressIndicator(value: downloadProgress.progress),
  errorWidget: (context, url, error) => Icon(Icons.error),
  );}


}