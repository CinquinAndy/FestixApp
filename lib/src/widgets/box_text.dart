import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/widgets/styles.dart';
import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;
  TextAlign textAlign = TextAlign.start;

  BoxText.heading1(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = heading1Style.copyWith(color: color), super(key: key);

  BoxText.heading2(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = heading2Style.copyWith(color: color), super(key: key);

  BoxText.heading3(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = heading3Style.copyWith(color: color), super(key: key);

  BoxText.heading4(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = heading4Style.copyWith(color: color), super(key: key);

  BoxText.heading5(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = heading5Style.copyWith(color: color), super(key: key);

  BoxText.bodySub(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = bodySubTextStyle.copyWith(color: color), super(key: key);

  BoxText.bodyDesc(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = bodyDescTextStyle.copyWith(color: color), super(key: key);

  BoxText.body(this.text, {Key? key, Color color = kcGrey50Color, this.textAlign = TextAlign.start})
      : style = bodyBaseTextStyle.copyWith(color: color), super(key: key);

  BoxText.link(this.text, {Key? key, Color color = kcBlue500Color, this.textAlign = TextAlign.start})
      : style = bodyBaseTextStyle.copyWith(color: color), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style, textAlign: textAlign);
  }
}
