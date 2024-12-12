# División Político-Administrativa de Chile en PostgreSQL

Este repositorio proporciona un script SQL para importar la división político-administrativa de Chile en una base de datos PostgreSQL. El script crea las tablas necesarias para almacenar información sobre regiones, provincias y comunas, estableciendo las relaciones correspondientes entre ellas.

## Contenido del Repositorio

- **`regiones_comunas_postgres.sql`**: Script SQL que crea las tablas `app_region`, `app_provincia` y `app_comuna`, y las llena con datos actualizados de las divisiones administrativas de Chile.

## Estructura de las Tablas y Relaciones

El script define las siguientes tablas con el prefijo `app_` para evitar conflictos con otras tablas existentes:

1. **`app_region`**: Almacena las regiones de Chile.
   - **Campos**: `id` (clave primaria), `nombre` (nombre de la región).
2. **`app_provincia`**: Contiene las provincias, cada una asociada a una región.
   - **Campos**: `id` (clave primaria), `nombre` (nombre de la provincia), `region_id` (clave foránea que referencia a `app_region`).
3. **`app_comuna`**: Incluye las comunas, cada una asociada a una provincia y una región.
   - **Campos**: `id` (clave primaria), `nombre` (nombre de la comuna), `provincia_id` (clave foránea que referencia a `app_provincia`), `region_id` (clave foránea que referencia a `app_region`).

Las relaciones entre estas tablas reflejan la estructura jerárquica de la división territorial de Chile:

- **Región**: Nivel superior de la división territorial.
- **Provincia**: Subdivisión de una región. Cada provincia está asociada a una región específica.
- **Comuna**: Subdivisión de una provincia. Cada comuna está asociada tanto a una provincia como a una región.

## Instrucciones de Uso

Para utilizar este script en tu base de datos PostgreSQL, sigue estos pasos:

1. **Requisitos Previos**:
   - Instalar [PostgreSQL](https://www.postgresql.org/download/).
   - Instalar [pgAdmin](https://www.pgadmin.org/download/) u otra herramienta de administración de PostgreSQL.

2. **Importación del Script**:
   - Abre pgAdmin y conéctate a tu servidor PostgreSQL.
   - Crea una nueva base de datos o selecciona una existente donde desees importar los datos.
   - Haz clic derecho en la base de datos seleccionada, elige "Query Tool" y carga el contenido del archivo `regiones_comunas_postgres.sql`.
   - Ejecuta el script para crear las tablas y cargar los datos.

3. **Verificación de Datos**:
   - Después de ejecutar el script, puedes verificar que las tablas se hayan creado correctamente y que contengan los datos esperados ejecutando consultas como:
     ```sql
     SELECT * FROM app_region;
     SELECT * FROM app_provincia;
     SELECT * FROM app_comuna;
     ```

## Ejemplos de Consultas

- **Obtener todas las comunas de una región específica**:
  ```sql
  SELECT c.nombre AS comuna
  FROM app_comuna c
  JOIN app_provincia p ON c.provincia_id = p.id
  JOIN app_region r ON c.region_id = r.id
  WHERE r.nombre = 'Nombre de la Región';

- **Listar las provincias y sus respectivas comunas**:
  ```sql
  SELECT p.nombre AS provincia, c.nombre AS comuna
  FROM app_provincia p
  JOIN app_comuna c ON c.provincia_id = p.id
  ORDER BY p.nombre, c.nombre;
