# PEC 2 - VISUALIZACIÓN DE DATOS 📊📈




<!-- Estilo para el sombreado de filas alternas -->
<style>
  .tabla-visualizacion {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 30px;
  }
  .tabla-visualizacion td {
    padding: 8px;
    border: 1px solid #ddd;
  }
  .tabla-visualizacion tr:nth-child(even) {
    background-color: #f2f2f2;
  }
  .tabla-visualizacion .col-titulo {
    width: 30%;
    font-weight: bold;
  }
</style>

## Pyramid Chart

<table class="tabla-visualizacion">
  <tr>
    <td class="col-titulo">1. Origen y Autoría</td>
    <td>Herramienta gráfica utilizada en el campo de la sociología para mostrar la distribución de diversos grupos de edad en una población. También es usada en el campo de la ecología para determinar la distribución de edades de una población. Las fuentes proporcionadas no especifican una autoría concreta para esta técnica.</td>
  </tr>
  <tr>
    <td class="col-titulo">2. Características Principales</td>
    <td>
      - Consiste en dos histogramas colocados espalda con espalda que muestran la distribución de una población en todos los grupos de edad y ambos sexos.<br>
      - El eje horizontal representa el número de población, mientras que el eje vertical enumera todos los grupos de edad.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">3. Tipos de Datos Admitidos</td>
    <td>- Datos demográficos que incluyen género, edad y tamaño de la población.</td>
  </tr>
  <tr>
    <td class="col-titulo">4. Ventajas</td>
    <td>
      - Permite detectar cambios o diferencias en los patrones de población.<br>
      - Facilita la comparación de patrones entre naciones o grupos de población seleccionados.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">5. Inconvenientes</td>
    <td>- Puede ser menos efectivo si se compara con otros gráficos que muestran cambios en la población a lo largo del tiempo.</td>
  </tr>
  <tr>
    <td class="col-titulo">6. Ejemplos y Aplicaciones Habituales</td>
    <td>
      - Análisis demográficos para planificar políticas públicas.<br>
      - Estudios de mercado que requieren comprensión de la estructura poblacional.
    </td>
  </tr>
</table>

## Stream Graph

<table class="tabla-visualizacion">
  <tr>
    <td class="col-titulo">1. Origen y Autoría</td>
    <td>El gráfico Stream tiene origen como una variación del gráfico de áreas apiladas y fue desarrollado por Lee Byron.</td>
  </tr>
  <tr>
    <td class="col-titulo">2. Características Principales</td>
    <td>
      - Representa datos cuantitativos a lo largo del tiempo.<br>
      - Las áreas que representan diferentes categorías fluyen alrededor de un eje central variable, creando una apariencia similar a una corriente.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">3. Tipos de Datos Admitidos</td>
    <td>- Datos temporales que involucran múltiples categorías o series, especialmente cuando se desea mostrar la evolución y proporción de cada categoría en relación con el total a lo largo del tiempo.</td>
  </tr>
  <tr>
    <td class="col-titulo">4. Ventajas</td>
    <td>
      - Permite visualizar la evolución de múltiples variables a lo largo del tiempo de manera estética y atractiva.<br>
      - Buena opción para mostrar tendencias y patrones cambiantes en datos de alto volumen.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">5. Inconvenientes</td>
    <td>
      - Puede sufrir problemas de legibilidad, especialmente con conjuntos de datos grandes donde las categorías con valores más pequeños pueden quedar eclipsadas por las más grandes.<br>
      - Es difícil leer valores exactos debido a la falta de un eje de referencia claro.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">6. Ejemplos y Aplicaciones Habituales</td>
    <td>
      - Análisis de tendencias en datos categóricos a lo largo del tiempo.<br>
      - Visualización de patrones estacionales o periódicos en diversos campos como economía y sociología.
    </td>
  </tr>
</table>

## Ridgeline Chart

<table class="tabla-visualizacion">
  <tr>
    <td class="col-titulo">1. Origen y Autoría</td>
    <td>El gráfico Ridgeline es una técnica de visualización que permite comparar múltiples distribuciones de datos superpuestas, facilitando la comparación entre ellas. Originalmente, este tipo de gráfico fue popularizado bajo el nombre de "Joyplot" en referencia a la banda Joy Division, cuya portada del álbum "Unknown Pleasures" presentaba una visualización similar. Sin embargo, debido a las connotaciones históricas del nombre "Joy Division", Claus O. Wilke, profesor de Biología Integrativa, propuso en 2017 cambiar el término a "Ridgeline Plot" para evitar asociaciones inapropiadas (Wilke, 2017).</td>
  </tr>
  <tr>
    <td class="col-titulo">2. Características Principales</td>
    <td>
      - Visualiza distribuciones de varias variables numéricas mediante una serie de curvas de densidad apiladas en el eje Y.<br>
      - Cada curva representa la distribución de una variable o subconjunto de datos, permitiendo comparaciones directas.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">3. Tipos de Datos Admitidos</td>
    <td>- Datos numéricos con distribuciones en diferentes categorías o momentos en el tiempo.</td>
  </tr>
  <tr>
    <td class="col-titulo">4. Ventajas</td>
    <td>
      - Buena opción para comparar múltiples distribuciones en un solo gráfico.<br>
      - Puede ser usado para identificar tendencias en los datos o patrones estacionales.
    </td>
  </tr>
  <tr>
    <td class="col-titulo">5. Inconvenientes</td>
    <td>- Puede volverse confuso si hay demasiadas categorías superpuestas.</td>
  </tr>
  <tr>
    <td class="col-titulo">6. Ejemplos y Aplicaciones Habituales</td>
    <td>
      - Evolución de temperaturas: Distribución de temperaturas diarias a lo largo de décadas.<br>
      - Análisis financiero: Variabilidad de retornos en distintos mercados.
    </td>
  </tr>
</table>