
function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
}

function isSubstring(searchString, subString) {
  searchString.includes(subString);
}

function fizzBuzz(array) {
  const fizzBuzzArr = [];
  array.forEach(el =>
    if ((el % 3 === 0 && el % 5 != 0) || (el % 3 != 0 && el % 5 === 0)) {
      fizzBuzzArr.push(el)
    }
  );
  return fizzBuzzArr;
}
