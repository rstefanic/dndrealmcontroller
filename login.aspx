<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>D&amp;D Realm Controller</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" href="assets/img/favicons/favicon.ico">
  <link href="https://fonts.googleapis.com/css?family=Uncial+Antiqua" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

<section class="hero">
  <h1 class="page-home">D&amp;D Realm Controller</h1>
</section>

<div class="page-home">
    <%if (flag == 401){ %>
  <section class="page-home" id="IDpassError">
    <p>ID or password incorrect!</p>
  </section>
    <%} %>
    <%if (flag == 502){ %>
  <section class="page-home" id="DBerror">
    <p>Could not connect to Database</p>
  </section>
    <%} %>


  <section class="page-home">
    <form action="login.aspx" method="post">
    <h2>Realm ID#: </h2> <input name="login" type="text"/>
    <h2>Password: </h2> <input name="password" type="password"/>
    <br/>
    <br/>
    <input id="submit" value="Login" name="submit" type="submit"/>
    </form>

  </section>

  <pre>
    D&amp;D Realm Controller
    | -- Character Generator
    |   | -- Race
    |   |   | -- Human
    |   |   | -- Halfling
    |   |   | -- Orc
    |   |   | -- Elf
    |   |   | -- Teifling
    |   |   | -- Half-Elf
    |   |   | -- Dwarf
    |   | -- Class
    |   |   | -- Fighter
    |   |   | -- Ranger
    |   |   | -- Sorcerer
    |   |   | -- Druid
    |   |   | -- Monk
    |   |   | -- Bard
    |   |   | -- Assassin
  </pre>

</div>

<footer class="page-home">&copy; Ben Benson &amp; Robert Stefanic</footer>

<script src="assets/js/jquery-2.1.4.min.js"></script>
<script src="assets/js/functions.js" type="text/javascript"></script>
</body>
</html>
