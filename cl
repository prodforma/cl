<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Калькулятор</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: black;
            margin: 0;
            font-family: Arial, sans-serif;
            overflow: hidden; /* Отключаем прокрутку */
        }

        .calculator {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 300px; /* Увеличиваем ширину калькулятора */
            height: 400px; /* Увеличиваем высоту калькулятора */
        }

        #display {
            width: 100%;
            height: 70px;
            background-color: black; /* Черный фон поля */
            color: white;
            text-align: right;
            padding: 10px;
            border: none;
            font-size: 32px; /* Увеличиваем размер шрифта */
            font-weight: bold; /* Жирный текст */
        }

        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 70px); /* Увеличиваем размер кнопок */
            gap: 10px;
        }

        button {
            width: 70px; /* Увеличиваем ширину кнопок */
            height: 70px; /* Увеличиваем высоту кнопок */
            background-color: white;
            color: black;
            border: none;
            font-size: 24px; /* Увеличиваем размер шрифта кнопок */
            cursor: pointer;
        }

        button:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <input type="text" id="display" value="0" disabled> <!-- Устанавливаем значение 0 -->
        <div class="buttons">
            <button onclick="clearDisplay()">C</button>
            <button onclick="appendToDisplay('/')">/</button>
            <button onclick="appendToDisplay('*')">*</button>
            <button onclick="appendToDisplay('-')">-</button>
            <button onclick="appendToDisplay('7')">7</button>
            <button onclick="appendToDisplay('8')">8</button>
            <button onclick="appendToDisplay('9')">9</button>
            <button onclick="appendToDisplay('+')">+</button>
            <button onclick="appendToDisplay('4')">4</button>
            <button onclick="appendToDisplay('5')">5</button>
            <button onclick="appendToDisplay('6')">6</button>
            <button onclick="calculateResult()">=</button>
            <button onclick="appendToDisplay('1')">1</button>
            <button onclick="appendToDisplay('2')">2</button>
            <button onclick="appendToDisplay('3')">3</button>
            <button onclick="appendToDisplay('0')">0</button>
        </div>
    </div>
    <script>
        function appendToDisplay(value) {
            const display = document.getElementById("display");
            // Если текущее значение 0, заменяем его на пустую строку
            if (display.value === "0") {
                display.value = '';
            }
            display.value += value;
        }

        function clearDisplay() {
            document.getElementById("display").value = '0'; // Устанавливаем 0 при очистке
        }

        function calculateResult() {
            const display = document.getElementById("display");
            try {
                display.value = eval(display.value);
            } catch {
                display.value = 'Ошибка';
            }
        }
    </script>
</body>
</html>
