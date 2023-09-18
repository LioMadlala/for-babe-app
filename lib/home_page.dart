import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CardSwiperController controller = CardSwiperController();
  List cards = [
    LoveCard(
      message: "Ndlovukazi yami",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message: "Sthandwa sami",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Nonkalankala Wami 🦀😊",
      color: Colors.pink[200]!,
    ),
    LoveCard(
      message: "I made this app on company time just for you. ❤️",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Thank you for loving me",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message: "I appreciate you",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "You Take My Breath Away every minute i think of you.",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "You'll always be my girl.",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message: "Im Always gonna be your guy",
      color: Colors.purple[100]!,
    ),
    LoveCard(
      message: "Your Superman",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Your Protector",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Your provider",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Your smile keeper",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Your baby daddy 🙂❤️",
      color: Colors.pink[300]!,
    ),
    LoveCard(
      message:
          "You gonna need to start paying rent in my heart coz u live rent free. 😊",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message:
          "Im soo crazy in love with you to the level of no longer seeing any plans being a success without you",
      color: Colors.purple[200]!,
    ),
    LoveCard(
      message: "I love making you laugh.",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "I love making you Horny 🍆🍑.",
      color: Colors.pink[200]!,
    ),
    LoveCard(
      message: "I love looking at you everyday 😊.",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message: "I love looking hearing your voice everyday.",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message:
          "You're kinda, maybe a little, sorta, pretty much always on my mind.",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message: "I will follow you anywhere.",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "Do you have any idea how much I adore you? 🥺",
      color: Colors.red[100]!,
    ),
    LoveCard(
      message:
          "Because you're in my life, I know true love exists. i was really close on quitting for good in believing in it",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message:
          "I can't believe a girl like you exists and that I'm lucky enough to have found her.",
      color: Colors.purple[100]!,
    ),
    LoveCard(
      message: "To me, you are perfect.",
      color: Colors.purple[100]!,
    ),
    LoveCard(
      message: "I can't get enough of you.",
      color: Colors.pink[100]!,
    ),
    LoveCard(
      message:
          "Going through difficult times with you has only strengthened our relationship.",
      color: Colors.green[100]!,
    ),
    LoveCard(
      message: "I have waited all of my life to be with someone like you. ❤️",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message:
          "NGIYAKUTHANDA! NGANE YABANTU \n indlela ongihlanyisa ngayo ngicela singadakelwana coz i dont know how i would handle not being with you.",
      color: Colors.amber[100]!,
    ),
    LoveCard(
      message:
          "I promise loyaly, honor and respect to you. its been like that since day 1. \n ngixolise for cheating on you when Singakabonani kwaba iphutha 🥺🙌 nam ngiyakuxolela",
      color: Colors.grey[100]!,
    ),
    LoveCard(
      message: "I hope to be the best Boyfriend of you.",
      color: Colors.pink[200]!,
    ),
    LoveCard(
      message: "I LOVE YOU!!!",
      color: Colors.pink,
    ),
  ];

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg-pattern.png'),
            opacity: 0.3,
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: const Text(
                "For Indlovu 🐘 yamie ❤️",
                style: TextStyle(
                  fontFamily: 'GreatVibes',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: CardSwiper(
                controller: controller,
                cardsCount: cards.length,
                onSwipe: _onSwipe,
                onUndo: _onUndo,
                numberOfCardsDisplayed: 3,
                backCardOffset: const Offset(30, 5),
                padding: const EdgeInsets.all(40.0),
                cardBuilder: (
                  context,
                  index,
                  horizontalThresholdPercentage,
                  verticalThresholdPercentage,
                ) =>
                    cards[index],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: controller.undo,
                    child: const Icon(Icons.rotate_left),
                  ),
                  FloatingActionButton(
                    onPressed: controller.swipe,
                    child: const Icon(Icons.rotate_right),
                  ),
                  // FloatingActionButton(
                  //   onPressed: controller.swipeLeft,
                  //   child: const Icon(Icons.keyboard_arrow_left),
                  // ),
                  // FloatingActionButton(
                  //   onPressed: controller.swipeRight,
                  //   child: const Icon(Icons.keyboard_arrow_right),
                  // ),
                  // FloatingActionButton(
                  //   onPressed: controller.swipeTop,
                  //   child: const Icon(Icons.keyboard_arrow_up),
                  // ),
                  // FloatingActionButton(
                  //   onPressed: controller.swipeBottom,
                  //   child: const Icon(Icons.keyboard_arrow_down),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class LoveCard extends StatelessWidget {
  final String message;
  final Color color;

  const LoveCard({super.key, required this.message, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'HammersmithOne', fontSize: 15),
        ),
      ),
    );
  }
}
