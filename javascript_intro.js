// def combine(array1, array2)
//   new_array = []
//   array1.each do |element1|
//     array2.each do |element2|
//       new_array << element1 + element2
//     end
//   end
//   new_array
// end

// p combine([1,5,10], [100,500,1000])

function Combine(ArrayOne, ArrayTwo) {
  var NewArray = [];
  ArrayOne.forEach(function(element1) {
    ArrayTwo.forEach(function(element2) {
      NewArray.push(element1 + element2);
    });
  });
  console.log(NewArray);
}

Combine([1, 5, 10], [100, 500, 1000]);
