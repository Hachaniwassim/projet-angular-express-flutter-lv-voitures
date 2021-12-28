import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main.dart';

class choix extends StatelessWidget {
  final VoidCallback back;
  choix({
    Key ?key,
    required this.back,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f5fa),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 45.0, end: 32.8),
            Pin(size: 21.0, start: 13.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 31.0, end: 0.0),
                  Pin(size: 11.3, start: 6.3),
                  child:
                      // Adobe XD layer: 'Battery' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 2.3),
                        Pin(start: 0.0, end: 0.0),
                        child:
                            // Adobe XD layer: 'Border' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.67),
                            color: const Color(0x59ffffff),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.3, end: 0.0),
                        Pin(size: 4.0, middle: 0.5),
                        child:
                            // Adobe XD layer: 'Cap' (shape)
                            SvgPicture.string(
                          _svg_nrpqt7,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 18.0, start: 2.0),
                        Pin(start: 2.0, end: 2.0),
                        child:
                            // Adobe XD layer: 'Capacity' (shape)
                            Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.33),
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 41.0, middle: 0.0),
                  Pin(size: 21.0, start: 0.0),
                  child: Text(
                    '12:50',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 15.3, end: 45.3),
                  Pin(size: 11.0, start: 5.3),
                  child:
                      // Adobe XD layer: 'Wifi' (shape)
                      SvgPicture.string(
                    _svg_umv43p,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 17.0, end: 65.6),
                  Pin(size: 10.7, start: 5.7),
                  child:
                      // Adobe XD layer: 'Cellular Connection' (shape)
                      SvgPicture.string(
                    _svg_zev9t,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 417.0, start: 0.0),
            child:
                // Adobe XD layer: 'Organe top shape' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 24.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_gc7wu0,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 24.0),
                  child:
                      // Adobe XD layer: 'Shaped subtraction' (shape)
                      SvgPicture.string(
                    _svg_tzy9sz,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 24.0),
                  child:
                      // Adobe XD layer: 'Background objects' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: -97.0, end: -88.0),
                        Pin(start: -163.0, end: -71.0),
                        child:
                            // Adobe XD layer: 'background objects' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(size: 196.0, start: 30.0),
                              Pin(size: 183.0, middle: 0.241),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x20ba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 319.0, end: 0.0),
                              Pin(size: 297.0, start: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x20ba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 116.0, middle: 0.2484),
                              Pin(size: 108.0, middle: 0.4682),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x20ba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 20.0, middle: 0.456),
                              Pin(size: 19.0, middle: 0.4671),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x2fba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 14.0, middle: 0.4547),
                              Pin(size: 14.0, middle: 0.633),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x2fba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 23.0, end: 81.0),
                              Pin(size: 21.0, middle: 0.8267),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x2fba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 32.0, middle: 0.6067),
                              Pin(size: 29.0, middle: 0.4967),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x2fba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 256.0, start: 0.0),
                              Pin(size: 239.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x20ba1c1c),
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 220.9, end: 33.8),
                              Pin(size: 115.0, middle: 0.6239),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(start: 0.0, end: 0.0),
                                    child: SvgPicture.string(
                                      _svg_bieogw,
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
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_p5gl15,
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
            Pin(start: 40.3, end: 40.3),
            Pin(size: 205.2, middle: 0.4701),
            child:
                // Adobe XD layer: '2017-volkswagen-gti…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('images/rougecar.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 119.0, middle: 0.5017),
            Pin(size: 5.0, end: 25.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xff4a4b4d),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 94.0, end: 94.0),
            Pin(size: 89.0, middle: 0.6766),
            child: Text(
              'Discover the best cars and Find the best prices ',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          buildGroupe16110(context),
          Pinned.fromPins(
            Pin(start: 54.0, end: 53.0),
            Pin(size: 56.0, middle: 0.8071),
            child:
            ConstrainedBox(
              constraints: BoxConstraints.tightFor(width: 400,height: 50),
              child: ElevatedButton(
                child: Text(
                  "Get started".toUpperCase(),
                  style: TextStyle(fontSize: 14),
                ),
                style: ButtonStyle(
                  foregroundColor:
                  MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black),
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(
                              color: Colors.black))),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  MyHomePage(title: 'rentcar')),
                  );
                },
              ),
            ),
            //child:
                // Adobe XD layer: 'Rounded Orange Butt…' (component)
              //  RoundedOrangeButton(),
          ),
          Container(),
        ],
      ),
    );
  }

  Widget buildGroupe16110(context) {
    return Pinned.fromPins(
      Pin(size: 53.0, start: 12.0),
      Pin(size: 52.0, start: 67.0),
      child: GestureDetector(
        onTap: () => back?.call(),
        child: Stack(
          children: <Widget>[
            Pinned.fromPins(
              Pin(start: 0.0, end: 0.0),
              Pin(start: 0.0, end: 0.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  color: const Color(0xff3f3f46),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x4f0d228b),
                      offset: Offset(0, 5),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
            Pinned.fromPins(
              Pin(size: 17.9, middle: 0.5123),
              Pin(size: 17.4, middle: 0.4859),
              child:
                  // Adobe XD layer: 'arrow-right-solid' (shape)
                  SvgPicture.string(
                _svg_axouwq,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_nrpqt7 =
    '<svg viewBox="29.7 3.7 1.3 4.0" ><path transform="translate(29.67, 3.67)" d="M 0 0 L 0 4 C 0.8047311305999756 3.661223411560059 1.328037977218628 2.873133182525635 1.328037977218628 2 C 1.328037977218628 1.126866698265076 0.8047311305999756 0.3387765288352966 0 0" fill="#ffffff" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_umv43p =
    '<svg viewBox="308.7 -215.7 15.3 11.0" ><path transform="translate(308.69, -215.67)" d="M 7.636517524719238 10.96560001373291 C 7.553837299346924 10.96560001373291 7.473147392272949 10.93181037902832 7.415117263793945 10.87290000915527 L 5.417117595672607 8.856900215148926 C 5.355837345123291 8.796520233154297 5.321717262268066 8.712539672851562 5.323517322540283 8.626500129699707 C 5.325307369232178 8.540619850158691 5.363027572631836 8.458290100097656 5.427017211914062 8.400600433349609 C 6.043807506561279 7.878690242767334 6.828487396240234 7.591279983520508 7.636517524719238 7.591279983520508 C 8.444547653198242 7.591279983520508 9.229227066040039 7.878699779510498 9.846017837524414 8.400600433349609 C 9.909987449645996 8.457460403442383 9.947707176208496 8.539790153503418 9.949517250061035 8.626500129699707 C 9.95131778717041 8.712539672851562 9.917197227478027 8.796520233154297 9.855916976928711 8.856900215148926 L 7.857917308807373 10.87290000915527 C 7.799037456512451 10.93268013000488 7.720407485961914 10.96560001373291 7.636517524719238 10.96560001373291 Z M 11.1447172164917 7.427700042724609 C 11.06472778320312 7.427700042724609 10.9886474609375 7.397650241851807 10.93051719665527 7.343100070953369 C 10.02612781524658 6.524199962615967 8.856297492980957 6.073200225830078 7.636517524719238 6.073200225830078 C 6.417577266693115 6.073200225830078 5.248707294464111 6.524189949035645 4.345217227935791 7.343100070953369 C 4.287087440490723 7.397650241851807 4.211007595062256 7.427700042724609 4.131017208099365 7.427700042724609 C 4.048027515411377 7.427700042724609 3.970037460327148 7.395420074462891 3.911417484283447 7.336800098419189 L 2.757617473602295 6.170400142669678 C 2.695777416229248 6.108550071716309 2.662217378616333 6.026730060577393 2.663117408752441 5.940000057220459 C 2.664007425308228 5.853139877319336 2.69884729385376 5.771959781646729 2.761217355728149 5.711400032043457 C 4.090717315673828 4.47461986541748 5.822447299957275 3.793499946594238 7.637417316436768 3.793499946594238 C 9.452387809753418 3.793499946594238 11.18411731719971 4.47461986541748 12.51361751556396 5.711400032043457 C 12.57655715942383 5.772540092468262 12.61171722412109 5.853720188140869 12.61261749267578 5.940000057220459 C 12.61350727081299 6.025139808654785 12.57939720153809 6.109109878540039 12.51901721954346 6.170400142669678 L 11.36431694030762 7.336800098419189 C 11.30568695068359 7.395420074462891 11.227707862854 7.427700042724609 11.1447172164917 7.427700042724609 Z M 13.80421733856201 4.743000030517578 C 13.72327709197998 4.743000030517578 13.64720726013184 4.711999893188477 13.59001731872559 4.655700206756592 C 11.97507762908936 3.121779918670654 9.860747337341309 2.276999950408936 7.636517524719238 2.276999950408936 C 5.41138744354248 2.276999950408936 3.297057390213013 3.121769905090332 1.683017373085022 4.655700206756592 C 1.625837445259094 4.711989879608154 1.549757361412048 4.743000030517578 1.468817353248596 4.743000030517578 C 1.385827422142029 4.743000030517578 1.3078373670578 4.710720062255859 1.249217391014099 4.652100086212158 L 0.09361741691827774 3.485699892044067 C 0.03236741945147514 3.423549890518188 -0.0008725797524675727 3.342360019683838 1.742024505801965e-05 3.257100105285645 C 0.000917420256882906 3.170560121536255 0.03511742129921913 3.089689970016479 0.09631741791963577 3.029400110244751 C 2.134447336196899 1.075860023498535 4.812267303466797 0 7.636517524719238 0 C 10.46076774597168 0 13.13859748840332 1.075860023498535 15.17671775817871 3.029400110244751 C 15.23734760284424 3.090039968490601 15.27211761474609 3.173029899597168 15.27211761474609 3.257100105285645 C 15.2730073928833 3.342360019683838 15.23976707458496 3.423549890518188 15.17851734161377 3.485699892044067 L 14.02291774749756 4.652100086212158 C 13.96428775787354 4.710720062255859 13.88662719726562 4.743000030517578 13.80421733856201 4.743000030517578 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_zev9t =
    '<svg viewBox="286.7 -215.3 17.0 10.7" ><path transform="translate(286.67, -215.33)" d="M 16.00020027160645 10.6668004989624 L 15.00029945373535 10.6668004989624 C 14.44894981384277 10.6668004989624 14.00039958953857 10.2182502746582 14.00039958953857 9.666900634765625 L 14.00039958953857 0.9998999834060669 C 14.00039958953857 0.4485500156879425 14.44894981384277 0 15.00029945373535 0 L 16.00020027160645 0 C 16.55154991149902 0 17.00010108947754 0.4485500156879425 17.00010108947754 0.9998999834060669 L 17.00010108947754 9.666900634765625 C 17.00010108947754 10.2182502746582 16.55154991149902 10.6668004989624 16.00020027160645 10.6668004989624 Z M 11.33369922637939 10.6668004989624 L 10.33290004730225 10.6668004989624 C 9.781549453735352 10.6668004989624 9.332999229431152 10.2182502746582 9.332999229431152 9.666900634765625 L 9.332999229431152 3.333600044250488 C 9.332999229431152 2.782249927520752 9.781549453735352 2.333699941635132 10.33290004730225 2.333699941635132 L 11.33369922637939 2.333699941635132 C 11.88504981994629 2.333699941635132 12.33360004425049 2.782249927520752 12.33360004425049 3.333600044250488 L 12.33360004425049 9.666900634765625 C 12.33360004425049 10.2182502746582 11.88504981994629 10.6668004989624 11.33369922637939 10.6668004989624 Z M 6.666300296783447 10.6668004989624 L 5.666399955749512 10.6668004989624 C 5.115049839019775 10.6668004989624 4.666500091552734 10.2182502746582 4.666500091552734 9.666900634765625 L 4.666500091552734 5.66640043258667 C 4.666500091552734 5.115050315856934 5.115049839019775 4.666500091552734 5.666399955749512 4.666500091552734 L 6.666300296783447 4.666500091552734 C 7.218140125274658 4.666500091552734 7.667099952697754 5.115050315856934 7.667099952697754 5.66640043258667 L 7.667099952697754 9.666900634765625 C 7.667099952697754 10.2182502746582 7.218140125274658 10.6668004989624 6.666300296783447 10.6668004989624 Z M 1.999799966812134 10.6668004989624 L 0.9998999834060669 10.6668004989624 C 0.4485500156879425 10.6668004989624 0 10.2182502746582 0 9.666900634765625 L 0 7.667100429534912 C 0 7.115260124206543 0.4485500156879425 6.666300296783447 0.9998999834060669 6.666300296783447 L 1.999799966812134 6.666300296783447 C 2.55115008354187 6.666300296783447 2.99970006942749 7.115260124206543 2.99970006942749 7.667100429534912 L 2.99970006942749 9.666900634765625 C 2.99970006942749 10.2182502746582 2.55115008354187 10.6668004989624 1.999799966812134 10.6668004989624 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gc7wu0 =
    '<svg viewBox="0.0 24.0 414.0 393.0" ><path transform="translate(0.0, 24.0)" d="M 396.9999084472656 393.0003051757812 L 319.4963989257812 393.0003051757812 C 315.2287902832031 393.0003051757812 311.148193359375 391.4125366210938 308.0062866210938 388.529541015625 C 304.8837890625 385.664306640625 302.9525451660156 381.7714538574219 302.5682983398438 377.5680541992188 L 302.3848876953125 377.5680541992188 C 294.8611450195312 333.4544067382812 254.7467956542969 301.43701171875 207.0009002685547 301.43701171875 C 159.2552490234375 301.43701171875 119.1404495239258 333.4547424316406 111.6168975830078 377.5680541992188 L 111.4335021972656 377.5680541992188 C 111.0492477416992 381.7713928222656 109.1175003051758 385.6646118164062 105.9950485229492 388.529541015625 C 102.852897644043 391.4125366210938 98.77214813232422 393.0003051757812 94.50450134277344 393.0003051757812 L 17.00009918212891 393.0003051757812 C 12.73250007629395 393.0003051757812 8.651900291442871 391.4125366210938 5.510000228881836 388.529541015625 C 2.387500047683716 385.664306640625 0.456250011920929 381.7714538574219 0.07199999690055847 377.5680541992188 L 0 377.5680541992188 L 0 -9.521484116703505e-07 L 414 -9.521484116703505e-07 L 414 306.091796875 L 414 376.0002136230469 L 414 377.5680541992188 L 413.928955078125 377.5680541992188 C 413.5446472167969 381.7714538574219 411.6129150390625 385.6646118164062 408.4904479980469 388.529541015625 C 405.3482971191406 391.4125366210938 401.2675476074219 393.0003051757812 396.9999084472656 393.0003051757812 Z" fill="#ba1c1c" fill-opacity="0.25" stroke="none" stroke-width="1" stroke-opacity="0.28" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bieogw =
    '<svg viewBox="0.0 0.0 220.9 115.0" ><path transform="translate(-10.49, -37.82)" d="M 231.4172210693359 145.0442962646484 C 231.4172210693359 149.3379974365234 227.3192749023438 152.8431243896484 222.3190612792969 152.8431243896484 L 19.58417129516602 152.8431243896484 C 14.58395385742188 152.8431243896484 10.48600769042969 149.3379974365234 10.48600769042969 145.0442962646484 C 10.48600769042969 140.7681579589844 14.58395385742188 137.2805480957031 19.58417129516602 137.2805480957031 L 222.3190612792969 137.2805480957031 C 227.3192749023438 137.2805480957031 231.4172210693359 140.7681579589844 231.4172210693359 145.0442962646484 Z M 131.5630035400391 47.25261306762695 C 131.2810363769531 42.01256942749023 126.6567916870117 37.82403564453125 120.9421997070312 37.82403564453125 C 115.2652435302734 37.82403564453125 110.659782409668 41.97751235961914 110.3590240478516 47.20006561279297 C 113.7614212036133 46.81450653076172 117.2202301025391 46.6042366027832 120.7354507446289 46.6042366027832 C 124.3822402954102 46.6042366027832 128.0102386474609 46.83207321166992 131.5630035400391 47.25261306762695 Z M 214.1607818603516 130.3930816650391 L 27.74245643615723 130.3930816650391 C 31.50200843811035 85.45796966552734 71.78582000732422 50.07420349121094 120.9421997070312 50.07420349121094 C 170.1174468994141 50.07420349121094 210.4012145996094 85.45796966552734 214.1607818603516 130.3930816650391 Z M 110.2838287353516 57.71529006958008 C 110.2838287353516 57.71529006958008 58.02579879760742 68.33568572998047 42.42356872558594 122.2788314819336 L 62.18012237548828 122.2788314819336 C 62.18012237548828 122.2788314819336 73.12046051025391 77.29117584228516 110.2838287353516 57.71529006958008 Z" fill="#ba1c1c" fill-opacity="0.16" stroke="none" stroke-width="1" stroke-opacity="0.18" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_p5gl15 =
    '<svg viewBox="0.0 0.0 414.0 393.0" ><path transform="translate(0.0, 0.0)" d="M 396.9999084472656 393.0003051757812 L 319.4963989257812 393.0003051757812 C 315.2287902832031 393.0003051757812 311.148193359375 391.4125366210938 308.0062866210938 388.529541015625 C 304.8837890625 385.664306640625 302.9525451660156 381.7714538574219 302.5682983398438 377.5680541992188 L 302.3848876953125 377.5680541992188 C 294.8611450195312 333.4544067382812 254.7467956542969 301.43701171875 207.0009002685547 301.43701171875 C 159.2552490234375 301.43701171875 119.1404495239258 333.4547424316406 111.6168975830078 377.5680541992188 L 111.4335021972656 377.5680541992188 C 111.0492477416992 381.7713928222656 109.1175003051758 385.6646118164062 105.9950485229492 388.529541015625 C 102.852897644043 391.4125366210938 98.77214813232422 393.0003051757812 94.50450134277344 393.0003051757812 L 17.00009918212891 393.0003051757812 C 12.73250007629395 393.0003051757812 8.651900291442871 391.4125366210938 5.510000228881836 388.529541015625 C 2.387500047683716 385.664306640625 0.456250011920929 381.7714538574219 0.07199999690055847 377.5680541992188 L 0 377.5680541992188 L 0 -9.521484116703505e-07 L 414 -9.521484116703505e-07 L 414 306.091796875 L 414 376.0002136230469 L 414 377.5680541992188 L 413.928955078125 377.5680541992188 C 413.5446472167969 381.7714538574219 411.6129150390625 385.6646118164062 408.4904479980469 388.529541015625 C 405.3482971191406 391.4125366210938 401.2675476074219 393.0003051757812 396.9999084472656 393.0003051757812 Z" fill="#ba1c1c" fill-opacity="0.31" stroke="none" stroke-width="1" stroke-opacity="0.35" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tzy9sz =
    '<svg viewBox="0.0 0.0 414.0 393.0" ><path transform="translate(0.0, 0.0)" d="M 396.9999084472656 393.0003051757812 L 319.4963989257812 393.0003051757812 C 315.2287902832031 393.0003051757812 311.148193359375 391.4125366210938 308.0062866210938 388.529541015625 C 304.8837890625 385.664306640625 302.9525451660156 381.7714538574219 302.5682983398438 377.5680541992188 L 302.3848876953125 377.5680541992188 C 294.8611450195312 333.4544067382812 254.7467956542969 301.43701171875 207.0009002685547 301.43701171875 C 159.2552490234375 301.43701171875 119.1404495239258 333.4547424316406 111.6168975830078 377.5680541992188 L 111.4335021972656 377.5680541992188 C 111.0492477416992 381.7713928222656 109.1175003051758 385.6646118164062 105.9950485229492 388.529541015625 C 102.852897644043 391.4125366210938 98.77214813232422 393.0003051757812 94.50450134277344 393.0003051757812 L 17.00009918212891 393.0003051757812 C 12.73250007629395 393.0003051757812 8.651900291442871 391.4125366210938 5.510000228881836 388.529541015625 C 2.387500047683716 385.664306640625 0.456250011920929 381.7714538574219 0.07199999690055847 377.5680541992188 L 0 377.5680541992188 L 0 -9.521484116703505e-07 L 414 -9.521484116703505e-07 L 414 306.091796875 L 414 376.0002136230469 L 414 377.5680541992188 L 413.928955078125 377.5680541992188 C 413.5446472167969 381.7714538574219 411.6129150390625 385.6646118164062 408.4904479980469 388.529541015625 C 405.3482971191406 391.4125366210938 401.2675476074219 393.0003051757812 396.9999084472656 393.0003051757812 Z" fill="#ba1c1c" fill-opacity="0.89" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_axouwq =
    '<svg viewBox="18.0 16.8 17.9 17.4" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(18.0, -20.85)" d="M 10.27357959747314 38.81678009033203 L 9.388029098510742 37.93121337890625 C 9.013066291809082 37.55625915527344 8.406743049621582 37.55625915527344 8.035769462585449 37.93121337890625 L 0.2812193632125854 45.68180465698242 C -0.09374169260263443 46.0567626953125 -0.09374169260263443 46.66308212280273 0.2812193632125854 47.0340576171875 L 8.035769462585449 54.78861618041992 C 8.410731315612793 55.1635627746582 9.017055511474609 55.1635627746582 9.388029098510742 54.78861618041992 L 10.27357959747314 53.90307235717773 C 10.65253067016602 53.52411270141602 10.64455318450928 52.90582656860352 10.25762462615967 52.53485488891602 L 5.450918674468994 47.95550537109375 L 16.91520881652832 47.95550537109375 C 17.44574165344238 47.95550537109375 17.87256050109863 47.52869033813477 17.87256050109863 46.99814224243164 L 17.87256050109863 45.72169876098633 C 17.87256050109863 45.19115829467773 17.44574165344238 44.76433563232422 16.91520881652832 44.76433563232422 L 5.450918674468994 44.76433563232422 L 10.25762462615967 40.18498611450195 C 10.64854335784912 39.81402206420898 10.65652179718018 39.19571685791016 10.27357959747314 38.81678009033203 Z" fill="#f2f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
