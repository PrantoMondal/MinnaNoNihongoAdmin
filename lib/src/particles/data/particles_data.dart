class ParticlesData {
  final List<Particle> particles;

  ParticlesData({required this.particles});

  factory ParticlesData.fromJson(Map<String, dynamic> json) {
    var particlesJson = json['particles'] as List;
    List<Particle> particlesList = particlesJson.map((particleJson) => Particle.fromJson(particleJson)).toList();

    return ParticlesData(particles: particlesList);
  }
}

class Particle {
  final int id;
  final String particle;
  final String kana;
  final String meaning;
  final List<Example> examples;

  Particle({
    required this.id,
    required this.particle,
    required this.kana,
    required this.meaning,
    required this.examples,
  });

  factory Particle.fromJson(Map<String, dynamic> json) {
    var examplesJson = json['examples'] as List;
    List<Example> exampleList = examplesJson.map((exampleJson) => Example.fromJson(exampleJson)).toList();

    return Particle(
      id: json['id'],
      particle: json['particle'],
      kana: json['kana'],
      meaning: json['meaning'],
      examples: exampleList,
    );
  }
}

class Example {
  final String sentence;
  final String romaji;
  final String meaning;

  Example({
    required this.sentence,
    required this.romaji,
    required this.meaning,
  });

  factory Example.fromJson(Map<String, dynamic> json) {
    return Example(
      sentence: json['sentence'],
      romaji: json['romaji'],
      meaning: json['meaning'],
    );
  }
}
