import 'package:flutter_tts/flutter_tts.dart';
import 'dart:async';
import 'dart:io';
class TTSUtil {


  TTSUtil. _();
  static late TTSUtil _manager;
  factory TTSUtil() {


    if (_manager == null) {


      _manager = TTSUtil._();
    }
    return _manager;
  }
  FlutterTts? flutterTts;

  initTTS() {


    flutterTts = FlutterTts();
  }

  Future speak(String text) async {


    /// 设置语言
    await flutterTts?.setLanguage("zh-CN");

    /// 设置音量
    await flutterTts?.setVolume(0.8);

    /// 设置语速
    await flutterTts?.setSpeechRate(0.5);

    /// 音调
    await flutterTts?.setPitch(1.0);

    // text = "你好，我的名字是李磊，你是不是韩梅梅？";
    if (text != null) {


      if (text.isNotEmpty) {


        await flutterTts?.speak(text);
      }
    }
  }

  /// 暂停
  Future pause() async {


    await flutterTts?.pause();
  }

  /// 结束
  Future stop() async {


    await flutterTts?.stop();
  }
}