import "package:flutter/material.dart";

void main() {
  runApp(const A2());
}

class A2 extends StatelessWidget {
  const A2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListView(
            children: const <Widget>[
              CountryCard(
                  flag: 'images/ph.png',
                  countryName: 'Philippines',
                  continent: 'Asia',
                  language: 'Tagalog'
              ),
              CountryCard(
                  flag: 'images/usa.jpg',
                  countryName: 'United States of America',
                  continent: 'North America',
                  language: 'English',
              ),
              CountryCard(
                flag: 'images/canada.jpg',
                countryName: 'Canada',
                continent: 'North America',
                language: 'English, French',
              ),
              CountryCard(
                flag: 'images/france.jpg',
                countryName: 'France',
                continent: 'Europe',
                language: 'French',
              ),
              CountryCard(
                flag: 'images/japan.jpg',
                countryName: 'Japan',
                continent: 'Asia',
                language: 'Japanese',
              ),
              CountryCard(
                flag: 'images/germany.png',
                countryName: 'Germany',
                continent: 'Europe',
                language: 'German',
              ),
              CountryCard(
                flag: 'images/korea.png',
                countryName: 'Korea',
                continent: 'Asia',
                language: 'Korean',
              ),
              CountryCard(
                flag: 'images/australia.jpg',
                countryName: 'Australia',
                continent: 'Oceania',
                language: 'English',
              ),
              CountryCard(
                flag: 'images/norway.jpg',
                countryName: 'Norway',
                continent: 'Europe',
                language: 'Norwegian',
              ),
              CountryCard(
                flag: 'images/new zealand.jpg',
                countryName: 'New Zealand',
                continent: 'Oceania',
                language: 'English, Māori',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  final String flag;
  final String countryName;
  final String continent;
  final String language;

  const CountryCard({
    super.key,
    required this.flag,
    required this.countryName,
    required this.continent,
    required this.language
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Column(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                flag,
                width: double.infinity,
                height: 200,
                fit: BoxFit. fitWidth,
              ),
              const SizedBox(height: 8),
              Text(
                "Country Name: $countryName",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Continent: $continent",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Language: $language",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
          tileColor: Colors.white,
          contentPadding: EdgeInsets.all(0.8),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}