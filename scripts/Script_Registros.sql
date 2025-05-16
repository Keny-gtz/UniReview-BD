USE UniReview;
SELECT * FROM usuario;
SELECT * FROM escuela;
SELECT * FROM carrera;
SELECT * FROM publicacion;
SELECT * FROM ofertaEducativa;

-- Creación de Usuarios
INSERT INTO usuario(idusuario, usu_nombre, usu_email, usu_telefono, usu_password, usu_fechaNacimiento, usu_foto_perfil)
VALUES (1, "María Luisa", "luisa.montesrmz@gmail.com", "8994232792", "mlmr2397P", "1997-11-08", "https://res.cloudinary.com/dnnna4gud/image/upload/v1747420256/y5gsqo910wulockrr6ya.jpg");

-- Creación de Escuelas
INSERT INTO escuela(idescuela, esc_nombre, esc_estado, esc_enlace)
VALUES (1, "Instituto Tecnológico de Reynosa", "Tamaulipas", "https://www.reynosa.tecnm.mx/");

-- Creación de Carreras
INSERT INTO carrera(idcarrera, carr_nombre, carr_evaluacion_prom)
VALUES (1, "Ing. Tecnologías de la Información y Comunicaciones", 8);

-- Creacion Ofertas Educativas
INSERT INTO ofertaEducativa(idoferta_educativa, idescuela_fk, idcarrera_fk, ofed_enlace)
VALUES (1, 1, 1, "https://assets-solfit-app.s3.amazonaws.com/reynosa.tecnm.mx/sitio/site_drive/DriveFile_512_17181501686668e4186d639.pdf");


-- Creacion de Comentarios
-- #1
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (1, 1, 1, 1, "2025-04-29", 
"La carrera puede resultar demandante, ya que abarca una amplia variedad de temas relacionados con las telecomunicaciones. Entre ellos se encuentran el estudio de señales AM y FM, antenas, conexión de redes y los distintos protocolos de Internet. Además, se incluyen asignaturas de programación, siempre orientadas al ámbito de las telecomunicaciones. 
Es importante mencionar que las matemáticas tienen un papel fundamental a lo largo de los cinco años de estudio, por lo que, si no existe afinidad por esta área, podría no ser la opción más adecuada. Asimismo, el conocimiento del idioma inglés representa una herramienta valiosa, ya que gran parte de los libros y referencias técnicas se encuentran en este idioma. Comprenderlo facilita el aprendizaje y la comprensión de los conceptos relacionados con las telecomunicaciones.", "Atención", "Egresada", 4);
-- #2
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (2, 2, 2, 2, "2025-03-25", 
"La carrera puede resultar demandante, ya que abarca una amplia variedad de temas relacionados con las telecomunicaciones. Entre ellos se encuentran el estudio de señales AM y FM, antenas, conexión de redes y los distintos protocolos de Internet. Además, se incluyen asignaturas de programación, siempre orientadas al ámbito de las telecomunicaciones. 
Es importante mencionar que las matemáticas tienen un papel fundamental a lo largo de los cinco años de estudio, por lo que, si no existe afinidad por esta área, podría no ser la opción más adecuada. Asimismo, el conocimiento del idioma inglés representa una herramienta valiosa, ya que gran parte de los libros y referencias técnicas se encuentran en este idioma. Comprenderlo facilita el aprendizaje y la comprensión de los conceptos relacionados con las telecomunicaciones.", "Retícula", "Egresada", 4);