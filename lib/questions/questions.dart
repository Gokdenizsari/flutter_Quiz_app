class QuestionModel {
  String question;
  Map<String, bool> answers;
  QuestionModel(this.question, this.answers);
}

List<QuestionModel> questions = [
  QuestionModel(
    "How many planets are there in the solar system?",
    {
      "7": false,
      "11": false,
      "8": true,
      "9": false,
    },
  ),
  QuestionModel("Who is the first person to go into space?", {
    "Nie Haysin": false,
    "Valentina Tereskova": false,
    "Neil Armstrong": false,
    " Yuri Gagarin": true,
  }),
  QuestionModel("Who is the longest living person ?", {
    "Lucile Randon  ": false,
    "Li Ching-Yuen ": true,
    "Jeanne Louise Calment ": false,
    "Kane Tanaka": false,
  }),
  QuestionModel("How many moons does Mars have ?", {
    "1": false,
    "2": false,
    "4": true,
    "8": false,
  }),
  QuestionModel("Who discovered gravity?", {
    "Isaac Newton": true,
    "Nikola Tesla": false,
    "Albert Einstien": false,
    "Pisagor": false,
  }),
  QuestionModel("How many satellites are in space ?", {
    "3.850": false,
    "4.750": false,
    "6.500": true,
    "5.452": false,
  }),
  QuestionModel(
      "How long does it take to reach the moon? ?", {
    "2 days": false,
    "3 days": false,
    "8 days": false,
    "5 days": true,
  }),
  QuestionModel("World Is the ___ planet from the sun ?", {
    "Secon": false,
    "Third": true,
    "Fourth": false,
    "Sixth": false,
  }),
  QuestionModel(
      "Where did Orville and Wilbur Wright build their first flying airplane ?",
      {
        "Paris, France": false,
        "Boston, Massachusetts": false,
        "Kitty Hawk, North Carolina": true,
        "Tokyou, Japan": false,
      }),
  QuestionModel(
      "The First astronuts to travel to space came from which country ?", {
    "United States": false,
    "Soviet Union (now Russia)": true,
    "China": false,
    "Rocketonia": false,
  }),
];
