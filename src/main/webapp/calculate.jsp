<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<title>Calculator</title>
<style>
    body {
        font-family: Arial, sans-serif;
    }
    #display{
     width: 300px;
     height:50px;
    }
    .calculator {
        width: 300px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
    }
    input[type="button"] {
        width: 60px;
        height: 60px;
        margin: 5px;
        font-size: 18px;
    }
     input[type="submit"] {
        width: 60px;
        height: 60px;
        margin: 5px;
        font-size: 18px;
    }
</style>
</head>
<body>

<div class="calculator">
    <form action="calculate" method="post">
        <input type="text" id="display" name="expression" readonly><br>
        <input type="button" value="7" onclick="appendToDisplay('7')">
        <input type="button" value="8" onclick="appendToDisplay('8')">
        <input type="button" value="9" onclick="appendToDisplay('9')">
        <input type="button" value="/" onclick="appendToDisplay('/')"><br>
        <input type="button" value="4" onclick="appendToDisplay('4')">
        <input type="button" value="5" onclick="appendToDisplay('5')">
        <input type="button" value="6" onclick="appendToDisplay('6')">
        <input type="button" value="*" onclick="appendToDisplay('*')"><br>
        <input type="button" value="1" onclick="appendToDisplay('1')">
        <input type="button" value="2" onclick="appendToDisplay('2')">
        <input type="button" value="3" onclick="appendToDisplay('3')">
        <input type="button" value="-" onclick="appendToDisplay('-')"><br>
        <input type="button" value="." onclick="appendToDisplay('.')">
        <input type="button" value="0" onclick="appendToDisplay('0')">
        <input type="submit" value="=">
        <input type="button" value="+" onclick="appendToDisplay('+')"><br>
        <input type="button" value="C" onclick="clearDisplay()">
    </form>
    <p>Result : ${result}</p>
</div>

<script>
    function appendToDisplay(value) {
        var display = document.getElementById('display');
        var currentValue = display.value;
        
        // Check if the last character of the current value is an operator or a decimal point
        var lastChar = currentValue[currentValue.length - 1];
        var isOperator = value === '+' || value === '-' || value === '*' || value === '/';
        var isDecimalPoint = value === '.';
        
        // Check if the last character is an operator or a decimal point
        if ((isOperator || isDecimalPoint) && (lastChar === '+' || lastChar === '-' || lastChar === '*' || lastChar === '/' || lastChar === '.')) {
            // Do nothing if the last character is already an operator or a decimal point
            return;
        }
        
        // Append the value to the display
        display.value += value;
    }

    function clearDisplay() {
        document.getElementById('display').value = '';
    }
</script>

</body>
</html>
