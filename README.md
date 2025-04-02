# PEC2 - VISUALIZACIÓN DE DATOS 📊📈

<div style="width: 100%; clear: both;">
<div style="float: left; width: 50%;">
<img src="http://www.uoc.edu/portal/_resources/common/imatges/marca_UOC/UOC_Masterbrand.jpg" align="left">
</div>
<div style="float: right; width: 50%;">
<p style="margin: 0; padding-top: 22px; text-align:right;">M2.859 · Visualización de datos · PEC2</p>
<p style="margin: 0; text-align:right;">2024-2 · Máster universitario en Ciencia de datos (Data science)</p>
<p style="margin: 0; text-align:right; padding-button: 100px;">Estudios de Informática, Multimedia y Telecomunicación</p>
</div>
</div>
<div style="width:100%;">&nbsp;</div>

## Contenido

- [1. Pyramid Chart](#1-pyramid-chart)
  - [Explicación de la técnica](#explicación-de-la-técnica)
  - [Datos y herramientas usadas para la propuesta](#datos-y-herramientas-usadas-para-la-propuesta)
  - [Propuesta de la técnica](#propuesta-de-la-técnica)
- [2. Stream Graph](#2-stream-graph)
  - [Explicación de la técnica](#explicación-de-la-técnica-1)
  - [Datos y herramientas usadas para la propuesta](#datos-y-herramientas-usadas-para-la-propuesta-1)
  - [Propuesta de la técnica](#propuesta-de-la-técnica-1)
- [3. Ridgeline Chart](#3-ridgeline-chart)
  - [Explicación de la técnica](#explicación-de-la-técnica-2)
  - [Datos y herramientas usadas para la propuesta](#datos-y-herramientas-usadas-para-la-propuesta-2)
  - [Propuesta de la técnica](#propuesta-de-la-técnica-2)

-----------

## 1. Pyramid Chart

### Explicación de la técnica

<table class="tabla-visualizacion">
  <tr>
    <td class="col-titulo"><b>1. Origen y Autoría</b></td>
    <td>Herramienta gráfica utilizada en el campo de la sociología para mostrar la distribución de diversos grupos de edad en una población. También es usada en el campo de la ecología para determinar la distribución de edades de una población. Las fuentes proporcionadas no especifican una autoría concreta para esta técnica.</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>2. Características Principales</b></td>
    <td>
      - Consiste en dos histogramas colocados espalda con espalda que muestran la distribución de una población en todos los grupos de edad y ambos sexos.<br>
      - El eje horizontal representa el número de población, mientras que el eje vertical enumera todos los grupos de edad.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>3. Tipos de Datos Admitidos</b></td>
    <td>- Datos demográficos que incluyen género (dato cualitativo), edad (dato cuantitativo) y tamaño de la población (dato cuantitativo).</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>4. Ventajas</b></td>
    <td>
      - Permite detectar cambios o diferencias en los patrones de población.<br>
      - Facilita la comparación de patrones entre naciones o grupos de población seleccionados.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>5. Inconvenientes</b></td>
    <td>- Puede ser menos efectivo si se compara con otros gráficos que muestran cambios en la población a lo largo del tiempo.</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>6. Ejemplos y Aplicaciones Habituales</b></td>
    <td>
      - Análisis demográficos para planificar políticas públicas.<br>
      - Estudios de mercado que requieren comprensión de la estructura poblacional.
    </td>
  </tr>
</table>

### Datos y herramientas usadas para la propuesta

Los datos utilizados en esta visualización provienen de dos fuentes: el [INE](https://www.ine.es/jaxiT3/Tabla.htm?t=56934) para la población y [datos.macro](https://datosmacro.expansion.com/demografia/esperanza-vida/espana) para la esperanza de vida.

Herramientas usadas: 
<p align="left">
<!--Python---><a href="https://www.python.org" target="_blank" rel="noreferrer"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg" alt="python" width="40" height="40"/></a>

### Propuesta de la técnica

<div align="center">
      <img src="pyramid_chart/plots/pop_pyramid_evolution.gif" width="100%">
</div>

## 2. Stream Graph

### Explicación de la técnica

<table class="tabla-visualizacion">
  <tr>
    <td class="col-titulo"><b>1. Origen y Autoría</b></td>
    <td>El gráfico Stream tiene origen como una variación del gráfico de áreas apiladas y fue desarrollado por Lee Byron.</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>2. Características Principales</b></td>
    <td>
      - Representa datos cuantitativos a lo largo del tiempo.<br>
      - Las áreas que representan diferentes categorías fluyen alrededor de un eje central variable, creando una apariencia similar a una corriente.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>3. Tipos de Datos Admitidos</b></td>
    <td>- Datos temporales (dato cuantitativo) que involucran múltiples categorías o series (dato cualitativo), especialmente cuando se desea mostrar la evolución y proporción de cada categoría en relación con el total a lo largo del tiempo.</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>4. Ventajas</b></td>
    <td>
      - Permite visualizar la evolución de múltiples variables a lo largo del tiempo de manera estética y atractiva.<br>
      - Buena opción para mostrar tendencias y patrones cambiantes en datos de alto volumen.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>5. Inconvenientes</b></td>
    <td>
      - Puede sufrir problemas de legibilidad, especialmente con conjuntos de datos grandes donde las categorías con valores más pequeños pueden quedar eclipsadas por las más grandes.<br>
      - Es difícil leer valores exactos debido a la falta de un eje de referencia claro.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>6. Ejemplos y Aplicaciones Habituales</b></td>
    <td>
      - Análisis de tendencias en datos categóricos a lo largo del tiempo.<br>
      - Visualización de patrones estacionales o periódicos en diversos campos como economía y sociología.
    </td>
  </tr>
</table>

### Datos y herramientas usadas para la propuesta

Los datos utilizados en esta visualización provienen del repositorio de Kaggle de [Kaggle - Most Popular Programming Languages since 2004](https://www.kaggle.com/datasets/muhammadkhalid/most-popular-programming-languages-since-2004).

Herramientas usadas: 
<p align="left">
<!--JavaScript---><a target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/9/99/Unofficial_JavaScript_logo_2.svg" alt="javascript" width="40" height="40"/></a>

### Propuesta de la técnica

Enlace a la visualización: https://albertgallegojimenez.github.io/pec2-dataviz/

## 3. Ridgeline Chart

### Explicación de la técnica

<table class="tabla-visualizacion">
  <tr>
    <td class="col-titulo"><b>1. Origen y Autoría</b></td>
    <td>El gráfico Ridgeline es una técnica de visualización que permite comparar múltiples distribuciones de datos superpuestas, facilitando la comparación entre ellas. Originalmente, este tipo de gráfico fue popularizado bajo el nombre de "Joyplot" en referencia a la banda Joy Division, cuya portada del álbum "Unknown Pleasures" presentaba una visualización similar. Sin embargo, debido a las connotaciones históricas del nombre "Joy Division", Claus O. Wilke, profesor de Biología Integrativa, propuso en 2017 cambiar el término a "Ridgeline Plot" para evitar asociaciones inapropiadas (Wilke, 2017).</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>2. Características Principales</b></td>
    <td>
      - Visualiza distribuciones de varias variables numéricas mediante una serie de curvas de densidad apiladas en el eje Y.<br>
      - Cada curva representa la distribución de una variable o subconjunto de datos, permitiendo comparaciones directas.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>3. Tipos de Datos Admitidos</b></td>
    <td>- Datos numéricos con distribuciones en diferentes categorías o momentos en el tiempo.</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>4. Ventajas</b></td>
    <td>
      - Buena opción para comparar múltiples distribuciones en un solo gráfico.<br>
      - Puede ser usado para identificar tendencias en los datos o patrones estacionales.
    </td>
  </tr>
  <tr>
    <td class="col-titulo"><b>5. Inconvenientes</b></td>
    <td>- Puede volverse confuso si hay demasiadas categorías superpuestas.</td>
  </tr>
  <tr>
    <td class="col-titulo"><b>6. Ejemplos y Aplicaciones Habituales</b></td>
    <td>
      - Evolución de temperaturas: Distribución de temperaturas diarias a lo largo de décadas.<br>
      - Análisis financiero: Variabilidad de retornos en distintos mercados.
    </td>
  </tr>
</table>

### Datos y herramientas usadas para la propuesta

Los datos utilizados en esta visualización provienen de la página de [Open Meteo](https://open-meteo.com/).

Herramientas usadas: 
<p align="left">
<!--R---><a target="_blank" rel="noreferrer"> <img src="https://upload.wikimedia.org/wikipedia/commons/1/1b/R_logo.svg" alt="R" width="40" height="40"/></a>
<!--Canva---><a target="_blank" rel="noreferrer"> <img src="https://img.icons8.com/?size=100&id=EZQdGLNeo7JI&format=png&color=000000" alt="Canva" width="40" width="40" /></a>

### Propuesta de la técnica

<div align="center">
      <img src="ridgeline_chart/plots/temp_precip_spain_2024.png" width="100%">
</div>