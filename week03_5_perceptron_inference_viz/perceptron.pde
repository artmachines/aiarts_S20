class Perceptron {
  float[] weights;

  int output;

  Perceptron(int input_size){
    weights = new float [input_size];
    for (int i = 0; i < weights.length; i++) {
      weights[i] = random(-1, 1);
    }
  }

  int predict(float [] inputs) {
    // sum and activation function
    float sum = 0;
    for (int i = 0; i < inputs.length; i++) {
      sum += inputs[i]*weights[i];
    }

    int output = sign(sum);

    return output;
  }
}
