# <h1 align="center">**`Cryptocurrency Market Data Analytics`**</h1>
## Análsis exploratorio de 10 Cryptomonedas empleando análisis de datos en python y power BI

### **Contexto**

En los últimos años, el mercado de las criptomonedas ha experimentado un crecimiento exponencial y una creciente adopción a nivel mundial. La aparición del Bitcoin en 2009 marcó el inicio de una revolución financiera que ha llevado a la creación de miles de criptomonedas diferentes con diversas funcionalidades y tecnologías subyacentes.

Con el aumento del interés en el mercado de criptomonedas, cada vez más inversores, empresas y entusiastas buscan comprender mejor el comportamiento y la evolución de estos activos digitales. Sin embargo, la naturaleza altamente volátil y compleja de las criptomonedas presenta desafíos significativos para aquellos que desean tomar decisiones informadas sobre inversiones o simplemente para comprender mejor cómo funcionan estos mercados emergentes.

El análisis y la exploración de datos desempeñan un papel crucial en la obtención de información valiosa dentro del vasto conjunto de datos disponibles sobre criptomonedas. En este contexto, es clave el uso de una valiosa fuente de datos actualizados que proporcionen información sobre una amplia variedad de criptomonedas, incluidos precios, volúmenes de negociación, capitalización de mercado, información histórica y más.

[Fuente](https://github.com/soyHenry/PI_DA)

<p align='center'>
<img src = 'https://www.reuters.com/resizer/6fhRdtt1IEvYxpohy3ZmPhcPXqM=/960x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/YLLV6FRGRZKLZDTA7P44D75IAQ.jpg' height = 200>
<p>

### ***Metodología***
Para el presente proyecto se emplearon los datos de la API de coingecko descargando los datos diarios de 10 criptomonedas, estas critomonedas se seleccionaron por las criptos con mayor capitalización de mercado y también se seleccionaron 3 que son las que mejor se han desempeñado en este año en curso 2023. Los datos nos los brinda la API de coingecko y se encuentran en formato JSON.

_**IMPORTANTE:** Los archivos .json (por ejemplo BTC.json) deben estar en la misma carpeta que el jupyter que contiene la función de transformación "DA_CryptoM.ipynb", se pueden añadir las criptomonedas que se deseen incorporando el diminutivo de esta a la lista "lista_cryptos = [BTC, ETH, BCH, DOGE,ADA, SOL, SHIB, LDO, GRT, PEPE]"_

<p align='center'>
<img src = 'https://codahosted.io/packs/11746/unversioned/assets/COVER/12ceef496082930b8c73d1f442ccd9c6787f21b55e80a611578341be4d9a130bade9620d8f6c5bb7dc235105684404bf9d2ceb34465eaf1948cb45a94c3e6869c53dced8f2381e2d89c87ee2db5dae0eb4cbfaca0f71a39762cd8a880d661b75f384de12' height = 150>
<p>
Luego de tener la información base de la API transformada ya podrá ser analizada, por lo que se prosigue revisando la calidad de los datos revisando valores faltante, nulos o duplicados. Luego en el Exploratoy Data Analysis vamos a ver mas a fondo y gráficamente el comportamiento y relación de las variables, en DA_CryptoM.ipynb se observarán no solo el código empleado para analizar los datos y graficar los mismos, sino los análsis realizados, y las referencias que soportan a las afirmaciones realizadas.

Por último vamos a encontrar la descripción de los KPI elegidos para ayudar en la toma de desición y seguimiento para una eventual inversión en criptomonedas, dentro de la carpeta de Cryptos_csv se incluye Inversiones.csv que sería el archivo donde se consignarían las potenciales inversiones y sobre esta información y las bases de datos de cada una de las criptomonedas se generan los KPI.

### Key Performance Indicators

Los 3 indicadores definidos se definen a continuación:

1. Indicador de rentabilidad de inversiones: Empleando la variación porcentual entre la fecha de inversión y la fecha actual considerando esto en todas y cada una de las inversiones para tener una visión global de cuales inversiones presentan ganacia y cuales tienen inconvenientes para poder mirar mas a fondo si es conveniente proseguir con el dinero y salir y aceptar la pérdida.

2. Indicador de entrada o salida de inversión a mediano plazo: Se emplea la media móvil ponderada tomando los ultimos 65 días de registros, una plazo apropiado apra que pueda tomar tendencias a la baja y alcistas, pero dándole más peso a los hechos recientes.

3. Retorono de Inversión Global ajustado: Para evaluar realmente que tal rentable es una inversión en el tiempo, dado que en este escenario teórico se considera que la compañia que desea explorar sus oportunidades de inversión es Colombiana este KPI se devolverá con el ajuste por tasa de cambio en base a los datos históricos del Banco de la República de Colombia.

Estos indicadores muestran en el dashboard  de Power BI que es el complemento de visualización para mostrarlo a el cliente.

Elaborado por:
KEVIN DAVISON GALVIS
+57 3053506307