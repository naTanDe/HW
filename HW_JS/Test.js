// JS 1 занятие
var num1 = 1;// - тип данных number
var num2 = 12;

var name1 = "Vadim";// - тип данных string строка
var bb = true; //тип данных булевые значения истина
var ff = false; //тип данных булевые значения ложь

var fl = 3.14; //number
var arr = [true, 3.14, 'Elena', 33, [22,33]]; //тип данных массив (object)
var jj = {"key1": 11, //- тип данных объект (JSON например)
         "key2": 33}

var fff = function d1(a1, a1){} // функция


console.log(num1, num2) //вывод данных

console.log(num1, typeof(num1)) //определения типа переменной
console.log(num2, typeof(num2))
console.log(name1, typeof(name1))
console.log(bb, typeof(bb))
console.log(fl, typeof(fl))
console.log(arr, typeof(arr))
console.log(jj, typeof(jj))

// Новый код

// var num1 = 1;//()12
// var num2 = 12;

var 
result = num1 > num2; //или var result = num1 < num2; или var result = num1 == num2; var result = num1 >= num2; var result = num1 <= num2;
console.log('result = ', result)

// Ветвление


if (true){
    console.log(22)
}else{
    console.log("No Result")}



if (result){
    console.log(22)
}else{
    console.log("No Result")}



if (undefined){
    console.log(22)
}else{
    console.log("No Result")}

// Следующий вариант

var result1 = num1 >= num2
var result2 = num1 <= num2
var result3 = num1 == num2

if (result1){
    console.log(22)
}else if (result2){
    console.log(44)
}else if (result3){
    console.log(66)
}else {
    console.log ("No Result")
}

// Следующий вариант расширенный

if (result1){
    console.log(22)
}else if (result2){
    let a1 = 20;
    let a2 = 5;
    let a3 = a1 + a2;
    console.log(a3, 44)
}else if (result3){
    console.log(66)
}else {
    console.log ("No Result")
}

// 2 занатие

var n1 = true
console.log(n1) 

// || - или (| - not; && - not )

// and or not in js

// var n1 = true || true       var n1 = true || false      var n1 = true || false || false     var n1 = true && false || false
// var n2 = true && true       var n1 = true && false      var n1 = true && false && true

// !!! && имеет болший приоритет чем ||

// console.log(n1)
// console.log(n2)

// var v1 = 10
// var v2 = 20
// var v3 = 100

// var result = 30

// if (r1 > v2 || r1 > v3) {
//     console.log('Result == TRUE')
//     }
// else {
//     console.log('Result == FALSE')
//     }

// if (r1 > v2 && r1 > v3) {
//     console.log('Result == TRUE')
//     }
// else {
//     console.log('Result == FALSE')
//     }

// if (r1 > v2 || r1 > v3 || r1 == v1 ){
//     console.log('Result == TRUE')
//     }
// else {
//     console.log('Result == FALSE')
//     }

// if (r1 > v2 || r1 > v3 && r1 == v1 ){
//     console.log('Result == TRUE')
//     }
// else {
//     console.log('Result == FALSE')
//     }

// if (r1 > v2 && r1 > v3 || r1 == v1 ){
//     console.log('Result == TRUE')
//     }
// else {
//     console.log('Result == FALSE')
//     }

// =========================================================================================
// Цикл while

// var count = 8
// while (true){
//     console.log(count)
//     count++ //count = count + 1
//     }   


// var count = 8
// while (v2 >= v1){
//     console.log(count, v1, v2)
//     count++
//     v1++
//     } 

// var count = 8
// while (v2 >= v1){
//     console.log(count, v1, v2)
//     count++
//     v1++
    
//     if (v1 == 15){
//     break
//     }

// } 

// var count = 8
// while (v2 >= v1){

//     if (v1 == 15){
//     continue
//     }

//     console.log(count, v1, v2)
//     count++
//     v1++
//  } 

// var count = 8
// while (v2 >= v1){
//     v1++
//     if (v1 == 15){
//     console.log('===================')
//     continue
//     }

//     console.log(count, v1, v2)
//     count++
//     v1++
//  } 

// ====================================================================================
// Цикл for

// for (var i = 0: i <10; i++){
//     console.log('iter -- ', i)
//     }

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// console.log(code_list.length)

// for (var i = 0: i <= code_list.length; i++){
//     console.log('iter -- ', i)
//     }

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// console.log(code_list.length)

// for (var i = 0: i <= code_list.length; i++){
//     console.log('iter -- ', i, 'arr_item = ', code_list[4])
//     }

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// console.log(code_list.length)

// for (var i = 0: i <= code_list.length; i++){
//     console.log('iter -- ', i, 'arr_item = ', code_list[i])
//     }

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// console.log(code_list.length)

// for (var i = 0: i <= code_list.length; i++){
//     console.log('iter -- ', i, 'arr_item = ', code_list[i])
//     }

// for в виде итератора

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// for(var i of code_list){
//     console.log(i)
// }

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// for(var i of code_list){
//     console.log(i)
//     if (i == 400){
//         i = i + 50
//     } 
//     console.log(i)
// }

// var code_list = [100, 200, 300, 400, 500,600, 700, 800]
// for(var i of code_list){
//     console.log(i)
//     if (i == 400){
//         i = i + 50
//     } 
//     console.log(i)
// }

// var code_list = [100, 200, 300, [400, 401, 402, 403, 404], 500, 600, 700, 800]
// for(var i of code_list){
//     if (typeof(i) == 'object'){
//     for (var ii of i){
//     console.log('inner_item == ', ii)
//     }
//     continue
//     }
//     console.log(i)
// }
// =========================================================================================
// Итерация JSON

// var users = {
//     'p1':'Alex',
//     'p2':'Elena',
//     'p3':'Anna',
//     'p4':'Misha',
//     'p5':'Inna'
//     }

// //var new_users = Object.keys(users)

// for (var i of Object.keys(users)){  //или values для вывода значений

// console.log (users[i]) //или ([i]) для вывода значений
// }

// или

// for (var i in users){ 
// console.log (users[i])
// }
