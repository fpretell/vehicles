# fpretell/vehicles

## Descripción

Esta es una aplicación que proporciona una api para geolocalización de vehículos desarrollado en Ruby on Rails.

Los puntos de referencia  recibidos a traves de esta API son procesados con un Framework de Procesamiento de Tareas en background.


## Requirements

Este proyecto actualmente trabaja con :

* Ruby 2.6.3
* Rails 5.2.3
* Sqlite3
* Active Job
* Delayed Job


## Instalación.

  1. Clonar el proyecto
      ```
      git clone https://github.com/fpretell/prueba.git
      ```
  2. Instalar Gemfile
      ```
      bundle install
      ```
  3. Crear databases (create y migrate)
      ```
      rake db:create
      rake db:migrate
      ```
  4. Iniciar worker/s
      ```
      bin/delayed_job start
      ```
  5. Iniciar Server Rails
      ```
      bin/delayed_job start
      ```

## End-points

  * /api/v1/gps

    Permite enviar puntos de referencia GPS asociados a un vehículo. El formato requerido es:

    ```
    {
      "latitude": 20.23,
      "longitude": -0.56,
      "sent_at": 2016-06-02 20:45:00",
      "vehicle_identifier": "HA-3452"
    }
    ```

  * /show

    Permite visualizar un mapa con las ubicaciones mas recientes de los vehiculos.
