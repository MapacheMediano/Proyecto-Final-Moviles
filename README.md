# Proyecto Final: Aplicación Móvil Web

Este repositorio contiene el código fuente del proyecto final desarrollado para la materia de **Aplicaciones Móviles Nativas**. El proyecto incluye un modelo 3D de la Escuela Superior de Cómputo (ESCOM) que se ejecuta como una aplicación web y puede ser emulado en dispositivos móviles.

## Descripción
El objetivo del proyecto es mostrar el modelo 3D de ESCOM, desarrollado en Blender, e integrarlo en una experiencia web optimizada para dispositivos móviles.

### Características principales:
- Modelo 3D interactivo de ESCOM.
- Interfaz web adaptable para emulación en dispositivos móviles.
- Uso de tecnologías web para renderizado y visualización, como **Three.js**.

## Requisitos
Antes de comenzar, asegúrate de contar con lo siguiente:

- **Navegador web** moderno (Google Chrome, Mozilla Firefox, etc.).
- Conexión a internet para cargar y visualizar el contenido del proyecto.
- Node.js instalado (para instalar todas las dependencias).
- Opción de emular dispositivos móviles si deseas probar la experiencia en un entorno móvil.
- Motor de bases de datos MySQL. 

## Instalación y Ejecución
Sigue estos pasos para descargar y ejecutar el proyecto en tu entorno local:

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/MapacheMediano/Proyecto-Final-Moviles.git
   ```

2. **Cargar base de datos del proyecto**:
   - Navega hasta la carpeta principal del proyecto, accede a la carpeta /OnToy/db/.
   - Se econtrara el archivo bd.sql que es el script para cargar la base de datos.
   - Abrir este script con la interfaz de MySQL Workbench.
   - Ejecutar el script.

3. **Agregar archivo .env** (opcional):
   - Navegar en las carpetas a la ruta /OnToy/.
   - Agregar un archivo .env
   - Dentro de este archivo colocar los siguientes parametros de acuerdo a sus especificaciones.
   ```bash
      PORT = 3000
      DB_HOST = localhost
      DB_USER = root
      DB_PASSWORD = n0m310
      JWTSECRET = secretosecretoso
      DB_NAME = ontoy_db
   ```

   - Para el caso de DB_USER y DB_PASSWORD, debera de colocar las credenciales correspondientes a su gestor de bases de datos, donde creo la base de datos del proyecto.

4. **Correr Backend del proyecto:
   - Dirigirse a la carpeta del backend del proyecto ubicada en /OnToy/.
   - Abrir una terminal cmd o de algun ID como Visual Studio Code ubicandonos en la ruta ya mencionada.
   - Ingresar el siguiente comando para instalar todas las dependencias:
     ```bash
        npm i
     ```
   - Posteriormente ejecutar el comando :
   ```bash
        npm start
   ```
   - Con esto ya estara corriendo el servidor en nuestro localhost en el puerto 3000. 

5. **Correr Frontend del proyecto:
   - Dirigirse a la carpeta del backend del proyecto ubicada en /ontoy2.0/OntoyReactWeb/.
   - Abrir una terminal cmd o de algun ID como Visual Studio Code ubicandonos en la ruta ya mencionada.
   - Ingresar el siguiente comando para instalar todas las dependencias:
     ```bash
        npm i
     ```
   - Posteriormente ejecutar el comando :
   ```bash
        npm rund dev
   ```
   - Con esto ya estara corriendo nuestra aplicación en localhost en el puerto 5173. 

## Uso
1. Abre el navegador y accede a la URL http://localhost:5173/.
2. Navegar en la aplicación para poder registrarse
3. Una vez registrado, iniciar sesión.
4. Dirigirse a la pagina del Mapa, el enlace se encuentra en la barra de navegación.
5. Interactuar con el mapa de la ESCOM.
6. Generar alguna ruta que desea, a partir de un salon origen y uno destino.
7. Nota: No es posible generar todas las rutas, debido a que no estan cargados todos los nodos en la BD.
8. Una ruta de prueba podria se del salon 1014 a Palapas IA.

## Estructura del Proyecto
- **`/`**: Carpeta raíz que contiene los archivos HTML, CSS, y JavaScript del proyecto.
- **`assets/`**: Carpeta que contiene los recursos necesarios, como imágenes y el modelo 3D.
- **`README.md`**: Este archivo con información del proyecto.

## Contribución
Actualmente, este proyecto no está abierto a contribuciones externas, ya que es parte de un proyecto académico.

## Licencia
Este proyecto fue desarrollado con fines educativos como parte de la materia **Aplicaciones Móviles Nativas** y no incluye licencia para distribución pública.

---

Si tienes preguntas o comentarios sobre este proyecto, no dudes en contactarme a través de este repositorio.
