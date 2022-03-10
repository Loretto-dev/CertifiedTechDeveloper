const numbers = [1, 3, 5, 8, 12, 42, 96, 1024];

let num = (numbers[0]);
let arr = (numbers);
for (var i = 1; i<arr.length; i++){
    num += arr[i];
    console.log(num);
}
