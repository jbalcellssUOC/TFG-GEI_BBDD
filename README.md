<!-- LOGO DEL PROJECTE -->
<br />
<div align="center">
  <img src="images/logo.jpg" style="display: block;  margin-left: auto;  margin-right: auto;  width: 45%;">
  <h3 align="center">README.MD</h3>

  <p align="center">
    Aquest fitxer conté les instruccions per desplegar la base de dades principal de l'aplicació web Codis365.
    <br />
  </p>
</div>

<!-- TAULA DE CONTINGUTS -->
<details>
  <summary>Taula de continguts</summary>
  <ol>
    <li><a href="#introduccio">Introducció</a></li>
    <li><a href="#estructura">Estructura del repositori</a></li>
    <li><a href="#captures">Captures de pantalla</a></li>
  </ol>
</details>

<!-- INTRODUCCIÓ -->
## Introducció
<div id="introduccio"></div>

L'objectiu d'aquest repositori és disposar de l'estructura de la base de dades i de dades d'exemple o reals en funcionament per tal de poder desplegar la base de dades en una versió local per al desenvolupament en pocs minuts. A través de l'estructura d'scripts SQL de la carpeta **CleanDB**, es pot desplegar una base de dades completa i funcional. Mitjançant l'estructura d'scripts SQL de versionat de la carpeta **UpdateDB**, un equip de desenvolupadors pot incorporar canvis i millores, integrant-les a la base de dades de desenvolupament o producció mitjançant el versionat.

<!-- ESTRUCTURA -->
## Estructura del repositori
<div id="estructura"></div>

L'estructura de carpetes del repositori està distribuïda de la següent manera:

> ***Per desplegar una base de dades nova i neta, utilitzeu la carpeta CleanDB***

> - CleanDB
>    - INSERTS
>        - 1.Users_Roles.sql
>        - 2.Users_Data.sql
>        - 3.Master_Tables.sql

> - BD
>     - 1.new_DB.sql

> ***Per fer actualitzacions de versió en bases de dades desplegades localment, utilitzeu la carpeta UPDATES***
> - UpdateDB
>     - v1.1
>         - v1.0_to_1.1.sql
>         - OtherSQLScripts.sql
>         - ...
>     - vX.X ...
>         - vX.X_to_X.X.sql
>         - OtherSQLScripts.sql
>         - ...

<!-- CAPTURES DE PANTALLA -->
## Captures de pantalla
<div id="captures"></div>

<div id="block" align="center">
    <div class="inline-block" style="display: inline-block; width: 30%">
        <img src="images/SQLServer-1.png">
    </div>
    <br>
    <div class="inline-block" style="display: inline-block; width: 30%">
        <img src="images/SQLServer-2.png">
    </div>
    <br>
</div>
