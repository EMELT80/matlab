<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MATLAB Simulation</title>
    <style>
        body {
            font-family: 'Courier New', monospace;
            margin: 0;
            background-color: #282c34;
            color: #ffffff;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #3a3f47;
            border: 1px solid #555;
            border-radius: 8px;
            padding: 20px;
        }
        .header {
            font-size: 20px;
            font-weight: bold;
            color: #61dafb;
            text-align: center;
            margin-bottom: 10px;
        }
        .toolbar {
            background-color: #1e1e1e;
            padding: 10px;
            color: #aaa;
            border-bottom: 1px solid #555;
        }
        .toolbar span {
            margin-right: 15px;
            cursor: pointer;
        }
        .toolbar span:hover {
            color: #fff;
        }
        .input-section, .output-section {
            margin-top: 20px;
        }
        .input-section textarea, .output-section textarea {
            width: 100%;
            height: 120px;
            background-color: #282c34;
            color: #61dafb;
            border: 1px solid #555;
            border-radius: 4px;
            padding: 10px;
            font-family: 'Courier New', monospace;
            font-size: 14px;
            resize: none;
        }
        .input-section button {
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #61dafb;
            color: #282c34;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        .input-section button:hover {
            background-color: #21a1f1;
        }
    </style>
</head>
<body>
    <div class="toolbar">
        <span>File</span>
        <span>Edit</span>
        <span>View</span>
        <span>Help</span>
    </div>
    <div class="container">
        <div class="header">MATLAB Simulation Interface</div>
        <div class="input-section">
            <label for="input-area">Input (Write your MATLAB-like code here):</label>
            <textarea id="input-area" placeholder="e.g., x = 5; y = x^2;"></textarea>
            <button onclick="runCode()">Run</button>
        </div>
        <div class="output-section">
            <label for="output-area">Output:</label>
            <textarea id="output-area" readonly placeholder="The output will appear here..."></textarea>
        </div>
    </div>

    <script>
        function runCode() {
            const inputArea = document.getElementById('input-area');
            const outputArea = document.getElementById('output-area');
            
            const code = inputArea.value;
            try {
                // Simulate MATLAB-like calculations (basic example)
                let result = eval(code.replace(/\\^/g, ''));
                outputArea.value = >> ${code}\\nResult: ${result};
            } catch (error) {
                outputArea.value = >> ${code}\\nError: ${error.message};
            }
        }
    </script>
</body>
</html>
