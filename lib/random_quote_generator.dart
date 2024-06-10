import 'dart:math'; // Importing the dart:math library to use Random class
import 'package:flutter/material.dart'; // Importing the Flutter Material library
import 'package:quotes/quote.dart'; // Importing the custom Quote class

// Define a StatefulWidget for generating random quotes
class RandomQuoteGenerator extends StatefulWidget {
  const RandomQuoteGenerator({super.key});

  @override
  State<RandomQuoteGenerator> createState() => _RandomQuoteGeneratorState();
}

// Define the state for RandomQuoteGenerator
class _RandomQuoteGeneratorState extends State<RandomQuoteGenerator> {
  // List of Quote objects
  final List<Quote> quotes = [
    Quote(
        author: "Franklin D. Roosevelt",
        text:
            "The only limit to our realization of tomorrow is our doubts of today."),
    Quote(
        author: "Dalai Lama", text: "The purpose of our lives is to be happy."),
    Quote(
        author: "John Lennon",
        text: "Life is what happens when you're busy making other plans."),
    Quote(author: "Stephen King", text: "Get busy living or get busy dying."),
    Quote(
        author: "Mae West",
        text: "You only live once, but if you do it right, once is enough."),
    Quote(
        author: "Thomas A. Edison",
        text:
            "Many of life's failures are people who did not realize how close they were to success when they gave up."),
    Quote(
        author: "Albert Einstein",
        text:
            "If you want to live a happy life, tie it to a goal, not to people or things."),
    Quote(
        author: "Babe Ruth",
        text:
            "Never let the fear of striking out keep you from playing the game."),
    Quote(
        author: "Will Smith",
        text:
            "Money and success do not change people; they merely amplify what is already there."),
    Quote(
        author: "Steve Jobs",
        text:
            "Your time is limited, do not waste it living someone else’s life."),
    Quote(
        author: "Seneca",
        text: "Not how long, but how well you have lived is the main thing."),
    Quote(
        author: "Henry Ford",
        text:
            "The whole secret of a successful life is to find out what is one’s destiny to do, and then do it."),
    Quote(
        author: "Eleanor Roosevelt",
        text:
            "If life were predictable it would cease to be life, and be without flavor."),
    Quote(
        author: "Ernest Hemingway",
        text: "In order to write about life first you must live it."),
    Quote(
        author: "Frank Sinatra",
        text:
            "The big lesson in life, baby, is never be scared of anyone or anything."),
    Quote(
        author: "Mark Twain",
        text:
            "Sing like no one’s listening, love like you’ve never been hurt, dance like nobody’s watching, and live like it’s heaven on earth."),
    Quote(
        author: "Leo Burnett",
        text:
            "Curiosity about life in all of its aspects, I think, is still the secret of great creative people."),
    Quote(
        author: "Søren Kierkegaard",
        text:
            "Life is not a problem to be solved, but a reality to be experienced."),
    Quote(author: "Socrates", text: "The unexamined life is not worth living."),
    Quote(author: "Oprah Winfrey", text: "Turn your wounds into wisdom."),
  ];

  final Random random = Random(); // Create an instance of Random class
  late Quote randomQuote; // Declare a variable to hold the current random quote

  @override
  void initState() {
    super.initState();
    // Initialize randomQuote with a random quote from the list
    randomQuote = quotes[random.nextInt(quotes.length)];
  }

  void newQuote() {
    // Generate a new random quote and update the state to refresh the UI
    setState(() {
      randomQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set background color of the scaffold
      body: Container(
        alignment: Alignment.center, // Center the content within the container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Card(
              color: Colors.grey[800], // Set the background color of the card
              elevation: 8, // Set the elevation of the card
              margin: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 100), // Margin around the card
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10), // Padding within the card
                child: Column(
                  children: [
                    Text(
                      randomQuote.text, // Display the text of the random quote
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          fontSize: 24,
                          color: Colors.yellow),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      randomQuote
                          .author, // Display the author of the random quote
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[500],
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 100)),
                  onPressed:
                      newQuote, // Call newQuote method when button is pressed
                  child: const Text(
                    "New Quote",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
