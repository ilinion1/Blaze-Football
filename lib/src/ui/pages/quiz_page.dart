import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mybtn/src/common/const/app_colors.dart';
import 'package:mybtn/src/common/const/app_text_styles.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int correctAnswers = 0;

  final List<Map<String, Object>> questions = [
    {
      'question':
          'Which player scored the fastest hat-trick in the Premier League?',
      'options': [
        'Lionel Messi',
        'Pele',
        'Sadio Mane',
        'Cristiano Ronaldo',
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question':
          'Which player, with 653 games, has made the most Premier League appearances?',
      'options': [
        'Diego Maradona',
        'Pele',
        'Gareth Barry',
        'Sadio Mane',
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question': 'When was the inaugural Premier League season?',
      'options': ['1992-93', '1994-95', '1990-91', '1991-92'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Which country has won the most FIFA World Cup titles?',
      'options': ['Brazil', 'Germany', 'Italy', 'Argentina'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Which team won the first Premier League title?',
      'options': [
        'Manchester United',
        'Real Madrid',
        'Manchester City',
        'Barcelona'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'How many clubs competed in the inaugural Premier League season?',
      'options': ['33', '22', '18', '20'],
      'correctAnswerIndex': 1,
    },
    {
      'question':
          'Which three players shared the Premier League Golden Boot in 2018-19?',
      'options': [
        'Pele, Gareth Barry, Sadio Mane',
        'Pierre-Emerick Aubameyang, Mohamed Salah and Sadio Mane',
        'Lionel Messi, Pele, Cristiano Ronaldo',
        'Robert Lewandowski, Jurgen Klopp, Hugo Lloris',
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question':
          'In what year was the first official international football match played?',
      'options': ['1888', '1900', '1872', '1904'],
      'correctAnswerIndex': 2,
    },
    {
      'question': 'Which country has won the most World Cups?',
      'options': ['Uruguay', 'Argentina', 'Netherlands', 'Brazil'],
      'correctAnswerIndex': 3,
    },
    {
      'question':
          'Three countries have won the World Cup twice. Can you name them?',
      'options': [
        'Uruguay, Mexico and Canada',
        'Argentina, Brazil and USA',
        'Netherlands, Brazil and France',
        'Argentina, France and Uruguay',
      ],
      'correctAnswerIndex': 3,
    },
    {
      'question':
          'In which World Cup did Diego Maradona score his infamous "Hand of God" goal?',
      'options': [
        'Uruguay 1994',
        'Mexico 1986',
        'Netherlands 2002',
        'Brazil 1990'
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question': 'Who is known as the "King of Football"?',
      'options': [
        'Diego Maradona',
        'Pele',
        'Lionel Messi',
        'Cristiano Ronaldo'
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question': 'The record number of World Cup goals is 16, scored by who?',
      'options': [
        'Miroslav Klose',
        'Diego Maradona',
        'Pele',
        'Zlatan Ibrahimovic',
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Which Ballon d\'Or-winning footballer had a galaxy named after them in 2015?',
      'options': [
        'Cristiano Ronaldo',
        'Lionel Messi',
        'Zlatan Ibrahimovic',
        'Raul',
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Which Spanish club\'s nickname is Los Colchoneros, which translates to English as "The Mattress Makers"?',
      'options': ['Atletico Madrid', 'Watford', 'PSG', 'Chelsea'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'In what year did the Premier League begin?',
      'options': ['1990', '1992', '1988', '1994'],
      'correctAnswerIndex': 1,
    },
    {
      'question': 'Who is the manager of the Barcelona football club?',
      'options': [
        'Jurgen Klopp',
        'Xavier Hernández Creus',
        'Pep Guardiola',
        'Ole Gunnar Solskjaer'
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question':
          'During his career he wore numbers 7, 17, 28 and 9, playing football in England, Spain, Italy and Portugal.',
      'options': [
        'Michel Platini',
        'Alan Shearer',
        'Cristiano Ronaldo',
        'Riyad Mahrez',
      ],
      'correctAnswerIndex': 2,
    },
    {
      'question':
          'Ronaldo helped Portugal win the European Championship in which year?',
      'options': ['2000', '2004', '2012', '2016'],
      'correctAnswerIndex': 3,
    },
    {
      'question':
          'Which German multinational sportswear company is Messi an ambassador for?',
      'options': ['Under Armour', 'ASICS', 'Adidas', 'Puma'],
      'correctAnswerIndex': 2,
    },
    {
      'question':
          'Which goalkeeper holds the record for the most clean sheets in Premier League history?',
      'options': [
        'Edwin van der Sar',
        'Petr Cech',
        'David De Gea',
        'Thibaut Courtois'
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question': 'Who won the FIFA Women\'s World Cup in 2019?',
      'options': ['United States', 'Netherlands', 'France', 'Germany'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Who is the captain of the Argentina national football team?',
      'options': [
        'Lionel Messi',
        'Sergio Ramos',
        'Paulo Dybala',
        'Angel Di Maria'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'question':
          'Who is the all-time top scorer in the history of the Premier League?',
      'options': [
        'Thierry Henry',
        'Alan Shearer',
        'Wayne Rooney',
        'Frank Lampard'
      ],
      'correctAnswerIndex': 1,
    },
    {
      'question':
          'In which year did the European Championship expand from 16 teams to 24 teams?',
      'options': ['2018', '2016', '2016', '2010'],
      'correctAnswerIndex': 1,
    }
  ];

  int? _index;

  void answQuestion(int selectedAnswerIndex) async {
    _index = selectedAnswerIndex;
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      if (selectedAnswerIndex ==
          questions[currentQuestionIndex]['correctAnswerIndex']) {
        correctAnswers++;
      }

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Show the result when all questions are answered
        showTheResult();
      }
      _index = null;
    });
  }

  void showTheResult() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Result'),
          content: Text(
              'Correct Answers: $correctAnswers out of ${questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                resetQuizAnswer();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void resetQuizAnswer() {
    setState(() {
      currentQuestionIndex = 0;
      correctAnswers = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 80.h,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Quiz',
          style: AppTextStyle.leagueTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 204.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: ColoredBox(
                    color: AppColors.backgroundMiddle,
                    child: Padding(
                      padding: EdgeInsets.all(22.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${currentQuestionIndex + 1}/${questions.length}',
                            style: TextStyle(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.red,
                              fontFamily: 'Campton',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            questions[currentQuestionIndex]['question']
                                .toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 19.sp,
                              fontFamily: 'Campton',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ...List.generate(4, (index) {
                final option = (questions[currentQuestionIndex]['options']
                    as List<String>)[index];
                final correctAnswerIndex = questions[currentQuestionIndex]
                    ['correctAnswerIndex'] as int;
                return Padding(
                  padding: EdgeInsets.only(top: 21.h),
                  child: SizedBox(
                    height: 65.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.backgroundMiddle,
                        side: BorderSide(
                            width: _index != null && _index == index ? 1 : 0,
                            color: _index == null || _index != index
                                ? Colors.transparent
                                : _index == correctAnswerIndex
                                    ? AppColors.green
                                    : AppColors.red),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      onPressed: () => answQuestion(
                          (questions[currentQuestionIndex]['options']
                                  as List<String>)
                              .indexOf(option)),
                      child: Text(
                        option,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Campton',
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
