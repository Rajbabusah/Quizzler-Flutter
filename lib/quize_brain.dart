//import 'dart:html';

import 'question.dart';

class QuizeBrain {
  int _questionNumber =0;
  final List<Question> _questionBank= [
    Question(q: 'Sharks are mammals.',a:false),
    Question(q: 'Sea otters have a favorite rock they use to break open food.', a: true),
    Question(q: 'The blue whale is the biggest animal to have ever lived.', a: true),
    Question(q: 'The hummingbird egg is the world\'s smallest bird egg.', a: true),
    Question(q: 'Pigs roll in the mud because they don’t like being clean.', a: false),
    Question(q: 'Bats are blind.', a: false),
    Question(q: 'A dog sweats by panting its tongue.', a: false),
    Question(q: 'It takes a sloth two weeks to digest a meal.', a: true),
    Question(q: 'The largest living frog is the Goliath frog of West Africa.', a: true),
    Question(q: 'An ant can lift 1,000 times its body weight.', a: false),
    Question(q: 'When exiting a cave, bats always go in the direction of the wind.', a: false),
    Question(q: 'Galapagos tortoises sleep up to 16 hours a day.', a: true),
    Question(q: 'An octopus has seven hearts.', a: false),
    Question(q: 'The goat is the national animal of Scotland.', a: false),
    Question(q: 'Herbivores are animal eaters.', a: false),
    Question(q: 'A monkey was the first non-human to go into space.', a: false),
    Question(q: 'New York City is composed of between 36 and 42 islands.', a: true),
    Question(q: 'South Africa has one capital', a: false),
    Question(q: 'The Atlantic Ocean is the biggest ocean on Earth.', a: false),
    Question(q: 'Mount Everest is the tallest mountain in the world.', a: true),
    Question(q: 'You can find the ‘Desert of Death’ in California.', a: false),
    Question(q: 'The total length of the Great Wall of China adds up to 13,171 miles.', a:true),
    Question(q: 'The two longest rivers in the world are the Mississippi and the Nile.', a: false),
    Question(q: 'The Chunnel between England and France is 31.5 miles long.', a: true),
    Question(q: 'Greenland is the largest island in the world.', a: true),
    Question(q: 'There are more countries in South America than Africa.', a: false),
    Question(q: 'Alaska has the most active volcanoes of any state in the United States.', a: true),
    Question(q: 'China has the longest coastline in the world.', a: false),
    Question(q: 'Vatican City is the smallest country in the world.', a: true),
    Question(q: 'Venezuela is home to the world’s highest waterfall.', a: true),
    Question(q: 'The human body has four lungs.', a: false),
    Question(q: 'Human skin regenerates every week.', a: false),
    Question(q: 'The average human sneeze can be clocked at 100 miles an hour.', a: true),
    Question(q: 'Humans lose an average of 75 strands of hair a month.', a: false),
    Question(q: 'Infants have more bones than adults.', a: true),
    Question(q: 'The heart is the largest internal organ in the body.', a: false),
    Question(q: 'Most of the human brain is made of muscle.', a: false),
    Question(q: 'Taste buds can only be found on the tongue.', a: false),
    Question(q: 'The human eye can distinguish 10 million different colors.', a: true),
    Question(q: 'Humans lose more than 80% of heat from their feet.', a: false),
    Question(q: 'The human body is about 60% water.', a: true),
    Question(q: 'The most common blood type is 0- negative.', a: true),
    Question(q: 'Aladdin\'s character was based on Brad Pitt.', a: false),
    Question(q: 'The song “We Don’t Talk About Bruno” from Encanto is the first Disney song to hit #1 on the Billboard Hot 100 chart in 29 years.', a: true),
    Question(q: 'It took eight months from start to finish to produce the 1959 Disney film, Sleeping Beauty.', a: false),
    Question(q: 'Pinocchio was the first animated, full-color Walt Disney feature film.', a: false),
    Question(q: 'Toy Story was Pixar’s first movie.', a: true),
    Question(q: 'Minnie Mouse’s full name is Wilhelmina Mouse.', a: false),
    Question(q: 'Dumbo is the shortest Disney film.', a: true),
    Question(q: 'The Aristocats was the first film to be made after Walt Disney’s death.', a: true),
    Question(q: 'Prince Eric and Ariel from The Little Mermaid have a daughter named Princess Song.', a: false),
    Question(q: 'Beauty and the Beast was Disney’s first Broadway musical.', a: true),
    Question(q: 'Pineapples grow on trees.', a: false),
    Question(q: 'A potato was the first vegetable to be planted on the space shuttle.', a: true),
    Question(q: 'Polo takes up the largest amount of space in terms of land area.', a: true),
    Question(q: 'Every golf ball has the same number of dimples.', a: false),
    Question(q: 'Football players started wearing helmets in 1943.', a: true),
    Question(q: 'Brazil is the only nation to have played in every World Cup finals tournament.', a: true),
    Question(q: 'World-renowned jeweler Tiffany & Co. is the maker of the Vince Lombardi trophy.', a: true),
    Question(q: 'There are 30 NFL teams.', a: false),
    Question(q: 'The New York Marathon is the largest in the world.', a: true),
    Question(q: 'Three strikes in a row in bowling is called a chicken.', a: false),
    Question(q: 'An astronaut has played golf on the moon.', a: true),
    Question(q: 'The Tour de France always finishes in Italy.', a: false),
    Question(q: 'Soccer (football) is estimated to have more than 2 billion fans around the world.', a: false),
    Question(q: 'The letter “T” is the most common in the English Language.', a: false),
    Question(q: 'People who have chiclephobia are afraid of cats.', a: false),
    Question(q: 'All the kings in a standard deck of cards have a mustache.', a: false),
    Question(q: 'Pepsi was the first soft drink to be enjoyed in outer space.', a: false),
    Question(q: 'The name of Batman’s butler is Albert.', a: false),
    Question(q: 'Fortune cookies were invented in China.', a: false),
    Question(q: 'Henry VIII had eight wives.', a: false),
    Question(q: 'The maximum length for a video posted on TikTok is 45 seconds.', a: false),
    Question(q: 'The letter “J” is the only letter in the alphabet not included in the periodic table.', a: true),
    Question(q: 'Every country in the world has a rectangular flag.', a: false),
    Question(q: 'The Harry Potter film, Chamber of Secrets, is the longest film of the Harry Potter movies.', a: true),
    Question(q: 'The official color of the Golden Gate Bridge in California is “Tennessee Orange.”', a: true),
    Question(q: 'Dr. Pepper is the oldest soft drink in America.', a: true),

  ];
  void nextQuestion(){
    if(_questionNumber<_questionBank.length -1) {
      _questionNumber++;
    }

  }
  String? getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool? getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}