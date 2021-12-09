import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/widgets/styles.dart';
import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const BoxText.heading1(this.text) : style = heading1Style;
  const BoxText.heading2(this.text) : style = heading2Style;
  const BoxText.heading3(this.text) : style = heading3Style;
  const BoxText.heading4(this.text) : style = heading4Style;
  const BoxText.heading5(this.text) : style = heading5Style;
  const BoxText.bodySub(this.text) : style = bodySubTextStyle;
  const BoxText.bodyDesc(this.text) : style = bodyDescTextStyle;

  BoxText.body(this.text, {Color color = kcBlue500Color})
      : style = bodyBaseTextStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
