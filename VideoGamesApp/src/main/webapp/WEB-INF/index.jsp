<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video Game</title>
</head>
<body>

<h1>Welcome to the Video Game Site</h1>



<div class="row">
		<div class="col">
			<h3>Search For A Video Game by ID</h3>
			<form action="findGameId.do" method="GET">
				<input type="text" name="id" placeholder="e.g. 1"/> <input type="submit"
				
					value="Get Game Data" class="sub_button"/>
			</form>
		</div>

		<div class="col">
			<h3>Search For A Game by Keyword</h3>
			<form action="" method="POST">
				<input type="text" name="keyword" placeholder="e.g. red"/> <input type="submit"
					value="Get Game Data" class="sub_button"/>
			</form>
		</div>

		<div class="col">
			<h3>Add A New Game</h3>
			<form action="" method="POST">
				<input type="submit" value="Create New Video Game" class="sub_button" />
			</form>
		</div>
</div>
</body>
</html>