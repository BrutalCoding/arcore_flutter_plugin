import 'dart:typed_data';

class ArCoreMediaInfo {
  ArCoreMediaInfo({
    this.isVideo,
    this.isGif,
    this.chromaColor,
    this.width,
    this.height,
  })  : assert(isVideo != null),
        assert(isGif != null),
        assert(width != null && width > 0),
        assert(height != null && height > 0);

  final bool isVideo;
  final bool isGif;
  final int chromaColor;
  final int width;
  final int height;

  Map<String, dynamic> toMap() => <String, dynamic>{'isVideo': isVideo, 'isGif': isGif, 'chromaColor': chromaColor, 'width': width, 'height': height}..removeWhere((String k, dynamic v) => v == null);
}