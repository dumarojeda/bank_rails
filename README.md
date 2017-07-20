# Bank Rails

Bank Rails es un app realizada en Ruby on Rails. Esta app permite gestionar a un administrador el manejo de clientes con datos basicos, crear cuentas a sus clientes, tarjetas debito asociadas a sus clientes y crear transferencias entre clientes.

## Credenciales

Para acceder y revisar el app puedes entrar en [heroku](https://young-eyrie-26989.herokuapp.com/)

  * Email: admin@example.com
  * Contraseña: 1q2w3e4r5t6y

### Clientes

Esta sección tiene los clientes que estan registrados en el banco, trae los datos basicos del cliente y adicionalmente por medio de las asociaciones se puede conocer la cantidad de tarjetas y cuentas que tiene el cliente.
#### Funcionalidad
  * Crear clientes
  * Listar clientes
  * Editar clientes
  * Eliminar clientes
#### Asociaciones
  * Un cliente tiene muchas cuentas
  * Un cliente tiene muchas tarjetas

### Cuentas
Esta sección tiene las cuentas que poseen los clientes del banco, tiene un numero de cuenta de 10 digitos que se crea aleatoriamente y el monto inicial, por medio de las asociaciones se puede saber a quien le pertenece la cuenta. Se pueden crear multiples cuentas para un mismo usuario.

#### Funcionalidad
  * Crear cuentas
  * Listar cuentas
  * Editar cuentas
  * Eliminar cuentas
#### Asociaciones
  * Una cuenta pertenece a un cliente
  * Una cuenta solo tiene una tarjeta debito

### Tarjetas
Esta sección tiene las tarjetas debito que poseen los clientes del banco, esta tarjeta esta ligada a una cuenta, por medio de las asociaciones se puede saber el numero de cuenta, el nombre del cliente y el saldo de la cuenta. No se puede crear mas de una tarjeta a una misma cuenta.
#### Funcionalidad
  * Crear tarjetas
  * Listar tarjetas
  * Eliminar tarjetas
#### Asociaciones
  * Una tarjeta pertenece a un cliente
  * Una tarjeta pertenece a una cuenta

### Transacciones
Esta sección tiene las transacciones bancarias del banco, la aplicacion solo permite transferencias, para hacer una transferencia se debe escoger la cuenta origen, la cuenta destino y el monto a transferir, no es posible transferir un valor que supere los fondos de la cuenta y tampoco se puede transferir dinero a la misma cuenta.
#### Funcionalidad
  * Crear transferencias
  * Listar transacciones

## Diseño de base de datos
Para desarrollar el software me base en el siguiente diseño de base de datos, para realizarlo me guie por las historias de usuario.
[image:https://raw.githubusercontent.com/dumarojeda/bank_rails/master/public/diseno_db.png]


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
  * Abrir en el navedador `http://localhost:8080` o ` http://0.0.0.0:8080`

