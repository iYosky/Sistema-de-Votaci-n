Sistema de Votación


A continuación está el sistema de votación el cual posee todas las validaciones y puntos que se piden.


Instrucciones de Instalacion y explicación del mini proyecto:

Mover la carpeta votaciones dentro de Xampp o Wampp (mi caso Disco Local C / xampp / htdocs

- Correr Xampp o parecido para correr la base de datos y empezar el servicio de Apache y  MySQL
![image](https://user-images.githubusercontent.com/51267497/231355006-b1a7fc02-cbf2-4297-bd48-329bb0dcafcf.png)

- Abrir en el Navegador la siguiente URL: http://localhost/phpmyadmin/ 

- Importar la base de datos que se encuentra dentro de la carpeta votaciones /bdd 
![image](https://user-images.githubusercontent.com/51267497/231355624-d801a3f6-482b-479c-9e88-fc67265e2709.png)

- Una vez cargado se visualizarán todas las tablas creadas para el funcionamiento de la app y dentro sus respectivas columnas 
![image](https://user-images.githubusercontent.com/51267497/231355862-f3103d97-3021-456e-98f1-5d4c02ce6937.png)

- Para correr el proyecto acceder a la siguiente url http://localhost/votaciones/index.php donde se visualizaa el formulario 
![image](https://user-images.githubusercontent.com/51267497/231355965-cfa13353-72e5-424b-9413-6b8420efa3fc.png)

- El formulario valida todos los inputs y checkboxes requeridos a través de html5 y el checkbox se valida con javascript con un onsubmit y el rut duplicado se valida en php .
![image](https://user-images.githubusercontent.com/51267497/231356060-5ff5be2b-08dc-4588-9081-79754382ee8d.png)
![image](https://user-images.githubusercontent.com/51267497/231356175-567c4001-0ac9-4301-b150-29e4ba5d5bd3.png)
![image](https://user-images.githubusercontent.com/51267497/231356228-07202f23-fd86-4a56-bcf9-1977e23c17eb.png)
![image](https://user-images.githubusercontent.com/51267497/231356277-56139778-0966-4383-9ca1-63f8e6508a0f.png)
- el select está anidado, lo cual significa que una vez seleccionada una región se listarán las comunas de esa región previamente cargadas en la bd
![image](https://user-images.githubusercontent.com/51267497/231356474-1f0afe18-a011-4fad-a1aa-ab456c781a80.png)

- el formulario trae los pasados candidatos políticos desde la base de datos 
![image](https://user-images.githubusercontent.com/51267497/231356541-a0105d76-03d8-435f-9b17-ed321d0030c0.png)

- Finalmente si se envía sin los checkbox marcados salta un popup que avisa que mínimo dos son requeridos en caso que esté vacío o tenga 1 
![image](https://user-images.githubusercontent.com/51267497/231356754-dee68137-b00f-412a-a4cf-a9193897601a.png)

- Si el formulario se envía existosamente se mostrará un mensaje 
![image](https://user-images.githubusercontent.com/51267497/231356971-5c4fd8bc-cc13-42a9-bdcf-d96640a02158.png)
el cual posteriormente redirige nuevamente al formulario

- se guarda el formulario en la base de datos 
![image](https://user-images.githubusercontent.com/51267497/231357623-d61902be-6320-4760-8d89-b3a9bde680f8.png)


El codigo está comentado, posee explicaciones de qué hace cada script o archivo php, agregué un sencillo css para centrar todo y que quedara más ordenado.






