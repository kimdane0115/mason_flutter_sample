import 'package:carousel_slider/carousel_slider.dart';
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

class WordCarouselPage extends ConsumerStatefulWidget {
  const WordCarouselPage({super.key});

  @override
  ConsumerState<WordCarouselPage> createState() => _WordCarouselPageState();
}

class _WordCarouselPageState extends ConsumerState<WordCarouselPage> {
  bool hideWord = false;
  bool hideMeaning = false;

  final List<Word> words = [
    Word(word: "abandon", meaning: "버리다", dateAdded: DateTime(2025, 4, 8)),
    Word(word: "compile", meaning: "모으다", dateAdded: DateTime(2025, 4, 8)),
    Word(word: "essential", meaning: "필수적인", dateAdded: DateTime(2025, 4, 7)),
    Word(word: "evolve", meaning: "진화하다", dateAdded: DateTime(2025, 4, 6)),
    Word(word: "assert", meaning: "주장하다", dateAdded: DateTime(2025, 4, 6)),
  ];

  Map<String, List<Word>> groupWordsByDate(List<Word> words) {
    Map<String, List<Word>> grouped = {};
    for (var word in words) {
      String dateKey = DateFormat('yyyy-MM-dd').format(word.dateAdded);
      grouped.putIfAbsent(dateKey, () => []).add(word);
    }
    return grouped;
  }

  Widget buildBlurredText(String text, bool hide) {
    return Stack(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        if (hide)
          Positioned.fill(
            child: Container(
              color: Colors.grey.withOpacity(0.5),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final grouped = groupWordsByDate(words);
    final dates = grouped.keys.toList()..sort((a, b) => b.compareTo(a));

    return Scaffold(
      appBar: AppBar(
        title: Text("📅 일자별 단어장"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 보기 옵션 스위치
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: !hideWord,
                      onChanged: (val) => setState(() => hideWord = !val),
                    ),
                    Text("단어 보기"),
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      value: !hideMeaning,
                      onChanged: (val) => setState(() => hideMeaning = !val),
                    ),
                    Text("뜻 보기"),
                  ],
                ),
              ],
            ),
          ),

          // 캐러셀
          Expanded(
            child: CarouselSlider.builder(
              itemCount: dates.length,
              options: CarouselOptions(
                height: double.infinity,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                viewportFraction: 0.9,
              ),
              itemBuilder: (context, index, realIdx) {
                final dateKey = dates[index];
                final wordList = grouped[dateKey]!;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "📅 $dateKey",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
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
                                  buildBlurredText(word.word, hideWord),
                                  const SizedBox(height: 8),
                                  buildBlurredText(word.meaning, hideMeaning),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

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