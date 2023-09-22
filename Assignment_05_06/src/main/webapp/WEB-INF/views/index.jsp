<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	font-family: Arial, sans-serif;
}

.container {
	max-width: 400px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	font-weight: bold;
}

input[type="text"], input[type="email"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="checkbox"] {
	margin-right: 5px;
}

button[type="submit"] {
	background-color: #007BFF;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Register</h2>
		<form action="submit">
			<label for="name">Name:</label> <input type="text" id="name"
				name="name" required> <label for="email">Email:</label> <input
				type="email" id="email" name="email" required> <label>Frameworks:</label>
			<div>
				<input type="checkbox" id="framework1" name="framework"
					value="React"> <label for="framework1">React</label>
			</div>
			<div>
				<input type="checkbox" id="framework2" name="framework"
					value="Angular"> <label for="framework2">Angular</label>
			</div>
			<div>
				<input type="checkbox" id="framework3" name="framework" value="Vue">
				<label for="framework3">Vue</label>
			</div>

			<button type="submit" name="action" value="submit">Submit</button>
		</form>
	</div>

	<script>
        document.getElementById("myForm").addEventListener("submit", function(event) {
            event.preventDefault();
            
            const name = document.getElementById("name").value;
            const email = document.getElementById("email").value;
            const frameworks = document.querySelectorAll('input[name="framework"]:checked');
            
            const selectedFrameworks = Array.from(frameworks).map(checkbox => checkbox.value);
            
            if (selectedFrameworks.length === 0) {
                alert("Please select at least one framework.");
                return;
            }
            
            // You can process the form data here, for example, send it to a server.
            console.log("Name: " + name);
            console.log("Email: " + email);
            console.log("Selected Frameworks: " + selectedFrameworks.join(", "));
        });
    </script>
</body>
</html>
