# Proyecto de Consultas a Base de Datos con PHP y Ajax (MVC)

Este proyecto consiste en la creación de una **aplicación web dinámica** que interactúa con una base de datos utilizando **PHP** como lenguaje del lado del servidor y **Ajax** para realizar consultas a la base de datos de forma asincrónica. La aplicación permite consultar y mostrar datos de un sistema de base de datos llamado **SistemaX** sin necesidad de recargar la página, mejorando la experiencia del usuario.

## Descripción

El objetivo de este proyecto es permitir que los usuarios realicen consultas sobre las tablas de la base de datos **SistemaX** desde una interfaz web. El sistema permite consultar información como la disponibilidad de productos, validación de nombres de usuario y otros ítems, con la ayuda de Ajax para actualizar los resultados de manera dinámica sin recargar la página.

### Funcionalidades principales:

- **Consultas SQL**: Ejecuta consultas SQL en una base de datos MySQL (SistemaX) usando PHP para obtener información de diferentes tablas.
- **Interfaz dinámica con Ajax**: Utiliza Ajax para realizar solicitudes al servidor de manera asincrónica y actualizar la interfaz de usuario sin recargar la página.
- **Validaciones en tiempo real**: Permite la validación de entradas, como el nombre de usuario y los productos, con respuestas inmediatas desde el servidor.

### Estructura de la aplicación:

- **Carpeta `usuarios`**: Contiene archivos PHP y JS para realizar la validación y consulta de los nombres de usuario.
- **Carpeta `productos`**: Contiene archivos PHP y JS para manejar la consulta de la disponibilidad de productos en la base de datos.
- **Carpeta `JS`**: Archivos JavaScript que gestionan las solicitudes Ajax.
- **Archivos PHP**: Scripts que gestionan la lógica del servidor, procesando las solicitudes y ejecutando consultas SQL.

### Requisitos:

- **XAMPP**: Instalar XAMPP para configurar el servidor local y la base de datos MySQL.
- **Editor de texto**: Se recomienda usar Sublime Text o cualquier editor de tu preferencia para desarrollar los archivos PHP y JS.

### Instalación:

1. **Clona el repositorio**:
   ```
   git clone https://github.com/tu_usuario/nombre-del-repositorio.git
   ```
2. **Instalar XAMPP**: Si no tienes XAMPP instalado, puedes descargarlo desde [aquí](https://www.apachefriends.org/index.html) e instalarlo.

3. **Configurar la base de datos**:
- Importa el archivo de base de datos `SistemaX.sql` (si está incluido) en tu servidor local MySQL.
- Asegúrate de que las credenciales de conexión a la base de datos estén correctamente configuradas en los archivos PHP.

4. **Abrir la aplicación**:
- Coloca el proyecto en la carpeta `htdocs` de XAMPP.
- Inicia Apache y MySQL desde el panel de control de XAMPP.
- Abre tu navegador y accede a `http://localhost/nombre-del-repositorio`.

### Resultados esperados:


### Tecnologías utilizadas:

- **PHP**: Lenguaje del lado del servidor para la gestión de solicitudes y consultas a la base de datos.
- **MySQL**: Sistema de gestión de bases de datos relacional para almacenar y consultar la información.
- **Ajax**: Para la comunicación asincrónica entre el cliente y el servidor.
- **JavaScript**: Para manejar la lógica de validaciones y actualizaciones dinámicas en la interfaz de usuario.
- **HTML/CSS**: Para la estructura y el diseño de la interfaz web.
