import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../index.dart';

class Word {
  final String word;
  final String meaning;
  final DateTime dateAdded;

  Word({required this.word, required this.meaning, required this.dateAdded});
}


class CarouselWithEffect extends ConsumerStatefulWidget {
  const CarouselWithEffect({super.key});

  @override
  ConsumerState<CarouselWithEffect> createState() => _CarouselWithEffectState();
}

class _CarouselWithEffectState extends ConsumerState<CarouselWithEffect> {
  final List<Map<String, String>> wordData = [
    {"word": "abandon", "meaning": "버리다"},
    {"word": "compile", "meaning": "모으다"},
    {"word": "assert", "meaning": "주장하다"},
    {"word": "evolve", "meaning": "진화하다"},
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("✨ 카드 넘김 단어장")),
      body: Column(
        children: [
          const SizedBox(height: 20),

          // 캐러셀
          CarouselSlider.builder(
            itemCount: wordData.length,
            itemBuilder: (context, index, realIndex) {
              final item = wordData[index];
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.indigo.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Transform.scale(
                  scale: currentIndex == index ? 1.0 : 0.9,
                  child: Transform.rotate(
                    angle: currentIndex == index ? 0 : 0.02,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            item['word']!,
                            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            item['meaning']!,
                            style: TextStyle(fontSize: 20, color: Colors.grey[800]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 300,
              enlargeCenterPage: true,
              viewportFraction: 0.75,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),

          const SizedBox(height: 20),

          // 인디케이터
          AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: wordData.length,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.indigo,
              dotHeight: 10,
              dotWidth: 10,
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

/////////////////////////////// 가장 초기 소스 코드 //////////////////////////////////////////////
class WordCarouselPage extends ConsumerStatefulWidget {
  const WordCarouselPage({super.key});

  @override
  ConsumerState<WordCarouselPage> createState() => _WordCarouselPageState();
}

class _WordCarouselPageState extends ConsumerState<WordCarouselPage> {
  bool hideWord = false;
  bool hideMeaning = false;
  int currentDateIndex = 0;

  final List<Word> words = [
    Word(word: "abandon", meaning: "버리다", dateAdded: DateTime(2025, 4, 8)),
    Word(word: "compile", meaning: "모으다", dateAdded: DateTime(2025, 4, 8)),
    Word(word: "essential", meaning: "필수적인", dateAdded: DateTime(2025, 4, 7)),
    Word(word: "evolve", meaning: "진화하다", dateAdded: DateTime(2025, 4, 6)),
    Word(word: "assert", meaning: "주장하다", dateAdded: DateTime(2025, 4, 6)),
  ];

  late Map<String, List<Word>> grouped;
  late List<String> dates;
  late List<List<Word>> wordLists;

  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    _prepareData();
    _initTTS();
  }

  void _prepareData() {
    grouped = {};
    for (var word in words) {
      String dateKey = DateFormat('yyyy-MM-dd').format(word.dateAdded);
      grouped.putIfAbsent(dateKey, () => []).add(word);
    }
    dates = grouped.keys.toList()..sort((a, b) => b.compareTo(a));
    wordLists = dates.map((d) => grouped[d]!).toList();
  }

  void _initTTS() {
    flutterTts = FlutterTts();
    flutterTts.setLanguage("en-US");
    flutterTts.setSpeechRate(0.45);
  }

  Future<void> speak(bool isKorean, String text) async {
    await flutterTts.setLanguage(isKorean ? "ko-KR" : "en-US");
    await flutterTts.speak(text);
  }

  Future<void> speakAllWords(List<Word> words) async {
    for (final word in words) {
      await speak(false, word.word);
      await Future.delayed(const Duration(milliseconds: 700));
      await speak(true, word.meaning);
      await Future.delayed(const Duration(milliseconds: 1000));
    }
  }

  Widget buildBlurredText(String text, bool hide) {
    return Stack(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        if (hide)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    if (dates.isEmpty) {
      return const Scaffold(
        body: Center(child: Text("단어가 없습니다")),
      );
    }

    final currentDate = dates[currentDateIndex];

    return Column(
        children: [
          // 보기 옵션 + 날짜 + 전체 낭독
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 보기 스위치
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Switch(
                          value: !hideWord,
                          onChanged: (val) => setState(() => hideWord = !val),
                        ),
                        const Text("단어 보기"),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          value: !hideMeaning,
                          onChanged: (val) => setState(() => hideMeaning = !val),
                        ),
                        const Text("뜻 보기"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "📅 $currentDate",
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton.icon(
                      onPressed: () => speakAllWords(wordLists[currentDateIndex]),
                      icon: const Icon(Icons.record_voice_over_rounded),
                      label: const Text("전체 낭독"),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 캐러셀
          Expanded(
            child: CarouselSlider.builder(
              itemCount: wordLists.length,
              options: CarouselOptions(
                height: double.infinity,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                viewportFraction: 0.85,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentDateIndex = index;
                  });
                },
              ),
              itemBuilder: (context, index, realIdx) {
                final wordList = wordLists[index];

                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListView.builder(
                    itemCount: wordList.length,
                    itemBuilder: (context, i) {
                      final word = wordList[i];
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // 단어 + 발음 버튼
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: buildBlurredText(word.word, hideWord)),
                                  IconButton(
                                    icon: const Icon(Icons.volume_up_rounded),
                                    onPressed: hideWord ? null : () => speak(false, word.word),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              // 뜻 + 발음 버튼
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(child: buildBlurredText(word.meaning, hideMeaning)),
                                  IconButton(
                                    icon: const Icon(Icons.volume_up_rounded),
                                    onPressed: hideMeaning ? null : () => speak(false, word.meaning),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      );
  }
}


/////////////////////////////// 반복 횟수 기능 //////////////////////////////////////////////
// class WordCarouselPage extends StatefulWidget {
//   const WordCarouselPage({super.key});

//   @override
//   State<WordCarouselPage> createState() => _WordCarouselPageState();
// }

// class _WordCarouselPageState extends State<WordCarouselPage> {
//   bool hideWord = false;
//   bool hideMeaning = false;
//   int currentDateIndex = 0;
//   int repeatCount = 1; // 0 = 무한 반복

//   final FlutterTts flutterTts = FlutterTts();
//   bool isSpeaking = false;

//   final List<Word> words = [
//     Word(word: "abandon", meaning: "버리다", dateAdded: DateTime(2025, 4, 8)),
//     Word(word: "compile", meaning: "모으다", dateAdded: DateTime(2025, 4, 8)),
//     Word(word: "essential", meaning: "필수적인", dateAdded: DateTime(2025, 4, 7)),
//     Word(word: "evolve", meaning: "진화하다", dateAdded: DateTime(2025, 4, 6)),
//     Word(word: "assert", meaning: "주장하다", dateAdded: DateTime(2025, 4, 6)),
//   ];

//   late Map<String, List<Word>> grouped;
//   late List<String> dates;
//   late List<List<Word>> wordLists;

//   @override
//   void initState() {
//     super.initState();
//     _prepareData();
//   }

//   void _prepareData() {
//     grouped = {};
//     for (var word in words) {
//       String dateKey = DateFormat('yyyy-MM-dd').format(word.dateAdded);
//       grouped.putIfAbsent(dateKey, () => []).add(word);
//     }
//     dates = grouped.keys.toList()..sort((a, b) => b.compareTo(a));
//     wordLists = dates.map((d) => grouped[d]!).toList();
//   }

//   Widget buildBlurredText(String text, bool hide) {
//     return Stack(
//       children: [
//         Text(
//           text,
//           style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//         ),
//         if (hide)
//           Positioned.fill(
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 color: Colors.grey.shade300.withOpacity(0.6),
//               ),
//             ),
//           ),
//       ],
//     );
//   }

//   Future<void> speak(String text, {bool isKorean = false}) async {
//     await flutterTts.setLanguage(isKorean ? "ko-KR" : "en-US");
//     await flutterTts.setSpeechRate(0.4);
//     await flutterTts.speak(text);
//   }

//   Future<void> speakAllWords(List<Word> words) async {
//     isSpeaking = true;

//     int count = 0;
//     while (repeatCount == 0 || count < repeatCount) {
//       for (final word in words) {
//         if (!isSpeaking) return;
//         await speak(word.word);
//         await Future.delayed(const Duration(milliseconds: 2000));

//         if (!isSpeaking) return;
//         await speak(word.meaning, isKorean: true);
//         await Future.delayed(const Duration(milliseconds: 2000));
//       }
//       count++;
//     }
//   }

//   void stopSpeaking() {
//     isSpeaking = false;
//     flutterTts.stop();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (dates.isEmpty) {
//       return const Scaffold(
//         body: Center(child: Text("단어가 없습니다")),
//       );
//     }

//     final currentDate = dates[currentDateIndex];
//     final currentWordList = wordLists[currentDateIndex];
    
//     return Column(
//         children: [
//           // 옵션 + 날짜
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // 보기 옵션
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Switch(
//                           value: !hideWord,
//                           onChanged: (val) => setState(() => hideWord = !val),
//                         ),
//                         const Text("단어 보기"),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Switch(
//                           value: !hideMeaning,
//                           onChanged: (val) => setState(() => hideMeaning = !val),
//                         ),
//                         const Text("뜻 보기"),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   "📅 $currentDate",
//                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//           ),

//           // 반복 횟수 선택
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Wrap(
//               spacing: 10,
//               children: [
//                 ChoiceChip(
//                   label: const Text("1회"),
//                   selected: repeatCount == 1,
//                   onSelected: (_) => setState(() => repeatCount = 1),
//                 ),
//                 ChoiceChip(
//                   label: const Text("2회"),
//                   selected: repeatCount == 2,
//                   onSelected: (_) => setState(() => repeatCount = 2),
//                 ),
//                 ChoiceChip(
//                   label: const Text("3회"),
//                   selected: repeatCount == 3,
//                   onSelected: (_) => setState(() => repeatCount = 3),
//                 ),
//                 ChoiceChip(
//                   label: const Text("5회"),
//                   selected: repeatCount == 5,
//                   onSelected: (_) => setState(() => repeatCount = 5),
//                 ),
//                 ChoiceChip(
//                   label: const Text("무한 반복"),
//                   selected: repeatCount == 0,
//                   onSelected: (_) => setState(() => repeatCount = 0),
//                 ),
//               ],
//             ),
//           ),

//           // 캐러셀
//           Flexible(
//             fit: FlexFit.loose,
//             child: CarouselSlider.builder(
//               itemCount: wordLists.length,
//               options: CarouselOptions(
//                 enlargeCenterPage: true,
//                 enableInfiniteScroll: false,
//                 viewportFraction: 0.85,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     currentDateIndex = index;
//                   });
//                 },
//               ),
//               itemBuilder: (context, index, realIdx) {
//                 final wordList = wordLists[index];

//                 return Container(
//                   margin: const EdgeInsets.symmetric(vertical: 12),
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: ListView.builder(
//                     itemCount: wordList.length,
//                     itemBuilder: (context, i) {
//                       final word = wordList[i];
//                       return Card(
//                         margin: const EdgeInsets.symmetric(vertical: 8),
//                         elevation: 3,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(16),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(16),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Expanded(child: buildBlurredText(word.word, hideWord)),
//                                   IconButton(
//                                     icon: const Icon(Icons.volume_up),
//                                     onPressed: () => speak(word.word),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Expanded(child: buildBlurredText(word.meaning, hideMeaning)),
//                                   IconButton(
//                                     icon: const Icon(Icons.volume_up),
//                                     onPressed: () => speak(word.meaning, isKorean: true),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 );
//               },
//             ),
//           ),

//           // 전체 낭독 제어
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton.icon(
//                 icon: const Icon(Icons.play_arrow),
//                 label: const Text("전체 낭독"),
//                 onPressed: () => speakAllWords(currentWordList),
//               ),
//               ElevatedButton.icon(
//                 icon: const Icon(Icons.stop),
//                 label: const Text("중지"),
//                 onPressed: stopSpeaking,
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//         ],
//       );
//   }
// }


/////////////////////////// 오디오 백그라운드 //////////////////////////////////////////////
// class WordCarouselPage extends StatefulWidget {
//   // final AudioHandler audioHandler;
//   const WordCarouselPage({super.key});

//   @override
//   State<WordCarouselPage> createState() => _WordCarouselPageState();
// }

// class _WordCarouselPageState extends State<WordCarouselPage> {
//   final FlutterTts flutterTts = FlutterTts();
//   final List<Word> words = [
//     Word(word: "abandon", meaning: "버리다", dateAdded: DateTime(2025, 4, 8)),
//     Word(word: "compile", meaning: "모으다", dateAdded: DateTime(2025, 4, 8)),
//     Word(word: "essential", meaning: "필수적인", dateAdded: DateTime(2025, 4, 7)),
//     Word(word: "evolve", meaning: "진화하다", dateAdded: DateTime(2025, 4, 6)),
//     Word(word: "assert", meaning: "주장하다", dateAdded: DateTime(2025, 4, 6)),
//   ];

//   bool hideWord = false;
//   bool hideMeaning = false;
//   int currentDateIndex = 0;
//   int repeatCount = 1;
//   bool isSpeaking = false;

//   late Map<String, List<Word>> grouped;
//   late List<String> dates;
//   late List<List<Word>> wordLists;
//   late AudioHandler audioHandler;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       // await flutterTts.setIosAudioCategory(
//       //   IosTextToSpeechAudioCategory.playback,
//       //   [
//       //     IosTextToSpeechAudioCategoryOptions.defaultToSpeaker,
//       //     IosTextToSpeechAudioCategoryOptions.allowBluetooth,
//       //   ],
//       // );
//       audioHandler  = await AudioService.init(
//         builder: () => MyAudioHandler(),
//         config: const AudioServiceConfig(
//           androidNotificationChannelId: 'com.example.flutter_mobile.channel.audio',
//           androidNotificationChannelName: 'TTS Playback',
//           androidNotificationOngoing: true,
//           androidStopForegroundOnPause: true,
//         ),
//       );
//     });
//     _prepareData();
//   }

//   void _prepareData() {
//     grouped = {};
//     for (var word in words) {
//       String key = DateFormat('yyyy-MM-dd').format(word.dateAdded);
//       grouped.putIfAbsent(key, () => []).add(word);
//     }
//     dates = grouped.keys.toList()..sort((a, b) => b.compareTo(a));
//     wordLists = dates.map((d) => grouped[d]!).toList();
//   }

//   Future<void> speak(String text, {bool isKorean = false}) async {
//     await flutterTts.setLanguage(isKorean ? "ko-KR" : "en-US");
//     await flutterTts.setSpeechRate(0.4);
//     await flutterTts.speak(text);
//   }

//   Future<void> speakAllWords(List<Word> words) async {
//     isSpeaking = true;
//     audioHandler.play();

//     int count = 0;
//     while (repeatCount == 0 || count < repeatCount) {
//       for (var word in words) {
//         if (!isSpeaking) return;
//         await speak(word.word);
//         await Future.delayed(const Duration(seconds: 2));
//         await speak(word.meaning, isKorean: true);
//         await Future.delayed(const Duration(seconds: 2));
//       }
//       count++;
//     }
//   }

//   void stopSpeaking() {
//     isSpeaking = false;
//     flutterTts.stop();
//     audioHandler.stop();
//   }

//   Widget buildBlurredText(String text, bool hide) {
//     return Stack(
//       children: [
//         Text(text, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//         if (hide)
//           Positioned.fill(
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(4),
//                 color: Colors.grey.shade300.withOpacity(0.6),
//               ),
//             ),
//           ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (dates.isEmpty) {
//       return const Scaffold(body: Center(child: Text("단어가 없습니다")));
//     }

//     final currentDate = dates[currentDateIndex];
//     final currentWordList = wordLists[currentDateIndex];

//     return Scaffold(
//       appBar: AppBar(title: const Text("Word Carousel TTS")),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // 보기 옵션
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Switch(
//                           value: !hideWord,
//                           onChanged: (val) => setState(() => hideWord = !val),
//                         ),
//                         const Text("단어 보기"),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Switch(
//                           value: !hideMeaning,
//                           onChanged: (val) => setState(() => hideMeaning = !val),
//                         ),
//                         const Text("뜻 보기"),
//                       ],
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 Text("📅 $currentDate", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//               ],
//             ),
//           ),

//           // 반복 횟수
//           Wrap(
//             spacing: 8,
//             children: [1, 2, 3, 5, 0].map((e) {
//               return ChoiceChip(
//                 label: Text(e == 0 ? "무한" : "$e회"),
//                 selected: repeatCount == e,
//                 onSelected: (_) => setState(() => repeatCount = e),
//               );
//             }).toList(),
//           ),

//           // 캐러셀
//           Expanded(
//             child: CarouselSlider.builder(
//               itemCount: wordLists.length,
//               options: CarouselOptions(
//                 enlargeCenterPage: true,
//                 enableInfiniteScroll: false,
//                 viewportFraction: 0.85,
//                 onPageChanged: (index, _) => setState(() => currentDateIndex = index),
//               ),
//               itemBuilder: (context, index, realIdx) {
//                 final list = wordLists[index];
//                 return Container(
//                   margin: const EdgeInsets.symmetric(vertical: 12),
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     borderRadius: BorderRadius.circular(16),
//                   ),
//                   child: ListView(
//                     children: list.map((word) {
//                       return Card(
//                         margin: const EdgeInsets.symmetric(vertical: 8),
//                         child: Padding(
//                           padding: const EdgeInsets.all(16),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Expanded(child: buildBlurredText(word.word, hideWord)),
//                                   IconButton(icon: const Icon(Icons.volume_up), onPressed: () => speak(word.word)),
//                                 ],
//                               ),
//                               Row(
//                                 children: [
//                                   Expanded(child: buildBlurredText(word.meaning, hideMeaning)),
//                                   IconButton(icon: const Icon(Icons.volume_up), onPressed: () => speak(word.meaning, isKorean: true)),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     }).toList(),
//                   ),
//                 );
//               },
//             ),
//           ),

//           // 전체 낭독 제어
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton.icon(
//                 icon: const Icon(Icons.play_arrow),
//                 label: const Text("전체 낭독"),
//                 onPressed: () => speakAllWords(currentWordList),
//               ),
//               ElevatedButton.icon(
//                 icon: const Icon(Icons.stop),
//                 label: const Text("중지"),
//                 onPressed: stopSpeaking,
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//         ],
//       ),
//     );
//   }
// }

// class MyAudioHandler extends BaseAudioHandler {
//   @override
//   Future<void> play() async {
//     playbackState.add(PlaybackState(
//       controls: [MediaControl.pause],
//       playing: true,
//       processingState: AudioProcessingState.ready,
//     ));
//   }

//   @override
//   Future<void> stop() async {
//     playbackState.add(PlaybackState(
//       controls: [MediaControl.play],
//       playing: false,
//       processingState: AudioProcessingState.ready,
//     ));
//   }
// }


/////////////////////////////// 기본 소스 낭독 코드 없음 //////////////////////////////////
// class WordCarouselPage extends ConsumerStatefulWidget {
//   const WordCarouselPage({super.key});
//   @override
//   ConsumerState<WordCarouselPage> createState() => _WordCarouselPageState();
// }

// class _WordCarouselPageState extends ConsumerState<WordCarouselPage> {
//   bool showWord = true;
//   bool showMeaning = true;

//   // 단어 목록 (더미 데이터)
//   final List<Word> words = [
//     Word(word: "abandon", meaning: "버리다", dateAdded: DateTime(2025, 4, 8)),
//     Word(word: "compile", meaning: "모으다", dateAdded: DateTime(2025, 4, 8)),
//     Word(word: "essential", meaning: "필수적인", dateAdded: DateTime(2025, 4, 7)),
//     Word(word: "evolve", meaning: "진화하다", dateAdded: DateTime(2025, 4, 6)),
//     Word(word: "assert", meaning: "주장하다", dateAdded: DateTime(2025, 4, 6)),
//   ];

//   // 날짜별 그룹화
//   Map<String, List<Word>> groupWordsByDate(List<Word> words) {
//     Map<String, List<Word>> grouped = {};
//     for (var word in words) {
//       String dateKey = DateFormat('yyyy-MM-dd').format(word.dateAdded);
//       grouped.putIfAbsent(dateKey, () => []).add(word);
//     }
//     return grouped;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final groupedWords = groupWordsByDate(words);
//     final dates = groupedWords.keys.toList()..sort((a, b) => b.compareTo(a)); // 최신 날짜 먼저

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("📅 일자별 단어장"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           // 보기 옵션
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Switch(
//                       value: showWord,
//                       onChanged: (value) => setState(() => showWord = value),
//                     ),
//                     Text("단어 보기"),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Switch(
//                       value: showMeaning,
//                       onChanged: (value) => setState(() => showMeaning = value),
//                     ),
//                     Text("뜻 보기"),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           // 날짜별 캐러셀
//           Expanded(
//             child: PageView.builder(
//               itemCount: dates.length,
//               itemBuilder: (context, index) {
//                 final dateKey = dates[index];
//                 final wordsForDate = groupedWords[dateKey]!;

//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//                       child: Text(
//                         "📆 $dateKey",
//                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                     Expanded(
//                       child: ListView.builder(
//                         itemCount: wordsForDate.length,
//                         padding: const EdgeInsets.all(12),
//                         itemBuilder: (context, i) {
//                           final word = wordsForDate[i];
//                           return Card(
//                             margin: const EdgeInsets.symmetric(vertical: 8),
//                             elevation: 3,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(16),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   if (showWord)
//                                     Text(
//                                       word.word,
//                                       style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                                     ),
//                                   if (showWord && showMeaning) const SizedBox(height: 8),
//                                   if (showMeaning)
//                                     Text(
//                                       word.meaning,
//                                       style: TextStyle(fontSize: 16, color: Colors.grey[700]),
//                                     ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     )
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }