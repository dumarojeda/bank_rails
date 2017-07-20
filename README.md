# Bank Rails

Bank Rails es un app realizada en Ruby on Rails. Esta app permite gestionar a un administrador el manejo de clientes con datos basicos, crear cuentas a sus clientes, tarjetas debito asociadas a sus clientes y crear transferencias entre clientes.

## Credenciales

Para acceder y revisar el app puedes entrar en [heroku](https://young-eyrie-26989.herokuapp.com/)

Email: admin@example.com
Contraseña: 1q2w3e4r5t6y

## Como instalar en local
Para instalar el proyecto en local es necesario seguir los siguientes pasos:
  * Instalar Ruby en caso de que no se tenga instalado.
  * Instalar Postgresql
  * Clonar el repositorio `git clone git@github.com:dumarojeda/bank_rails.git`
  * Entrar al directorio del proyecto `cd bank_rails`
  * Instalar las gemas del proyecto `bundle install`
  * Crear la base de datos `rails db:create` Es necesario abrir Postgresql
  * Correr las migraciones `rails db:migrate`
  * Correr el servidor `rails s`
  * Abrir en el navedador `http://localhost:8080` o `http://0.0.0.0:8080`

### Contributing & Credit
  * Dumar Ojeda

