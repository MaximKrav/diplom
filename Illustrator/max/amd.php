<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Программы</title>

    <link rel="stylesheet" href="max.css">
</head>
<body style="background: #444343">


<?php
$mysqli = new mysqli('localhost', 'root', '', 'diplom');
$mysqli ->query("SET NAMES 'utf8'");
?>


<div class="box-2">
    <p>Итоговая цена: <br><output></output> рублей</p>
    <br>
    <a href="../../menu.php">На главную</a>
    <br>
    <a href="../../graphics2d.php">К программам</a>
</div>
<div class="box-3">
    <h1>Конфигуратор для Photoshop для проектов объемом больше 1 гб на процессоре amd</h1>
</div>
<form id="some">
    <div class="box-1">
        <h1 id="header1" style="text-align: center">Процессор</h1>
        <?php
        $processor = $mysqli ->query("Select * From processor where id_processor=68 or id_processor=67 or id_processor=66 
                           or id_processor=65 or id_processor=64 or id_processor=63 or id_processor=62 or id_processor=61");
        ?>
        <div>
            <?php while($row=$processor->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="processor" value=<?php echo $row['Price']?>><?php echo $row['Name']."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $processor = $mysqli ->query("Select * From processor where id_processor=68 or id_processor=67 or id_processor=66 
                           or id_processor=65 or id_processor=64 or id_processor=63 or id_processor=62 or id_processor=61");
        ?>
        <div id="zatemnenie-processor" >
            <div class="okno-processor yes_wrap">
                <?php while($row=$processor->fetch_assoc()) {
                    echo $row['Name']."<br>"."Максимальная частота: ".$row['Max_GHz']." ГГЦ"."<br>".
                        "Количество ядер: ".$row['Cores']."<br>"."Мощность: ".$row['TDP']." Вт"."<br>"."<br>";
                } ?><br>
                <a href="#header1" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-processor">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header2" style="text-align: center">Материнская плата</h1>
        <?php
        $motherboard = $mysqli ->query("Select * From motherboard where id_motherboard=36 or id_motherboard=35
                             or id_motherboard=32 or id_motherboard=31 or id_motherboard=30 or id_motherboard=29");
        ?>
        <div>
            <?php while($row=$motherboard->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="motherboard" value=<?php echo $row['Price']?>><?php echo $row['Name']."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $motherboard = $mysqli ->query("Select * From motherboard where id_motherboard=36 or id_motherboard=35
                             or id_motherboard=32 or id_motherboard=31 or id_motherboard=30 or id_motherboard=29");
        ?>
        <div id="zatemnenie-motherboard">
            <div id="okno-motherboard">
                <?php while($row=$motherboard->fetch_assoc()) {
                    echo $row['Name']."<br>"."Максимальная велечина памяти: ".$row['Max_memory']." ГБ"."<br>".
                        "Количество слотов памяти: ".$row['Slot_memory']."<br>"."Количество слотов M2: ".$row['M2']."<br>"."<br>";
                } ?><br>
                <a href="#header2" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-motherboard">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header3" style="text-align: center">Видеокарта</h1>
        <?php
        $videocard = $mysqli ->query("Select * From videocard where id_videocard=16 or id_videocard=15
                           or id_videocard=14 or id_videocard=13 or id_videocard=12");
        ?>
        <div>
            <?php while($row=$videocard->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="videocard" value=<?php echo $row['Price']?>><?php echo $row['Name']."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $videocard = $mysqli ->query("Select * From videocard where id_videocard=16 or id_videocard=15
                           or id_videocard=14 or id_videocard=13 or id_videocard=12");
        ?>
        <div id="zatemnenie-videocard">
            <div id="okno-videocard">
                <?php while($row=$videocard->fetch_assoc()) {
                    echo $row['Name']."<br>"."Объем видеопамяти: ".$row['GPU_memory']." ГБ"."<br>". "Максимальная пропускная способность памяти: ".$row['Memory_bandwidth']." Гбайт/сек".
                        "<br>"."Количество ядер CUDO: ".$row['Cudo']."<br>"."Архитектура: ".$row['Architecture']."<br>"."<br>";
                } ?>
                <a href="#header3" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-videocard">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header4" style="text-align: center">Оперативная память</h1>
        <?php
        $ram = $mysqli ->query("Select * From ram where id_ram=6 or id_ram=5 or id_ram=4");
        ?>
        <div>
            <?php while($row=$ram->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="ram" value=<?php echo $row['Price']?>><?php echo $row['Name']." ".$row['Sum_ram']." ГБ"."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $ram = $mysqli ->query("Select * From ram where id_ram=6 or id_ram=5 or id_ram=4");
        ?>
        <div id="zatemnenie-ram">
            <div id="okno-ram">
                <?php while($row=$ram->fetch_assoc()) {
                    echo $row['Name']."<br>"."Суммарная величина памяти ".$row['Sum_ram']." ГБ"."<br>".
                        "Количество планок памяти ".$row['Number']."<br>"."Тип памяти ".$row['Type_memory']."<br>"."<br>";
                } ?><br>
                <a href="#header4" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-ram">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1  id="header5" style="text-align: center">Жесткий диск</h1>
        <?php
        $hdd = $mysqli ->query("Select * From hdd");
        ?>
        <div>
            <?php while($row=$hdd->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="hdd" value=<?php echo $row['Price']?>><?php echo $row['Name']." ".$row['Memory']." ТБ"."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $hdd = $mysqli ->query("Select * From hdd");
        ?>
        <div id="zatemnenie-hdd">
            <div id="okno-hdd">
                <?php while($row=$hdd->fetch_assoc()) {
                    echo $row['Name']."<br>"."Объем памяти: ".$row['Memory']." ТБ"."<br>"."Кэш память: ".$row['Cach_memory']." МБ"."<br>".
                        "Максимальная скорость передачи данных: ".$row['Data_transfer_rate']." Мбайт/сек"."<br>"."<br>";
                } ?><br>
                <a href="#header5" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-hdd">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header6" style="text-align: center">Твердотельный накопитель</h1>
        <?php
        $ssd = $mysqli ->query("Select * From ssd");
        ?>
        <div>
            <?php while($row=$ssd->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="ssd" value=<?php echo $row['Price']?>><?php echo $row['Name']." ".$row['Memory']." ГБ"."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $ssd = $mysqli ->query("Select * From ssd");
        ?>
        <div id="zatemnenie-ssd">
            <div id="okno-ssd">
                <?php while($row=$ssd->fetch_assoc()) {
                    echo $row['Name']."<br>"."Объем памяти: ".$row['Memory']." ГБ"."<br>"."Скорость чтения: ".$row['Reed_speed']." Мбайт/сек"."<br>".
                        "Скорость записи ".$row['Write_speed']." Мбайт/сек"."<br>"."Количество бит: ".$row['Bit']."<br>"." M.2:".$row['M2']."<br>"."<br>";
                } ?><br>
                <a href="#header6" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-ssd">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header7" style="text-align: center">Блок питания</h1>
        <?php
        $power_supply = $mysqli ->query("Select * From power_supply where id_power_supply=6 or id_power_supply=5");
        ?>
        <div>
            <?php while($row=$power_supply->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="power_supply" value=<?php echo $row['Price']?>><?php echo $row['Name']." "."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $power_supply = $mysqli ->query("Select * From power_supply where id_power_supply=6 or id_power_supply=5");
        ?>
        <div id="zatemnenie-power_supply">
            <div id="okno-power_supply">
                <?php while($row=$power_supply->fetch_assoc()) {
                    echo $row['Name']."<br>"." Мощность: ".$row['TDP']." Вт"."<br>"." Сертификат 80 PLUS: ".$row['80PLUS']."<br>"."<br>";
                } ?><br>
                <a href="#header7" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-power_supply">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header8" style="text-align: center">Охлаждение</h1>
        <?php
        $cooling = $mysqli ->query("Select * From cooling where id_cooling=24
                         or id_cooling=19 or id_cooling=12 or id_cooling=4 or id_cooling=2");
        ?>
        <div>
            <?php while($row=$cooling->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="cooling" value=<?php echo $row['Price']?>><?php echo $row['Name']." "."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $cooling = $mysqli ->query("Select * From cooling where id_cooling=24
                         or id_cooling=19 or id_cooling=12 or id_cooling=4 or id_cooling=2");
        ?>
        <div id="zatemnenie-cooling">
            <div id="okno-cooling">
                <?php while($row=$cooling->fetch_assoc()) {
                    echo $row['Name']."<br>"." Мощность: ".$row['TDP']." Вт"."<br>"."Максимальный уровень шума: ".$row['Max_noise_level']." ДБ".
                        "<br>"."Система охлаждения: ".$row['Cooling_system']."<br>"." Защита от протечки: ".$row['leakage_protection']."<br>"."<br>";
                } ?><br>
                <a href="#header8" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-cooling">Характеристики</a>
    </div>

    <br>

    <div class="box-1">
        <h1 id="header9" style="text-align: center">Корпус</h1>
        <?php
        $computer_case = $mysqli ->query("Select * From computer_case where id_computer_case=9 or id_computer_case=8 or id_computer_case=6 
                               or id_computer_case=3 or id_computer_case=2 or id_computer_case=1");
        ?>
        <div>
            <?php while($row=$computer_case->fetch_assoc()) { ?>
                <p><input checked class="calc" type="radio" name="computer_case" value=<?php echo $row['Price']?>><?php echo $row['Name']."<br>"."Цена: ".$row['Price']." рублей"?></p>
            <?php } ?>
        </div>
        <?php
        $computer_case = $mysqli ->query("Select * From computer_case where id_computer_case=9 or id_computer_case=8 or id_computer_case=6 
                               or id_computer_case=3 or id_computer_case=2 or id_computer_case=1");
        ?>
        <div id="zatemnenie-computer_case">
            <div id="okno-computer_case">
                <?php while($row=$computer_case->fetch_assoc()) {
                    echo $row['Name']."<br>"." Тип корпуса: ".$row['Type_computer_case']."<br>"."<br>";
                } ?><br>
                <a href="#header9" class="close">Закрыть окно</a>
            </div>
        </div>
        <a href="#zatemnenie-computer_case">Характеристики</a>
    </div>
</form>

<br>


<script type="text/javascript">
    const onChange = function () {
        const processor = parseInt(this.processor.value, 10);
        const ram = parseInt(this.ram.value, 10);
        const videocard = parseInt(this.videocard.value, 10);
        const hdd = parseInt(this.hdd.value, 10);
        const motherboard = parseInt(this.motherboard.value, 10);
        const ssd = parseInt(this.ssd.value, 10);
        const power_supply = parseInt(this.power_supply.value, 10);
        const cooling = parseInt(this.cooling.value, 10);
        const computer_case = parseInt(this.computer_case.value, 10)

        document.querySelector('output').textContent = processor + ram + videocard + hdd + motherboard + ssd + power_supply + cooling + computer_case;
    }

    document.querySelector('form#some').addEventListener('change', onChange);

    onChange.call(document.querySelector('form#some'));

</script>

</body>
</html>
