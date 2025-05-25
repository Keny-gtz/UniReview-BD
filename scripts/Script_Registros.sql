USE UniReview;
SELECT * FROM usuario;
SELECT * FROM escuela;
SELECT * FROM carrera;
SELECT * FROM publicacion;
SELECT * FROM ofertaeducativa;

-- CREACIÓN DE USUARIOS
-- Usuario #1
INSERT INTO usuario(idusuario, usu_nombre, usu_email, usu_telefono, usu_password, usu_fechaNacimiento, usu_foto_perfil)
VALUES (1, "María Luisa", "luisa.montesrmz@gmail.com", "8994232792", "mlmr2397P", "1997-11-08", "https://res.cloudinary.com/dnnna4gud/image/upload/v1747435914/blank-pp_e1sbed.webp");
-- Usuario #2
INSERT INTO usuario(idusuario, usu_nombre, usu_email, usu_telefono, usu_password, usu_fechaNacimiento, usu_foto_perfil)
VALUES (null, "Itzel Muñoz", "itzel.munoz@gmail.com", "899428933", "1234Pass", "2001-10-13", "https://res.cloudinary.com/dnnna4gud/image/upload/v1747435914/blank-pp_e1sbed.webp");
-- Usuario #3
INSERT INTO usuario(idusuario, usu_nombre, usu_email, usu_telefono, usu_password, usu_fechaNacimiento, usu_foto_perfil)
VALUES (null, 'Diego Angeles', 'jdiego@gmail.com', 7296400073, 'Diego456', '2002-06-03', "https://res.cloudinary.com/dnnna4gud/image/upload/v1747435914/blank-pp_e1sbed.webp");
-- Usuario #4
INSERT INTO usuario(idusuario, usu_nombre, usu_email, usu_telefono, usu_password, usu_fechaNacimiento, usu_foto_perfil)
VALUES (null, 'Raúl Ramírez', 'raulramirez.glez00@gmail.com', 3338227686, 'Raul321pas', '1999-07-10', "https://res.cloudinary.com/dnnna4gud/image/upload/v1747435914/blank-pp_e1sbed.webp");
-- Usuario #5
INSERT INTO usuario(idusuario, usu_nombre, usu_email, usu_telefono, usu_password, usu_fechaNacimiento, usu_foto_perfil)
VALUES (null, 'Kenya Gutierrez', 'kenya.gtz.n@gmail.com', 5533404343, 'Kenya789', '1999-09-22', "https://res.cloudinary.com/dnnna4gud/image/upload/v1747435914/blank-pp_e1sbed.webp");

-- CREACIÓN DE ESCUELAS
INSERT INTO escuela (idescuela, esc_nombre, esc_ubicacion, esc_enlace)
VALUES 
(null, 'Instituto Tecnológico de Reynosa', 'Reynosa, Tamaulipas', 'https://www.reynosa.tecnm.mx/'),
(null,'Centro de Investigación y de Estudios Avanzados del Instituto Politécnico Nacional', 'Ciudad de México', 'https://www.cinvestav.mx/'),
(null,'Universidad Nacional Autónoma de México', 'Ciudad de México', 'https://www.unam.mx/'),
(null,'Instituto Tecnológico de Tláhuac', 'Ciudad de México', 'https://tlahuac2.tecnm.mx/'),
(null,'Escuela Superior de Educación Física', 'Ciudad de México', 'https://www.aefcm.gob.mx/dgenam/ESEF/'), 
(null,'Enseñanza e Investigación Superior, A.C. (UNIVERSIDAD TECMILENIO)', 'Guadalajara, Jalisco', 'https://www.tecmilenio.mx/es'); 

-- CREACIÓN DE CARRERAS
-- Carrera #1
INSERT INTO carrera(idcarrera, carr_nombre, carr_evaluacion_prom)
VALUES (null, 'Ing. Tecnologías de la Información y Comunicaciones', 0);
-- Carrera #2
INSERT INTO carrera(idcarrera, carr_nombre, carr_evaluacion_prom)
VALUES (NULL, 'Ing. Telemática', 0);
-- Carrera #3
INSERT INTO carrera(idcarrera, carr_nombre, carr_evaluacion_prom)
VALUES (null, 'Lic. Educación Física', 0);
-- Carrera #4
INSERT INTO carrera(idcarrera, carr_nombre, carr_evaluacion_prom)
VALUES (null, 'Lic. Arquitectura', 0);
-- Carrera #5
INSERT INTO carrera(idcarrera, carr_nombre, carr_evaluacion_prom)
VALUES (null, 'Ing. Mecatrónica', 0);

-- CREACIÓN DE OFERTAS EDUCATIVAS
INSERT INTO ofertaEducativa(idoferta_educativa, idescuela_fk, idcarrera_fk, ofed_enlace)
VALUES
(null, 5, 5, "https://tecmilenio.mx/es/ingenieria-en-mecatronica"),
(null, 1, 1, "https://assets-solfit-app.s3.amazonaws.com/reynosa.tecnm.mx/sitio/site_drive/DriveFile_512_17181501686668e4186d639.pdf"),
(null, 2, 2, "https://www.upiita.ipn.mx/oferta-educativa/telematica"),
(null, 4, 3, "https://oferta.unam.mx/arquitectura.html"),
(null, 1, 4, "https://tlahuac2.tecnm.mx/oferta-educativa/tecnologias-informacion");

-- CREACIÓN DE COMENTARIOS
-- Comentario #1
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (null, 1, 1, 1, "2025-04-29", 
"La carrera puede resultar demandante, ya que abarca una amplia variedad de temas relacionados con las telecomunicaciones. Entre ellos se encuentran el estudio de señales AM y FM, antenas, conexión de redes y los distintos protocolos de Internet. Además, se incluyen asignaturas de programación, siempre orientadas al ámbito de las telecomunicaciones. 
Es importante mencionar que las matemáticas tienen un papel fundamental a lo largo de los cinco años de estudio, por lo que, si no existe afinidad por esta área, podría no ser la opción más adecuada. Asimismo, el conocimiento del idioma inglés representa una herramienta valiosa, ya que gran parte de los libros y referencias técnicas se encuentran en este idioma. Comprenderlo facilita el aprendizaje y la comprensión de los conceptos relacionados con las telecomunicaciones.", 
"Atención", "Egresada/o", 4);
-- Comentario #2
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (null, 2, 2, 2, "2025-03-25", 
"La carrera puede resultar demandante, ya que abarca una amplia variedad de temas relacionados con las telecomunicaciones. Entre ellos se encuentran el estudio de señales AM y FM, antenas, conexión de redes y los distintos protocolos de Internet. Además, se incluyen asignaturas de programación, siempre orientadas al ámbito de las telecomunicaciones. 
Es importante mencionar que las matemáticas tienen un papel fundamental a lo largo de los cinco años de estudio, por lo que, si no existe afinidad por esta área, podría no ser la opción más adecuada. Asimismo, el conocimiento del idioma inglés representa una herramienta valiosa, ya que gran parte de los libros y referencias técnicas se encuentran en este idioma. Comprenderlo facilita el aprendizaje y la comprensión de los conceptos relacionados con las telecomunicaciones.", 
"Retícula", "Egresada/o", 4);
-- Comentario #3
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (null, 3, 4, 3, "2025-03-03", 
"La carrera de arquitectura es muy buena, si te gusta la parte de las matemáticas, el diseño, los materiales, la creatividad y sobre todo un compromiso social. La arquitectura te da las herramientas para  crear espacios con un sentido de pertenencia y buscar las opciones más óptimas para hacerlo realidad.", 
"Experiencia personal", "Estudiante", 4);
-- Comentario #4
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (null, 5, 1, 4, "2025-02-22", 
"La carrera es buena, pues a lo largo de mi formación, el temario fue concreto. La experiencia fue muy enriquecedora porque te enfocan a desarrollar diferentes habilidades, aplicar conocimientos en problemas planteados de casos reales.", 
"Retícula", "Egresada/o", 4);
-- Comentario #5
INSERT INTO publicacion(idpublicacion, idUsuario_fk, idCarrera_fk, idescuela_fk, 
publi_fecha, publi_comentario, publi_etiqueta, publi_tipo_usuario, publi_calificacion)
VALUES (null, 4, 5, 5, "2025-02-12", 
"La carrera es muy buena, y las instalaciones que proporciona la universidad para ello, en ocasiones, son malas. Algunas partes de los laboratorios son inservibles, nunca llegué a usarlos en los 4 años que estudié ahí. Algunos profesores eran muy buenos y se les notaba que les gustaba enseñar, unos otros solo estaban ahí por compromiso y en ocasiones pareciese que no sabían lo que explicaban. Sí, recomiendo la carrera, más no la universidad.", 
"Retícula", "Egresada/o", 5);