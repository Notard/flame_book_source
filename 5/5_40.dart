double cumulative = 0.0;
for (var prob in probabilities) {
  cumulative += prob;
  cumulativeProbabilities.add(cumulative);
} 