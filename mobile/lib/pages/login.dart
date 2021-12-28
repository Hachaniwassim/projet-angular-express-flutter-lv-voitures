import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class login extends StatelessWidget {
  login({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff282626),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 497.0, end: -283.0),
            Pin(start: -16.0, end: 0.0),
            child:
                // Adobe XD layer: 'topp' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/car.png'),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.52), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 53.0),
            Pin(size: 54.0, middle: 0.4713),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d0d4e81),
                    offset: Offset(0, 10),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 53.0),
            Pin(size: 54.0, middle: 0.3681),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0d0d4e81),
                    offset: Offset(0, 10),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 42.0, end: 53.0),
            Pin(size: 54.0, middle: 0.6067),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: const Color(0xffbf3b3b),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, middle: 0.4814),
            Pin(size: 27.0, middle: 0.6007),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Google Sans',
                fontSize: 20,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.3324),
            Pin(size: 51.0, middle: 0.7417),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0f000000),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 82.0, middle: 0.6301),
            Pin(size: 51.0, middle: 0.7417),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0f000000),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 12.0, middle: 0.3606),
            Pin(size: 24.0, middle: 0.735),
            child:
                // Adobe XD layer: 'facebook (2)' (shape)
                SvgPicture.string(
              _svg_m4xg1v,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 126.0, middle: 0.4768),
            Pin(size: 17.0, middle: 0.5369),
            child: Text(
              'Forgot you password?',
              style: TextStyle(
                fontFamily: 'Google Sans',
                fontSize: 13,
                color: const Color(0xff8d8d8d),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 183.0, middle: 0.4857),
            Pin(size: 17.0, middle: 0.6612),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Google Sans',
                  fontSize: 13,
                  color: const Color(0xc9898888),
                ),
                children: [
                  TextSpan(
                    text: 'Don\'t have an account? ',
                  ),
                  TextSpan(
                    text: 'sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, middle: 0.6114),
            Pin(size: 24.0, middle: 0.735),
            child:
                // Adobe XD layer: 'search (1)' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 5.3, start: 0.0),
                  Pin(size: 11.2, middle: 0.5066),
                  child: SvgPicture.string(
                    _svg_sgxrxa,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 11.7, end: 0.0),
                  Pin(size: 11.6, end: 2.6),
                  child: SvgPicture.string(
                    _svg_j29hip,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.1, start: 1.4),
                  Pin(size: 9.5, end: 0.0),
                  child: SvgPicture.string(
                    _svg_nlvz43,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 18.3, start: 1.3),
                  Pin(size: 9.7, start: 0.0),
                  child: SvgPicture.string(
                    _svg_mc45js,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 174.0, middle: 0.4528),
            Pin(size: 53.0, middle: 0.2291),
            child: Text(
              'Welcome',
              style: TextStyle(
                fontFamily: 'Google Sans',
                fontSize: 40,
                color: const Color(0xffececf0),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.8005),
            Pin(size: 17.0, middle: 0.3729),
            child:
                // Adobe XD layer: 'check' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_stp44f,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 8.3, middle: 0.5408),
                  Pin(size: 6.0, middle: 0.5),
                  child: SvgPicture.string(
                    _svg_k72bdf,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 19.3, middle: 0.805),
            Pin(size: 12.3, middle: 0.4728),
            child:
                // Adobe XD layer: 'view' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_pqmf7h,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 7.6, middle: 0.5),
                  Pin(size: 7.6, middle: 0.5),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: SvgPicture.string(
                                _svg_b8k88,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_m4xg1v =
    '<svg viewBox="150.0 663.0 12.0 24.0" ><path transform="translate(143.81, 663.0)" d="M 15.99699974060059 3.984999895095825 L 18.1879997253418 3.984999895095825 L 18.1879997253418 0.1689999103546143 C 17.80999946594238 0.1169999092817307 16.51000022888184 -8.940696716308594e-08 14.99600028991699 -8.940696716308594e-08 C 11.83699989318848 -8.940696716308594e-08 9.673000335693359 1.986999869346619 9.673000335693359 5.638999938964844 L 9.673000335693359 9 L 6.187000274658203 9 L 6.187000274658203 13.26599979400635 L 9.673000335693359 13.26599979400635 L 9.673000335693359 24 L 13.94700050354004 24 L 13.94700050354004 13.26700019836426 L 17.29199981689453 13.26700019836426 L 17.82299995422363 9.00100040435791 L 13.94600009918213 9.00100040435791 L 13.94600009918213 6.062000274658203 C 13.94700050354004 4.829000473022461 14.2790002822876 3.985000371932983 15.99699974060059 3.985000371932983 Z" fill="#0f279e" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sgxrxa =
    '<svg viewBox="0.0 6.5 5.3 11.2" ><path transform="translate(0.0, -131.79)" d="M 5.318906307220459 146.2901916503906 L 4.483500480651855 149.4088745117188 L 1.43010950088501 149.4734802246094 C 0.5175937414169312 147.7809448242188 0 145.8445129394531 0 143.7866821289062 C 0 141.7967987060547 0.483937531709671 139.9202880859375 1.341750144958496 138.2680053710938 L 1.342406272888184 138.2680053710938 L 4.060781955718994 138.7663726806641 L 5.251594066619873 141.4684448242188 C 5.002359867095947 142.1950378417969 4.866515636444092 142.9750518798828 4.866515636444092 143.7866821289062 C 4.866609573364258 144.6675720214844 5.026171684265137 145.5115509033203 5.318906307220459 146.2901916503906 Z" fill="#fbbb00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j29hip =
    '<svg viewBox="12.3 9.8 11.7 11.6" ><path transform="translate(-249.36, -198.42)" d="M 273.154541015625 208.1759948730469 C 273.2923278808594 208.9019165039062 273.3641967773438 209.6515808105469 273.3641967773438 210.4177551269531 C 273.3641967773438 211.2768859863281 273.2738647460938 212.1148986816406 273.1017761230469 212.9232788085938 C 272.5176086425781 215.6740417480469 270.9912109375 218.0759887695312 268.8767395019531 219.7757873535156 L 268.8760986328125 219.7751159667969 L 265.4521484375 219.6004028320312 L 264.9675598144531 216.5753479003906 C 266.37060546875 215.7525024414062 267.4671020507812 214.4647827148438 268.0447082519531 212.9232788085938 L 261.6279907226562 212.9232788085938 L 261.6279907226562 208.1759948730469 L 268.1383056640625 208.1759948730469 L 273.154541015625 208.1759948730469 L 273.154541015625 208.1759948730469 Z" fill="#518ef8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nlvz43 =
    '<svg viewBox="1.4 14.5 18.1 9.5" ><path transform="translate(-29.08, -294.91)" d="M 48.59075164794922 316.2628173828125 L 48.59140777587891 316.2634887695312 C 46.53495407104492 317.9164428710938 43.92261123657227 318.9054565429688 41.07889556884766 318.9054565429688 C 36.50900268554688 318.9054565429688 32.53583145141602 316.3511962890625 30.50900268554688 312.59228515625 L 34.39779663085938 309.4089965820312 C 35.41119003295898 312.1136169433594 38.02020645141602 314.0388793945312 41.07889556884766 314.0388793945312 C 42.39359664916992 314.0388793945312 43.62528228759766 313.6835021972656 44.68217468261719 313.0630493164062 L 48.59075164794922 316.2628173828125 Z" fill="#28b446" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mc45js =
    '<svg viewBox="1.3 0.0 18.3 9.7" ><path transform="translate(-27.28, 0.0)" d="M 46.94181442260742 2.762625217437744 L 43.05432891845703 5.945250034332275 C 41.96050262451172 5.261531352996826 40.66750335693359 4.866562843322754 39.28225326538086 4.866562843322754 C 36.15432739257812 4.866562843322754 33.49652099609375 6.880172252655029 32.53388977050781 9.681751251220703 L 28.62465858459473 6.48131275177002 L 28.62400054931641 6.48131275177002 C 30.62115859985352 2.630765676498413 34.64443969726562 0 39.28225326538086 0 C 42.19388961791992 0 44.86356353759766 1.037156224250793 46.94181442260742 2.762625217437744 Z" fill="#f14336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_stp44f =
    '<svg viewBox="0.0 0.0 17.0 17.0" ><path  d="M 8.4993896484375 0 C 3.812640190124512 0 0 3.812640190124512 0 8.4993896484375 C 0 13.18613815307617 3.812640190124512 16.998779296875 8.4993896484375 16.998779296875 C 13.18613815307617 16.998779296875 16.998779296875 13.18613815307617 16.998779296875 8.4993896484375 C 16.998779296875 3.812640190124512 13.18613815307617 0 8.4993896484375 0 Z M 8.4993896484375 0" fill="#0d0404" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k72bdf =
    '<svg viewBox="4.7 5.5 8.3 6.0" ><path transform="translate(-136.64, -159.84)" d="M 149.4431762695312 166.5373229980469 L 144.8392944335938 171.1410827636719 C 144.701171875 171.2792053222656 144.5198669433594 171.3487091064453 144.3385620117188 171.3487091064453 C 144.1572570800781 171.3487091064453 143.9759521484375 171.2792053222656 143.8378295898438 171.1410827636719 L 141.5359497070312 168.8392028808594 C 141.2589263916016 168.5623168945312 141.2589263916016 168.1146240234375 141.5359497070312 167.8377380371094 C 141.8128356933594 167.5607147216797 142.2604064941406 167.5607147216797 142.5374145507812 167.8377380371094 L 144.3385620117188 169.6388702392578 L 148.4417114257812 165.5358581542969 C 148.7185974121094 165.2588500976562 149.1661529541016 165.2588500976562 149.4431762695312 165.5358581542969 C 149.7200622558594 165.812744140625 149.7200622558594 166.2603149414062 149.4431762695312 166.5373229980469 Z M 149.4431762695312 166.5373229980469" fill="#0d0404" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pqmf7h =
    '<svg viewBox="0.0 0.0 19.3 12.3" ><path transform="translate(0.0, -92.84)" d="M 19.20503425598145 98.61849975585938 C 19.0323657989502 98.38230895996094 14.9182767868042 92.83500671386719 9.663841247558594 92.83500671386719 C 4.409406185150146 92.83500671386719 0.295128345489502 98.38230895996094 0.1226494163274765 98.61827087402344 C -0.04088281840085983 98.84236145019531 -0.04088281840085983 99.14628601074219 0.1226494163274765 99.370361328125 C 0.295128345489502 99.6065673828125 4.409406185150146 105.1538696289062 9.663841247558594 105.1538696289062 C 14.9182767868042 105.1538696289062 19.0323657989502 99.60653686523438 19.20503425598145 99.37055969238281 C 19.36879348754883 99.14651489257812 19.36879348754883 98.84236145019531 19.20503425598145 98.61849975585938 Z M 9.663841247558594 103.8795166015625 C 5.793389797210693 103.8795166015625 2.441167831420898 100.1976623535156 1.448838114738464 98.99400329589844 C 2.439884185791016 97.78929138183594 5.78508472442627 94.10935974121094 9.663841247558594 94.10935974121094 C 13.534104347229 94.10935974121094 16.88609886169434 97.79057312011719 17.87884521484375 98.994873046875 C 16.88779830932617 100.1995391845703 13.54259872436523 103.8795166015625 9.663841247558594 103.8795166015625 Z" fill="#0b0b11" fill-opacity="0.12" stroke="none" stroke-width="1" stroke-opacity="0.12" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b8k88 =
    '<svg viewBox="0.0 0.0 7.6 7.6" ><path transform="translate(-154.72, -154.73)" d="M 158.5450897216797 154.7250061035156 C 156.4370574951172 154.7250061035156 154.7219848632812 156.4400787353516 154.7219848632812 158.5481109619141 C 154.7219848632812 160.6561279296875 156.4370574951172 162.3712310791016 158.5450897216797 162.3712310791016 C 160.6531066894531 162.3712310791016 162.3682098388672 160.6561279296875 162.3682098388672 158.5481109619141 C 162.3682098388672 156.4400787353516 160.6531066894531 154.7250061035156 158.5450897216797 154.7250061035156 Z M 158.5450897216797 161.0968322753906 C 157.1396636962891 161.0968322753906 155.9963836669922 159.9535064697266 155.9963836669922 158.5481109619141 C 155.9963836669922 157.1427307128906 157.1397094726562 155.9994049072266 158.5450897216797 155.9994049072266 C 159.9504852294922 155.9994049072266 161.0938110351562 157.1427307128906 161.0938110351562 158.5481109619141 C 161.0938110351562 159.9535064697266 159.9505157470703 161.0968322753906 158.5450897216797 161.0968322753906 Z" fill="#0b0b11" fill-opacity="0.12" stroke="none" stroke-width="1" stroke-opacity="0.12" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
