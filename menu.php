<!
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }
        #menu {
            font-family: sans-serif;
            font-size: 25px;
            list-style: none;
            background-color: #000000;
            height: 50px;
            margin: 0;
            padding: 0;
            box-sizing: border-box;

        }

        #dmenu {
            color: #fff;
            text-decoration: none;
            line-height: 50px;
            padding: 0 25px;
            border-right: 2px solid #ffffff;
            transition: .3s all ease;
            display: block;

        }

        #dmenu:hover {
            background-color: #db1c0b;
        }

        .pos {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

    </style>
</head>
<body>
<div class="pos">

    <ul id="menu">
        <li style="float: left"><a href="home.php" id="dmenu">Главная</a></li>
        <li style="float: left"><a href="CAD.php" id="dmenu">САПР программы</a></li>
        <li style="float: left"><a href="graphics2d.php" id="dmenu">2Д программы</a></li>
        <li style="float: left"><a href="graphics3d.php" id="dmenu">3Д программы</a></li>
    </ul>

</div>
</body>
</html>

