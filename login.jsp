<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="true" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form id="loginForm">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        <br>
        <button type="button" onclick="submitForm()">Login</button>
    </form>
    <script>
        function encodeURIComponentWrapper(str) {
            return encodeURIComponent(str);
        }

        async function submitForm() {
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const response = await fetch('/LoginProject/login', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: 'email=' + encodeURIComponentWrapper(email) + '&password=' + encodeURIComponentWrapper(password),
            });
            const text = await response.text();
            alert(text);
        }
    </script>
</body>
</html>
