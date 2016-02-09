// Coffee and Code

// Exercise 1 - my answer
function narcissistic(number) {
  var numArray = number.toString().split('').map(Number);
  var length = numberArray.length
  var sum = 0;

  for (var i = 0; i < length; i++) {
    var powResult = Math.pow(numArray[i], length);
    sum += powResult
  }

  return result === number;
}

// Exercise 2 - class answer
function narcissistic(number) {
  var sum = 0;
  var numString = number.toString();
  var length = numString.length;

  for (var i = 0; i < length; i++) {
    var digitInt = parseInt(numString[i]);
    var powResult = Math.pow(digitInt, length);

    sum += powResult;
  }

  return result === number;
}
