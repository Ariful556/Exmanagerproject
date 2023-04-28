<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Expense Manager - Add Expense</title>
	<style>
		form {
			width: 80%;
			margin: 0 auto;
			margin-top: 50px;
			font-family: Arial, sans-serif;
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
			padding: 20px;
			background-color: #fff;
		}
		h1 {
			text-align: center;
			margin-top: 50px;
		}
		label {
			display: block;
			margin-bottom: 10px;
			font-weight: bold;
		}
		select, input[type="date"], input[type="text"], textarea, input[type="number"] {
			display: block;
			width: 100%;
			padding: 10px;
			margin-bottom: 20px;
			border: 1px solid #ddd;
			border-radius: 4px;
			font-size: 16px;
			font-family: Arial, sans-serif;
			box-sizing: border-box;
			resize: vertical;
		}
		select:focus, input[type="date"]:focus, input[type="text"]:focus, textarea:focus, input[type="number"]:focus {
			outline: none;
			border-color: #0066ff;
			box-shadow: 0 0 5px rgba(0, 102, 255, 0.5);
		}
		button[type="submit"] {
			display: block;
			width: 100%;
			padding: 10px;
			background-color: #0066ff;
			color: #fff;
			border: none;
			border-radius: 4px;
			font-size: 16px;
			font-weight: bold;
			cursor: pointer;
			transition: background-color 0.2s ease;
		}
		button[type="submit"]:hover {
			background-color: #0052cc;
		}
	</style>
</head>
<body>
	<h1>Expense Manager - Add Expense</h1>
	<form action="submit-expense.jsp" method="post">
		<label for="category">Category:</label>
		<select id="category" name="category" required>
			<option value="">Select a category</option>
			<option value="Transportation">Transportation</option>
			<option value="Food">Food</option>
			<option value="Fees">Fees</option>
			<option value="Bills">Bills</option>
			<option value="Entertainment">Entertainment</option>
		</select>

		<label for="date">Date:</label>
		<input type="date" id="date" name="date" required>

		<label for="name">Name:</label>
		<input type="text" id="name" name="name" required>

		<label for="description">Description:</label>
		<textarea id="description" name="description"></textarea>

		<label for="amount">Amount:</label>
		<input type="number" step="0.01" id="amount" name="amount" required>

		<button type="submit">Submit</button>
	</form>
</body>
</html>
