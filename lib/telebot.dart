import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

class Telebot {
  telebot() async {
    var bootToken = "7336719075:AAFS54p7zH_Dm11E3HqaWo0DLgjvjr3Dl_8";
    final userName = (await Telegram(bootToken).getMe()).username;
    var teledart = TeleDart(bootToken, Event(userName!));
    teledart.start();

    teledart.onCommand("start").listen((message) {
      message.reply("Assalomu alaykum");
    });
  }
}
