INSERT INTO
    dbscc.regiones (
        nombre,
        created_at,
        updated_at
    )
VALUES ('Amazonas', NULL, NULL),
    ('Áncash', NULL, NULL),
    ('Apurímac', NULL, NULL),
    ('Arequipa', NULL, NULL),
    ('Ayacucho', NULL, NULL),
    ('Cajamarca', NULL, NULL),
    ('Callao', NULL, NULL),
    ('Cusco', NULL, NULL),
    ('Huancavelica', NULL, NULL),
    ('Huánuco', NULL, NULL),
    ('Ica', NULL, NULL),
    ('Junín', NULL, NULL),
    ('La Libertad', NULL, NULL),
    ('Lambayeque', NULL, NULL),
    ('Lima', NULL, NULL),
    ('Loreto', NULL, NULL),
    ('Madre de Dios', NULL, NULL),
    ('Moquegua', NULL, NULL),
    ('Pasco', NULL, NULL),
    ('Piura', NULL, NULL),
    ('Puno', NULL, NULL),
    ('San Martín', NULL, NULL),
    ('Tacna', NULL, NULL),
    ('Tumbes', NULL, NULL),
    ('Ucayali', NULL, NULL);

INSERT INTO
    dbscc.provincias (
        nombre_provincia,
        id_regiones,
        created_at,
        updated_at
    )
VALUES ('Chachapoyas', 1, NULL, NULL),
    ('Bagua', 1, NULL, NULL),
    ('Bongará', 1, NULL, NULL),
    ('Condorcanqui', 1, NULL, NULL),
    ('Luya', 1, NULL, NULL),
    (
        'Rodríguez de Mendoza',
        1,
        NULL,
        NULL
    ),
    ('Utcubamba', 1, NULL, NULL),
    ('Huaraz', 2, NULL, NULL),
    ('Aija', 2, NULL, NULL),
    (
        'Antonio Raymondi',
        2,
        NULL,
        NULL
    ),
    ('Asunción', 2, NULL, NULL),
    ('Bolognesi', 2, NULL, NULL),
    ('Carhuaz', 2, NULL, NULL),
    (
        'Carlos Fermín Fitzcarrald',
        2,
        NULL,
        NULL
    ),
    ('Casma', 2, NULL, NULL),
    ('Corongo', 2, NULL, NULL),
    ('Huari', 2, NULL, NULL),
    ('Huarmey', 2, NULL, NULL),
    ('Huaylas', 2, NULL, NULL),
    (
        'Mariscal Luzuriaga',
        2,
        NULL,
        NULL
    ),
    ('Ocros', 2, NULL, NULL),
    ('Pallasca', 2, NULL, NULL),
    ('Pomabamba', 2, NULL, NULL),
    ('Recuay', 2, NULL, NULL),
    ('Santa', 2, NULL, NULL),
    ('Sihuas', 2, NULL, NULL),
    ('Yungay', 2, NULL, NULL),
    ('Abancay', 3, NULL, NULL),
    ('Andahuaylas', 3, NULL, NULL),
    ('Antabamba', 3, NULL, NULL),
    ('Aymaraes', 3, NULL, NULL),
    ('Cotabambas', 3, NULL, NULL),
    ('Chincheros', 3, NULL, NULL),
    ('Grau', 3, NULL, NULL),
    ('Arequipa', 4, NULL, NULL),
    ('Camaná', 4, NULL, NULL),
    ('Caravelí', 4, NULL, NULL),
    ('Castilla', 4, NULL, NULL),
    ('Caylloma', 4, NULL, NULL),
    ('Condesuyos', 4, NULL, NULL),
    ('Islay', 4, NULL, NULL),
    ('La Uniòn', 4, NULL, NULL),
    ('Huamanga', 5, NULL, NULL),
    ('Cangallo', 5, NULL, NULL),
    (
        'Huanca Sancos',
        5,
        NULL,
        NULL
    ),
    ('Huanta', 5, NULL, NULL),
    ('La Mar', 5, NULL, NULL),
    ('Lucanas', 5, NULL, NULL),
    ('Parinacochas', 5, NULL, NULL),
    (
        'Pàucar del Sara Sara',
        5,
        NULL,
        NULL
    ),
    ('Sucre', 5, NULL, NULL),
    (
        'Víctor Fajardo',
        5,
        NULL,
        NULL
    ),
    (
        'Vilcas Huamán',
        5,
        NULL,
        NULL
    ),
    ('Cajamarca', 6, NULL, NULL),
    ('Cajabamba', 6, NULL, NULL),
    ('Celendín', 6, NULL, NULL),
    ('Chota', 6, NULL, NULL),
    ('Contumazá', 6, NULL, NULL),
    ('Cutervo', 6, NULL, NULL),
    ('Hualgayoc', 6, NULL, NULL),
    ('Jaén', 6, NULL, NULL),
    ('San Ignacio', 6, NULL, NULL),
    ('San Marcos', 6, NULL, NULL),
    ('San Miguel', 6, NULL, NULL),
    ('San Pablo', 6, NULL, NULL),
    ('Santa Cruz', 6, NULL, NULL),
    (
        'Prov. Const. del Callao',
        7,
        NULL,
        NULL
    ),
    ('Cusco', 8, NULL, NULL),
    ('Acomayo', 8, NULL, NULL),
    ('Anta', 8, NULL, NULL), ('Calca', 8, NULL, NULL),
    ('Canas', 8, NULL, NULL),
    ('Canchis', 8, NULL, NULL),
    ('Chumbivilcas', 8, NULL, NULL),
    ('Espinar', 8, NULL, NULL),
    (
        'La Convención',
        8,
        NULL,
        NULL
    ),
    ('Paruro', 8, NULL, NULL),
    ('Paucartambo', 8, NULL, NULL),
    ('Quispicanchi', 8, NULL, NULL),
    ('Urubamba', 8, NULL, NULL), ('Huancavelica', 9, NULL, NULL),
    ('Acobamba', 9, NULL, NULL),
    ('Angaraes', 9, NULL, NULL),
    (
        'Castrovirreyna',
        9,
        NULL,
        NULL
    ),
    ('Churcampa', 9, NULL, NULL),
    ('Huaytará', 9, NULL, NULL),
    ('Tayacaja', 9, NULL, NULL),
    ('Huánuco', 10, NULL, NULL),
    ('Ambo', 10, NULL, NULL),
    ('Dos de Mayo', 10, NULL, NULL), ('Huacaybamba', 10, NULL, NULL),
    ('Huamalíes', 10, NULL, NULL),
    (
        'Leoncio Prado',
        10,
        NULL,
        NULL
    ),
    ('Marañón', 10, NULL, NULL),
    ('Pachitea', 10, NULL, NULL),
    ('Puerto Inca', 10, NULL, NULL),
    ('Lauricocha ', 10, NULL, NULL),
    ('Yarowilca ', 10, NULL, NULL),
    ('Ica ', 11, NULL, NULL),
    ('Chincha ', 11, NULL, NULL), ('Nasca ', 11, NULL, NULL),
    ('Palpa ', 11, NULL, NULL),
    ('Pisco ', 11, NULL, NULL),
    ('Huancayo ', 12, NULL, NULL),
    ('Concepción ', 12, NULL, NULL),
    (
        'Chanchamayo ',
        12,
        NULL,
        NULL
    ),
    ('Jauja ', 12, NULL, NULL),
    ('Junín ', 12, NULL, NULL),
    ('Satipo ', 12, NULL, NULL),
    ('Tarma ', 12, NULL, NULL), ('Yauli ', 12, NULL, NULL),
    ('Chupaca ', 12, NULL, NULL),
    ('Trujillo ', 13, NULL, NULL),
    ('Ascope ', 13, NULL, NULL),
    ('Bolívar ', 13, NULL, NULL),
    ('Chepén ', 13, NULL, NULL),
    ('Julcán ', 13, NULL, NULL),
    ('Otuzco ', 13, NULL, NULL),
    ('Pacasmayo ', 13, NULL, NULL),
    ('Pataz ', 13, NULL, NULL), (
        'Sánchez Carrión ',
        13,
        NULL,
        NULL
    ),
    (
        'Santiago de Chuco ',
        13,
        NULL,
        NULL
    ),
    ('Gran Chimú ', 13, NULL, NULL),
    ('Virú ', 13, NULL, NULL),
    ('Chiclayo ', 14, NULL, NULL),
    ('Ferreñafe ', 14, NULL, NULL),
    ('Lambayeque ', 14, NULL, NULL),
    ('Lima ', 15, NULL, NULL),
    ('Barranca ', 15, NULL, NULL),
    ('Cajatambo ', 15, NULL, NULL), ('Canta ', 15, NULL, NULL),
    ('Cañete ', 15, NULL, NULL),
    ('Huaral ', 15, NULL, NULL),
    ('Huarochirí ', 15, NULL, NULL),
    ('Huaura ', 15, NULL, NULL),
    ('Oyón ', 15, NULL, NULL),
    ('Yauyos ', 15, NULL, NULL),
    ('Maynas ', 16, NULL, NULL),
    (
        'Alto Amazonas ',
        16,
        NULL,
        NULL
    ),
    ('Loreto ', 16, NULL, NULL), (
        'Mariscal Ramón Castilla ',
        16,
        NULL,
        NULL
    ),
    ('Requena ', 16, NULL, NULL),
    ('Ucayali ', 16, NULL, NULL),
    (
        'Datem del Marañón ',
        16,
        NULL,
        NULL
    ),
    ('Putumayo', 16, NULL, NULL),
    ('Tambopata ', 17, NULL, NULL),
    ('Manu ', 17, NULL, NULL),
    ('Tahuamanu ', 17, NULL, NULL),
    (
        'Mariscal Nieto ',
        18,
        NULL,
        NULL
    ),
    (
        'General Sánchez Cerro ',
        18,
        NULL,
        NULL
    ), ('Ilo ', 18, NULL, NULL),
    ('Pasco ', 19, NULL, NULL),
    (
        'Daniel Alcides Carrión ',
        19,
        NULL,
        NULL
    ),
    ('Oxapampa ', 19, NULL, NULL),
    ('Piura ', 20, NULL, NULL),
    ('Ayabaca ', 20, NULL, NULL),
    (
        'Huancabamba ',
        20,
        NULL,
        NULL
    ),
    ('Morropón ', 20, NULL, NULL),
    ('Paita ', 20, NULL, NULL),
    ('Sullana ', 20, NULL, NULL), ('Talara ', 20, NULL, NULL),
    ('Sechura ', 20, NULL, NULL),
    ('Puno ', 21, NULL, NULL),
    ('Azángaro ', 21, NULL, NULL),
    ('Carabaya ', 21, NULL, NULL),
    ('Chucuito ', 21, NULL, NULL),
    ('El Collao ', 21, NULL, NULL),
    ('Huancané ', 21, NULL, NULL),
    ('Lampa ', 21, NULL, NULL),
    ('Melgar ', 21, NULL, NULL), ('Moho ', 21, NULL, NULL),
    (
        'San Antonio de Putina ',
        21,
        NULL,
        NULL
    ),
    ('San Román ', 21, NULL, NULL),
    ('Sandia ', 21, NULL, NULL),
    ('Yunguyo ', 21, NULL, NULL),
    ('Moyobamba ', 22, NULL, NULL),
    ('Bellavista ', 22, NULL, NULL),
    ('El Dorado ', 22, NULL, NULL),
    ('Huallaga ', 22, NULL, NULL),
    ('Lamas ', 22, NULL, NULL), (
        'Mariscal Cáceres ',
        22,
        NULL,
        NULL
    ),
    ('Picota ', 22, NULL, NULL),
    ('Rioja ', 22, NULL, NULL),
    ('San Martín ', 22, NULL, NULL),
    ('Tocache ', 22, NULL, NULL),
    ('Tacna ', 23, NULL, NULL),
    ('Candarave ', 23, NULL, NULL),
    (
        'Jorge Basadre ',
        23,
        NULL,
        NULL
    ),
    ('Tarata ', 23, NULL, NULL),
    ('Tumbes ', 24, NULL, NULL), (
        'Contralmirante Villar ',
        24,
        NULL,
        NULL
    ),
    ('Zarumilla ', 24, NULL, NULL),
    (
        'Coronel Portillo ',
        25,
        NULL,
        NULL
    ),
    ('Atalaya ', 25, NULL, NULL),
    ('Padre Abad ', 25, NULL, NULL),
    ('Purús', 25, NULL, NULL);


INSERT INTO
    dbscc.distritos (
        nombre_distrito,
        id_provincias,
        id_regiones,
        created_at,
        updated_at
    )
VALUES (
        'Chachapoyas',
        1,
        1,
        NULL,
        NULL
    ),
    ('Asunción', 1, 1, NULL, NULL),
    ('Balsas', 1, 1, NULL, NULL),
    ('Cheto', 1, 1, NULL, NULL),
    ('Chiliquin', 1, 1, NULL, NULL),
    (
        'Chuquibamba',
        1,
        1,
        NULL,
        NULL
    ),
    ('Granada', 1, 1, NULL, NULL),
    ('Huancas', 1, 1, NULL, NULL),
    ('La Jalca', 1, 1, NULL, NULL),
    (
        'Leimebamba',
        1,
        1,
        NULL,
        NULL
    ),
    ('Levanto', 1, 1, NULL, NULL),
    ('Magdalena', 1, 1, NULL, NULL),
    (
        'Mariscal Castilla',
        1,
        1,
        NULL,
        NULL
    ),
    (
        'Molinopampa',
        1,
        1,
        NULL,
        NULL
    ),
    (
        'Montevideo',
        1,
        1,
        NULL,
        NULL
    ),
    ('Olleros', 1, 1, NULL, NULL),
    ('Quinjalca', 1, 1, NULL, NULL),
    (
        'San Francisco de Daguas',
        1,
        1,
        NULL,
        NULL
    ),
    (
        'San Isidro de Maino',
        1,
        1,
        NULL,
        NULL
    ),
    ('Soloco', 1, 1, NULL, NULL),
    ('Sonche', 1, 1, NULL, NULL),
    ('Bagua', 2, 1, NULL, NULL),
    ('Aramango', 2, 1, NULL, NULL),
    ('Copallin', 2, 1, NULL, NULL),
    ('El Parco', 2, 1, NULL, NULL),
    ('Imaza', 2, 1, NULL, NULL),
    ('La Peca', 2, 1, NULL, NULL),
    ('Jumbilla', 3, 1, NULL, NULL),
    (
        'Chisquilla',
        3,
        1,
        NULL,
        NULL
    ),
    ('Churuja', 3, 1, NULL, NULL),
    ('Corosha', 3, 1, NULL, NULL),
    ('Cuispes', 3, 1, NULL, NULL),
    ('Florida', 3, 1, NULL, NULL),
    ('Jazan', 3, 1, NULL, NULL),
    ('Recta', 3, 1, NULL, NULL),
    (
        'San Carlos',
        3,
        1,
        NULL,
        NULL
    ),
    (
        'Shipasbamba',
        3,
        1,
        NULL,
        NULL
    ),
    ('Valera', 3, 1, NULL, NULL),
    (
        'Yambrasbamba',
        3,
        1,
        NULL,
        NULL
    ),
    ('Nieva', 4, 1, NULL, NULL),
    ('El Cenepa', 4, 1, NULL, NULL),
    (
        'Río Santiago',
        4,
        1,
        NULL,
        NULL
    ),
    ('Lamud', 5, 1, NULL, NULL),
    (
        'Camporredondo',
        5,
        1,
        NULL,
        NULL
    ),
    ('Cocabamba', 5, 1, NULL, NULL),
    ('Colcamar', 5, 1, NULL, NULL),
    ('Conila', 5, 1, NULL, NULL),
    (
        'Inguilpata',
        5,
        1,
        NULL,
        NULL
    ),
    ('Longuita', 5, 1, NULL, NULL),
    (
        'Lonya Chico',
        5,
        1,
        NULL,
        NULL
    ),
    ('Luya', 5, 1, NULL, NULL),
    (
        'Luya Viejo',
        5,
        1,
        NULL,
        NULL
    ),
    ('María', 5, 1, NULL, NULL),
    ('Ocalli', 5, 1, NULL, NULL),
    ('Ocumal', 5, 1, NULL, NULL),
    ('Pisuquia', 5, 1, NULL, NULL),
    (
        'Providencia',
        5,
        1,
        NULL,
        NULL
    ),
    (
        'San Cristóbal',
        5,
        1,
        NULL,
        NULL
    ),
    (
        'San Francisco de Yeso',
        5,
        1,
        NULL,
        NULL
    ),
    (
        'San Jerónimo',
        5,
        1,
        NULL,
        NULL
    ),
    (
        'San Juan de Lopecancha',
        5,
        1,
        NULL,
        NULL
    ),
    (
        'Santa Catalina',
        5,
        1,
        NULL,
        NULL
    ),
    (
        'Santo Tomas',
        5,
        1,
        NULL,
        NULL
    ),
    ('Tingo', 5, 1, NULL, NULL),
    ('Trita', 5, 1, NULL, NULL),
    (
        'San Nicolás',
        6,
        1,
        NULL,
        NULL
    ),
    ('Chirimoto', 6, 1, NULL, NULL),
    ('Cochamal', 6, 1, NULL, NULL),
    ('Huambo', 6, 1, NULL, NULL),
    ('Limabamba', 6, 1, NULL, NULL),
    ('Longar', 6, 1, NULL, NULL),
    (
        'Mariscal Benavides',
        6,
        1,
        NULL,
        NULL
    ),
    ('Milpuc', 6, 1, NULL, NULL),
    ('Omia', 6, 1, NULL, NULL),
    (
        'Santa Rosa',
        6,
        1,
        NULL,
        NULL
    ),
    ('Totora', 6, 1, NULL, NULL),
    (
        'Vista Alegre',
        6,
        1,
        NULL,
        NULL
    ),
    (
        'Bagua Grande',
        7,
        1,
        NULL,
        NULL
    ),
    ('Cajaruro', 7, 1, NULL, NULL),
    ('Cumba', 7, 1, NULL, NULL),
    (
        'El Milagro',
        7,
        1,
        NULL,
        NULL
    ),
    ('Jamalca', 7, 1, NULL, NULL),
    (
        'Lonya Grande',
        7,
        1,
        NULL,
        NULL
    ),
    ('Yamon', 7, 1, NULL, NULL),
    ('Huaraz', 8, 2, NULL, NULL),
    (
        'Cochabamba',
        8,
        2,
        NULL,
        NULL
    ),
    (
        'Colcabamba',
        8,
        2,
        NULL,
        NULL
    ),
    ('Huanchay', 8, 2, NULL, NULL),
    (
        'Independencia',
        8,
        2,
        NULL,
        NULL
    ),
    ('Jangas', 8, 2, NULL, NULL),
    (
        'La Libertad',
        8,
        2,
        NULL,
        NULL
    ),
    ('Olleros', 8, 2, NULL, NULL),
    (
        'Pampas Grande',
        8,
        2,
        NULL,
        NULL
    ),
    ('Pariacoto', 8, 2, NULL, NULL),
    ('Pira', 8, 2, NULL, NULL),
    ('Tarica', 8, 2, NULL, NULL),
    ('Aija', 9, 2, NULL, NULL),
    ('Coris', 9, 2, NULL, NULL),
    ('Huacllan', 9, 2, NULL, NULL),
    ('La Merced', 9, 2, NULL, NULL),
    ('Succha', 9, 2, NULL, NULL),
    (
        'Llamellin',
        10,
        2,
        NULL,
        NULL
    ),
    ('Aczo', 10, 2, NULL, NULL),
    ('Chaccho', 10, 2, NULL, NULL),
    ('Chingas', 10, 2, NULL, NULL),
    ('Mirgas', 10, 2, NULL, NULL),
    (
        'San Juan de Rontoy',
        10,
        2,
        NULL,
        NULL
    ),
    ('Chacas', 11, 2, NULL, NULL),
    ('Acochaca', 11, 2, NULL, NULL),
    ('Chiquian', 12, 2, NULL, NULL),
    (
        'Abelardo Pardo Lezameta',
        12,
        2,
        NULL,
        NULL
    ),
    (
        'Antonio Raymondi',
        12,
        2,
        NULL,
        NULL
    ),
    ('Aquia', 12, 2, NULL, NULL),
    ('Cajacay', 12, 2, NULL, NULL),
    ('Canis', 12, 2, NULL, NULL),
    ('Colquioc', 12, 2, NULL, NULL),
    (
        'Huallanca',
        12,
        2,
        NULL,
        NULL
    ),
    ('Huasta', 12, 2, NULL, NULL),
    (
        'Huayllacayan',
        12,
        2,
        NULL,
        NULL
    ),
    (
        'La Primavera',
        12,
        2,
        NULL,
        NULL
    ),
    ('Mangas', 12, 2, NULL, NULL),
    ('Pacllon', 12, 2, NULL, NULL),
    (
        'San Miguel de Corpanqui',
        12,
        2,
        NULL,
        NULL
    ),
    ('Ticllos', 12, 2, NULL, NULL),
    ('Carhuaz', 13, 2, NULL, NULL),
    ('Acopampa', 13, 2, NULL, NULL),
    ('Amashca', 13, 2, NULL, NULL),
    ('Anta', 13, 2, NULL, NULL),
    ('Ataquero', 13, 2, NULL, NULL),
    ('Marcara', 13, 2, NULL, NULL),
    (
        'Pariahuanca',
        13,
        2,
        NULL,
        NULL
    ),
    (
        'San Miguel de Aco',
        13,
        2,
        NULL,
        NULL
    ),
    ('Shilla', 13, 2, NULL, NULL),
    ('Tinco', 13, 2, NULL, NULL),
    ('Yungar', 13, 2, NULL, NULL),
    ('San Luis', 14, 2, NULL, NULL),
    (
        'San Nicolás',
        14,
        2,
        NULL,
        NULL
    ),
    ('Yauya', 14, 2, NULL, NULL),
    ('Casma', 15, 2, NULL, NULL),
    (
        'Buena Vista Alta',
        15,
        2,
        NULL,
        NULL
    ),
    (
        'Comandante Noel',
        15,
        2,
        NULL,
        NULL
    ),
    ('Yautan', 15, 2, NULL, NULL),
    ('Corongo', 16, 2, NULL, NULL),
    ('Aco', 16, 2, NULL, NULL),
    ('Bambas', 16, 2, NULL, NULL),
    ('Cusca', 16, 2, NULL, NULL),
    ('La Pampa', 16, 2, NULL, NULL),
    ('Yanac', 16, 2, NULL, NULL),
    ('Yupan', 16, 2, NULL, NULL),
    ('Huari', 17, 2, NULL, NULL),
    ('Anra', 17, 2, NULL, NULL),
    ('Cajay', 17, 2, NULL, NULL),
    (
        'Chavin de Huantar',
        17,
        2,
        NULL,
        NULL
    ),
    ('Huacachi', 17, 2, NULL, NULL),
    ('Huacchis', 17, 2, NULL, NULL),
    ('Huachis', 17, 2, NULL, NULL),
    ('Huantar', 17, 2, NULL, NULL),
    ('Masin', 17, 2, NULL, NULL),
    ('Paucas', 17, 2, NULL, NULL),
    ('Ponto', 17, 2, NULL, NULL),
    (
        'Rahuapampa',
        17,
        2,
        NULL,
        NULL
    ),
    ('Rapayan', 17, 2, NULL, NULL),
    (
        'San Marcos',
        17,
        2,
        NULL,
        NULL
    ),
    (
        'San Pedro de Chana',
        17,
        2,
        NULL,
        NULL
    ),
    ('Uco', 17, 2, NULL, NULL),
    ('Huarmey', 18, 2, NULL, NULL),
    (
        'Cochapeti',
        18,
        2,
        NULL,
        NULL
    ),
    ('Culebras', 18, 2, NULL, NULL),
    ('Huayan', 18, 2, NULL, NULL),
    ('Malvas', 18, 2, NULL, NULL),
    ('Caraz', 19, 2, NULL, NULL),
    (
        'Huallanca',
        19,
        2,
        NULL,
        NULL
    ),
    ('Huata', 19, 2, NULL, NULL),
    ('Huaylas', 19, 2, NULL, NULL),
    ('Mato', 19, 2, NULL, NULL),
    (
        'Pamparomas',
        19,
        2,
        NULL,
        NULL
    ),
    (
        'Pueblo Libre',
        19,
        2,
        NULL,
        NULL
    ),
    (
        'Santa Cruz',
        19,
        2,
        NULL,
        NULL
    ),
    (
        'Santo Toribio',
        19,
        2,
        NULL,
        NULL
    ),
    (
        'Yuracmarca',
        19,
        2,
        NULL,
        NULL
    ),
    (
        'Piscobamba',
        20,
        2,
        NULL,
        NULL
    ),
    ('Casca', 20, 2, NULL, NULL),
    (
        'Eleazar Guzmán Barron',
        20,
        2,
        NULL,
        NULL
    ),
    (
        'Fidel Olivas Escudero',
        20,
        2,
        NULL,
        NULL
    ),
    ('Llama', 20, 2, NULL, NULL),
    ('Llumpa', 20, 2, NULL, NULL),
    ('Lucma', 20, 2, NULL, NULL),
    ('Musga', 20, 2, NULL, NULL),
    ('Ocros', 21, 2, NULL, NULL),
    ('Acas', 21, 2, NULL, NULL),
    (
        'Cajamarquilla',
        21,
        2,
        NULL,
        NULL
    ),
    (
        'Carhuapampa',
        21,
        2,
        NULL,
        NULL
    ),
    ('Cochas', 21, 2, NULL, NULL),
    ('Congas', 21, 2, NULL, NULL),
    ('Llipa', 21, 2, NULL, NULL),
    (
        'San Cristóbal de Rajan',
        21,
        2,
        NULL,
        NULL
    ),
    (
        'San Pedro',
        21,
        2,
        NULL,
        NULL
    ),
    (
        'Santiago de Chilcas',
        21,
        2,
        NULL,
        NULL
    ),
    ('Cabana', 22, 2, NULL, NULL),
    (
        'Bolognesi',
        22,
        2,
        NULL,
        NULL
    ),
    (
        'Conchucos',
        22,
        2,
        NULL,
        NULL
    ),
    (
        'Huacaschuque',
        22,
        2,
        NULL,
        NULL
    ),
    (
        'Huandoval',
        22,
        2,
        NULL,
        NULL
    ),
    (
        'Lacabamba',
        22,
        2,
        NULL,
        NULL
    ),
    ('Llapo', 22, 2, NULL, NULL),
    ('Pallasca', 22, 2, NULL, NULL),
    ('Pampas', 22, 2, NULL, NULL),
    (
        'Santa Rosa',
        22,
        2,
        NULL,
        NULL
    ),
    ('Tauca', 22, 2, NULL, NULL),
    (
        'Pomabamba',
        23,
        2,
        NULL,
        NULL
    ),
    ('Huayllan', 23, 2, NULL, NULL),
    (
        'Parobamba',
        23,
        2,
        NULL,
        NULL
    ),
    (
        'Quinuabamba',
        23,
        2,
        NULL,
        NULL
    ),
    ('Recuay', 24, 2, NULL, NULL),
    ('Catac', 24, 2, NULL, NULL),
    (
        'Cotaparaco',
        24,
        2,
        NULL,
        NULL
    ),
    (
        'Huayllapampa',
        24,
        2,
        NULL,
        NULL
    ),
    ('Llacllin', 24, 2, NULL, NULL),
    ('Marca', 24, 2, NULL, NULL),
    (
        'Pampas Chico',
        24,
        2,
        NULL,
        NULL
    ),
    ('Pararin', 24, 2, NULL, NULL),
    (
        'Tapacocha',
        24,
        2,
        NULL,
        NULL
    ),
    (
        'Ticapampa',
        24,
        2,
        NULL,
        NULL
    ),
    ('Chimbote', 25, 2, NULL, NULL),
    (
        'Cáceres del Perú',
        25,
        2,
        NULL,
        NULL
    ),
    ('Coishco', 25, 2, NULL, NULL),
    ('Macate', 25, 2, NULL, NULL),
    ('Moro', 25, 2, NULL, NULL),
    ('Nepeña', 25, 2, NULL, NULL),
    ('Samanco', 25, 2, NULL, NULL),
    ('Santa', 25, 2, NULL, NULL),
    (
        'Nuevo Chimbote',
        25,
        2,
        NULL,
        NULL
    ),
    ('Sihuas', 26, 2, NULL, NULL),
    ('Acobamba', 26, 2, NULL, NULL),
    (
        'Alfonso Ugarte',
        26,
        2,
        NULL,
        NULL
    ),
    (
        'Cashapampa',
        26,
        2,
        NULL,
        NULL
    ),
    (
        'Chingalpo',
        26,
        2,
        NULL,
        NULL
    ),
    (
        'Huayllabamba',
        26,
        2,
        NULL,
        NULL
    ),
    ('Quiches', 26, 2, NULL, NULL),
    ('Ragash', 26, 2, NULL, NULL),
    ('San Juan', 26, 2, NULL, NULL),
    (
        'Sicsibamba',
        26,
        2,
        NULL,
        NULL
    ),
    ('Yungay', 27, 2, NULL, NULL),
    (
        'Cascapara',
        27,
        2,
        NULL,
        NULL
    ),
    ('Mancos', 27, 2, NULL, NULL),
    ('Matacoto', 27, 2, NULL, NULL),
    ('Quillo', 27, 2, NULL, NULL),
    (
        'Ranrahirca',
        27,
        2,
        NULL,
        NULL
    ),
    ('Shupluy', 27, 2, NULL, NULL),
    ('Yanama', 27, 2, NULL, NULL),
    ('Abancay', 28, 3, NULL, NULL),
    ('Chacoche', 28, 3, NULL, NULL),
    ('Circa', 28, 3, NULL, NULL),
    (
        'Curahuasi',
        28,
        3,
        NULL,
        NULL
    ),
    (
        'Huanipaca',
        28,
        3,
        NULL,
        NULL
    ),
    ('Lambrama', 28, 3, NULL, NULL),
    (
        'Pichirhua',
        28,
        3,
        NULL,
        NULL
    ),
    (
        'San Pedro de Cachora',
        28,
        3,
        NULL,
        NULL
    ),
    ('Tamburco', 28, 3, NULL, NULL),
    (
        'Andahuaylas',
        29,
        3,
        NULL,
        NULL
    ),
    ('Andarapa', 29, 3, NULL, NULL),
    ('Chiara', 29, 3, NULL, NULL),
    (
        'Huancarama',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'Huancaray',
        29,
        3,
        NULL,
        NULL
    ),
    ('Huayana', 29, 3, NULL, NULL),
    ('Kishuara', 29, 3, NULL, NULL),
    (
        'Pacobamba',
        29,
        3,
        NULL,
        NULL
    ),
    ('Pacucha', 29, 3, NULL, NULL),
    (
        'Pampachiri',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'Pomacocha',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'San Antonio de Cachi',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'San Jerónimo',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'San Miguel de Chaccrampa',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'Santa María de Chicmo',
        29,
        3,
        NULL,
        NULL
    ),
    ('Talavera', 29, 3, NULL, NULL),
    (
        'Tumay Huaraca',
        29,
        3,
        NULL,
        NULL
    ),
    ('Turpo', 29, 3, NULL, NULL),
    (
        'Kaquiabamba',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'José María Arguedas',
        29,
        3,
        NULL,
        NULL
    ),
    (
        'Antabamba',
        30,
        3,
        NULL,
        NULL
    ),
    ('El Oro', 30, 3, NULL, NULL),
    (
        'Huaquirca',
        30,
        3,
        NULL,
        NULL
    ),
    (
        'Juan Espinoza Medrano',
        30,
        3,
        NULL,
        NULL
    ),
    ('Oropesa', 30, 3, NULL, NULL),
    (
        'Pachaconas',
        30,
        3,
        NULL,
        NULL
    ),
    ('Sabaino', 30, 3, NULL, NULL),
    (
        'Chalhuanca',
        31,
        3,
        NULL,
        NULL
    ),
    ('Capaya', 31, 3, NULL, NULL),
    (
        'Caraybamba',
        31,
        3,
        NULL,
        NULL
    ),
    (
        'Chapimarca',
        31,
        3,
        NULL,
        NULL
    ),
    (
        'Colcabamba',
        31,
        3,
        NULL,
        NULL
    ),
    ('Cotaruse', 31, 3, NULL, NULL),
    ('Ihuayllo', 31, 3, NULL, NULL),
    (
        'Justo Apu Sahuaraura',
        31,
        3,
        NULL,
        NULL
    ),
    ('Lucre', 31, 3, NULL, NULL),
    (
        'Pocohuanca',
        31,
        3,
        NULL,
        NULL
    ),
    (
        'San Juan de Chacña',
        31,
        3,
        NULL,
        NULL
    ),
    ('Sañayca', 31, 3, NULL, NULL),
    ('Soraya', 31, 3, NULL, NULL),
    (
        'Tapairihua',
        31,
        3,
        NULL,
        NULL
    ),
    ('Tintay', 31, 3, NULL, NULL),
    ('Toraya', 31, 3, NULL, NULL),
    ('Yanaca', 31, 3, NULL, NULL),
    (
        'Tambobamba',
        32,
        3,
        NULL,
        NULL
    ),
    (
        'Cotabambas',
        32,
        3,
        NULL,
        NULL
    ),
    (
        'Coyllurqui',
        32,
        3,
        NULL,
        NULL
    ),
    ('Haquira', 32, 3, NULL, NULL),
    ('Mara', 32, 3, NULL, NULL),
    (
        'Challhuahuacho',
        32,
        3,
        NULL,
        NULL
    ),
    (
        'Chincheros',
        33,
        3,
        NULL,
        NULL
    ),
    (
        'Anco_Huallo',
        33,
        3,
        NULL,
        NULL
    ),
    (
        'Cocharcas',
        33,
        3,
        NULL,
        NULL
    ),
    ('Huaccana', 33, 3, NULL, NULL),
    ('Ocobamba', 33, 3, NULL, NULL),
    ('Ongoy', 33, 3, NULL, NULL),
    (
        'Uranmarca',
        33,
        3,
        NULL,
        NULL
    ),
    (
        'Ranracancha',
        33,
        3,
        NULL,
        NULL
    ),
    ('Rocchacc', 33, 3, NULL, NULL),
    (
        'El Porvenir',
        33,
        3,
        NULL,
        NULL
    ),
    (
        'Los Chankas',
        33,
        3,
        NULL,
        NULL
    ),
    (
        'Chuquibambilla',
        34,
        3,
        NULL,
        NULL
    ),
    (
        'Curpahuasi',
        34,
        3,
        NULL,
        NULL
    ),
    ('Gamarra', 34, 3, NULL, NULL),
    (
        'Huayllati',
        34,
        3,
        NULL,
        NULL
    ),
    ('Mamara', 34, 3, NULL, NULL),
    (
        'Micaela Bastidas',
        34,
        3,
        NULL,
        NULL
    ),
    (
        'Pataypampa',
        34,
        3,
        NULL,
        NULL
    ),
    ('Progreso', 34, 3, NULL, NULL),
    (
        'San Antonio',
        34,
        3,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        34,
        3,
        NULL,
        NULL
    ),
    ('Turpay', 34, 3, NULL, NULL),
    (
        'Vilcabamba',
        34,
        3,
        NULL,
        NULL
    ),
    ('Virundo', 34, 3, NULL, NULL),
    ('Curasco', 34, 3, NULL, NULL),
    ('Arequipa', 35, 4, NULL, NULL),
    (
        'Alto Selva Alegre',
        35,
        4,
        NULL,
        NULL
    ),
    ('Cayma', 35, 4, NULL, NULL),
    (
        'Cerro Colorado',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Characato',
        35,
        4,
        NULL,
        NULL
    ),
    ('Chiguata', 35, 4, NULL, NULL),
    (
        'Jacobo Hunter',
        35,
        4,
        NULL,
        NULL
    ),
    ('La Joya', 35, 4, NULL, NULL),
    (
        'Mariano Melgar',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Miraflores',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Mollebaya',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Paucarpata',
        35,
        4,
        NULL,
        NULL
    ),
    ('Pocsi', 35, 4, NULL, NULL),
    ('Polobaya', 35, 4, NULL, NULL),
    ('Quequeña', 35, 4, NULL, NULL),
    ('Sabandia', 35, 4, NULL, NULL),
    ('Sachaca', 35, 4, NULL, NULL),
    (
        'San Juan de Siguas',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'San Juan de Tarucani',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Santa Isabel de Siguas',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Santa Rita de Siguas',
        35,
        4,
        NULL,
        NULL
    ),
    ('Socabaya', 35, 4, NULL, NULL),
    ('Tiabaya', 35, 4, NULL, NULL),
    ('Uchumayo', 35, 4, NULL, NULL),
    ('Vitor', 35, 4, NULL, NULL),
    (
        'Yanahuara',
        35,
        4,
        NULL,
        NULL
    ),
    (
        'Yarabamba',
        35,
        4,
        NULL,
        NULL
    ),
    ('Yura', 35, 4, NULL, NULL),
    (
        'José Luis Bustamante Y Rivero',
        35,
        4,
        NULL,
        NULL
    ),
    ('Camaná', 36, 4, NULL, NULL),
    (
        'José María Quimper',
        36,
        4,
        NULL,
        NULL
    ),
    (
        'Mariano Nicolás Valcárcel',
        36,
        4,
        NULL,
        NULL
    ),
    (
        'Mariscal Cáceres',
        36,
        4,
        NULL,
        NULL
    ),
    (
        'Nicolás de Pierola',
        36,
        4,
        NULL,
        NULL
    ),
    ('Ocoña', 36, 4, NULL, NULL),
    ('Quilca', 36, 4, NULL, NULL),
    (
        'Samuel Pastor',
        36,
        4,
        NULL,
        NULL
    ),
    ('Caravelí', 37, 4, NULL, NULL),
    ('Acarí', 37, 4, NULL, NULL),
    ('Atico', 37, 4, NULL, NULL),
    ('Atiquipa', 37, 4, NULL, NULL),
    (
        'Bella Unión',
        37,
        4,
        NULL,
        NULL
    ),
    ('Cahuacho', 37, 4, NULL, NULL),
    ('Chala', 37, 4, NULL, NULL),
    ('Chaparra', 37, 4, NULL, NULL),
    (
        'Huanuhuanu',
        37,
        4,
        NULL,
        NULL
    ),
    ('Jaqui', 37, 4, NULL, NULL),
    ('Lomas', 37, 4, NULL, NULL),
    ('Quicacha', 37, 4, NULL, NULL),
    ('Yauca', 37, 4, NULL, NULL),
    ('Aplao', 38, 4, NULL, NULL),
    ('Andagua', 38, 4, NULL, NULL),
    ('Ayo', 38, 4, NULL, NULL),
    ('Chachas', 38, 4, NULL, NULL),
    (
        'Chilcaymarca',
        38,
        4,
        NULL,
        NULL
    ),
    ('Choco', 38, 4, NULL, NULL),
    (
        'Huancarqui',
        38,
        4,
        NULL,
        NULL
    ),
    (
        'Machaguay',
        38,
        4,
        NULL,
        NULL
    ),
    (
        'Orcopampa',
        38,
        4,
        NULL,
        NULL
    ),
    (
        'Pampacolca',
        38,
        4,
        NULL,
        NULL
    ),
    ('Tipan', 38, 4, NULL, NULL),
    ('Uñon', 38, 4, NULL, NULL),
    ('Uraca', 38, 4, NULL, NULL),
    ('Viraco', 38, 4, NULL, NULL),
    ('Chivay', 39, 4, NULL, NULL),
    ('Achoma', 39, 4, NULL, NULL),
    (
        'Cabanaconde',
        39,
        4,
        NULL,
        NULL
    ),
    ('Callalli', 39, 4, NULL, NULL),
    ('Caylloma', 39, 4, NULL, NULL),
    (
        'Coporaque',
        39,
        4,
        NULL,
        NULL
    ),
    ('Huambo', 39, 4, NULL, NULL),
    ('Huanca', 39, 4, NULL, NULL),
    (
        'Ichupampa',
        39,
        4,
        NULL,
        NULL
    ),
    ('Lari', 39, 4, NULL, NULL),
    ('Lluta', 39, 4, NULL, NULL),
    ('Maca', 39, 4, NULL, NULL),
    ('Madrigal', 39, 4, NULL, NULL),
    (
        'San Antonio de Chuca',
        39,
        4,
        NULL,
        NULL
    ),
    ('Sibayo', 39, 4, NULL, NULL),
    ('Tapay', 39, 4, NULL, NULL),
    ('Tisco', 39, 4, NULL, NULL),
    ('Tuti', 39, 4, NULL, NULL),
    ('Yanque', 39, 4, NULL, NULL),
    ('Majes', 39, 4, NULL, NULL),
    (
        'Chuquibamba',
        40,
        4,
        NULL,
        NULL
    ),
    ('Andaray', 40, 4, NULL, NULL),
    ('Cayarani', 40, 4, NULL, NULL),
    ('Chichas', 40, 4, NULL, NULL),
    ('Iray', 40, 4, NULL, NULL),
    (
        'Río Grande',
        40,
        4,
        NULL,
        NULL
    ),
    (
        'Salamanca',
        40,
        4,
        NULL,
        NULL
    ),
    (
        'Yanaquihua',
        40,
        4,
        NULL,
        NULL
    ),
    ('Mollendo', 41, 4, NULL, NULL),
    (
        'Cocachacra',
        41,
        4,
        NULL,
        NULL
    ),
    (
        'Dean Valdivia',
        41,
        4,
        NULL,
        NULL
    ),
    ('Islay', 41, 4, NULL, NULL),
    ('Mejia', 41, 4, NULL, NULL),
    (
        'Punta de Bombón',
        41,
        4,
        NULL,
        NULL
    ),
    (
        'Cotahuasi',
        42,
        4,
        NULL,
        NULL
    ),
    ('Alca', 42, 4, NULL, NULL),
    ('Charcana', 42, 4, NULL, NULL),
    (
        'Huaynacotas',
        42,
        4,
        NULL,
        NULL
    ),
    (
        'Pampamarca',
        42,
        4,
        NULL,
        NULL
    ),
    ('Puyca', 42, 4, NULL, NULL),
    (
        'Quechualla',
        42,
        4,
        NULL,
        NULL
    ),
    ('Sayla', 42, 4, NULL, NULL),
    ('Tauria', 42, 4, NULL, NULL),
    (
        'Tomepampa',
        42,
        4,
        NULL,
        NULL
    ),
    ('Toro', 42, 4, NULL, NULL),
    ('Ayacucho', 43, 5, NULL, NULL),
    ('Acocro', 43, 5, NULL, NULL),
    (
        'Acos Vinchos',
        43,
        5,
        NULL,
        NULL
    ),
    (
        'Carmen Alto',
        43,
        5,
        NULL,
        NULL
    ),
    ('Chiara', 43, 5, NULL, NULL),
    ('Ocros', 43, 5, NULL, NULL),
    (
        'Pacaycasa',
        43,
        5,
        NULL,
        NULL
    ),
    ('Quinua', 43, 5, NULL, NULL),
    (
        'San José de Ticllas',
        43,
        5,
        NULL,
        NULL
    ),
    (
        'San Juan Bautista',
        43,
        5,
        NULL,
        NULL
    ),
    (
        'Santiago de Pischa',
        43,
        5,
        NULL,
        NULL
    ),
    ('Socos', 43, 5, NULL, NULL),
    ('Tambillo', 43, 5, NULL, NULL),
    ('Vinchos', 43, 5, NULL, NULL),
    (
        'Jesús Nazareno',
        43,
        5,
        NULL,
        NULL
    ),
    (
        'Andrés Avelino Cáceres Dorregaray',
        43,
        5,
        NULL,
        NULL
    ),
    ('Cangallo', 44, 5, NULL, NULL),
    ('Chuschi', 44, 5, NULL, NULL),
    (
        'Los Morochucos',
        44,
        5,
        NULL,
        NULL
    ),
    (
        'María Parado de Bellido',
        44,
        5,
        NULL,
        NULL
    ),
    ('Paras', 44, 5, NULL, NULL),
    ('Totos', 44, 5, NULL, NULL),
    ('Sancos', 45, 5, NULL, NULL),
    ('Carapo', 45, 5, NULL, NULL),
    (
        'Sacsamarca',
        45,
        5,
        NULL,
        NULL
    ),
    (
        'Santiago de Lucanamarca',
        45,
        5,
        NULL,
        NULL
    ),
    ('Huanta', 46, 5, NULL, NULL),
    (
        'Ayahuanco',
        46,
        5,
        NULL,
        NULL
    ),
    (
        'Huamanguilla',
        46,
        5,
        NULL,
        NULL
    ),
    ('Iguain', 46, 5, NULL, NULL),
    (
        'Luricocha',
        46,
        5,
        NULL,
        NULL
    ),
    (
        'Santillana',
        46,
        5,
        NULL,
        NULL
    ),
    ('Sivia', 46, 5, NULL, NULL),
    (
        'Llochegua',
        46,
        5,
        NULL,
        NULL
    ),
    ('Canayre', 46, 5, NULL, NULL),
    (
        'Uchuraccay',
        46,
        5,
        NULL,
        NULL
    ),
    (
        'Pucacolpa',
        46,
        5,
        NULL,
        NULL
    ),
    ('Chaca', 46, 5, NULL, NULL),
    (
        'San Miguel',
        47,
        5,
        NULL,
        NULL
    ),
    ('Anco', 47, 5, NULL, NULL),
    ('Ayna', 47, 5, NULL, NULL),
    ('Chilcas', 47, 5, NULL, NULL),
    ('Chungui', 47, 5, NULL, NULL),
    (
        'Luis Carranza',
        47,
        5,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        47,
        5,
        NULL,
        NULL
    ),
    ('Tambo', 47, 5, NULL, NULL),
    ('Samugari', 47, 5, NULL, NULL),
    (
        'Anchihuay',
        47,
        5,
        NULL,
        NULL
    ),
    ('Oronccoy', 47, 5, NULL, NULL),
    ('Puquio', 48, 5, NULL, NULL),
    ('Aucara', 48, 5, NULL, NULL),
    ('Cabana', 48, 5, NULL, NULL),
    (
        'Carmen Salcedo',
        48,
        5,
        NULL,
        NULL
    ),
    ('Chaviña', 48, 5, NULL, NULL),
    ('Chipao', 48, 5, NULL, NULL),
    (
        'Huac-Huas',
        48,
        5,
        NULL,
        NULL
    ),
    ('Laramate', 48, 5, NULL, NULL),
    (
        'Leoncio Prado',
        48,
        5,
        NULL,
        NULL
    ),
    ('Llauta', 48, 5, NULL, NULL),
    ('Lucanas', 48, 5, NULL, NULL),
    ('Ocaña', 48, 5, NULL, NULL),
    ('Otoca', 48, 5, NULL, NULL),
    ('Saisa', 48, 5, NULL, NULL),
    (
        'San Cristóbal',
        48,
        5,
        NULL,
        NULL
    ),
    ('San Juan', 48, 5, NULL, NULL),
    (
        'San Pedro',
        48,
        5,
        NULL,
        NULL
    ),
    (
        'San Pedro de Palco',
        48,
        5,
        NULL,
        NULL
    ),
    ('Sancos', 48, 5, NULL, NULL),
    (
        'Santa Ana de Huaycahuacho',
        48,
        5,
        NULL,
        NULL
    ),
    (
        'Santa Lucia',
        48,
        5,
        NULL,
        NULL
    ),
    ('Coracora', 49, 5, NULL, NULL),
    ('Chumpi', 49, 5, NULL, NULL),
    (
        'Coronel Castañeda',
        49,
        5,
        NULL,
        NULL
    ),
    (
        'Pacapausa',
        49,
        5,
        NULL,
        NULL
    ),
    ('Pullo', 49, 5, NULL, NULL),
    ('Puyusca', 49, 5, NULL, NULL),
    (
        'San Francisco de Ravacayco',
        49,
        5,
        NULL,
        NULL
    ),
    (
        'Upahuacho',
        49,
        5,
        NULL,
        NULL
    ),
    ('Pausa', 50, 5, NULL, NULL),
    ('Colta', 50, 5, NULL, NULL),
    ('Corculla', 50, 5, NULL, NULL),
    ('Lampa', 50, 5, NULL, NULL),
    (
        'Marcabamba',
        50,
        5,
        NULL,
        NULL
    ),
    ('Oyolo', 50, 5, NULL, NULL),
    ('Pararca', 50, 5, NULL, NULL),
    (
        'San Javier de Alpabamba',
        50,
        5,
        NULL,
        NULL
    ),
    (
        'San José de Ushua',
        50,
        5,
        NULL,
        NULL
    ),
    (
        'Sara Sara',
        50,
        5,
        NULL,
        NULL
    ),
    (
        'Querobamba',
        51,
        5,
        NULL,
        NULL
    ),
    ('Belén', 51, 5, NULL, NULL),
    ('Chalcos', 51, 5, NULL, NULL),
    (
        'Chilcayoc',
        51,
        5,
        NULL,
        NULL
    ),
    ('Huacaña', 51, 5, NULL, NULL),
    ('Morcolla', 51, 5, NULL, NULL),
    ('Paico', 51, 5, NULL, NULL),
    (
        'San Pedro de Larcay',
        51,
        5,
        NULL,
        NULL
    ),
    (
        'San Salvador de Quije',
        51,
        5,
        NULL,
        NULL
    ),
    (
        'Santiago de Paucaray',
        51,
        5,
        NULL,
        NULL
    ),
    ('Soras', 51, 5, NULL, NULL),
    ('Huancapi', 52, 5, NULL, NULL),
    (
        'Alcamenca',
        52,
        5,
        NULL,
        NULL
    ),
    ('Apongo', 52, 5, NULL, NULL),
    (
        'Asquipata',
        52,
        5,
        NULL,
        NULL
    ),
    ('Canaria', 52, 5, NULL, NULL),
    ('Cayara', 52, 5, NULL, NULL),
    ('Colca', 52, 5, NULL, NULL),
    (
        'Huamanquiquia',
        52,
        5,
        NULL,
        NULL
    ),
    (
        'Huancaraylla',
        52,
        5,
        NULL,
        NULL
    ),
    ('Hualla', 52, 5, NULL, NULL),
    ('Sarhua', 52, 5, NULL, NULL),
    (
        'Vilcanchos',
        52,
        5,
        NULL,
        NULL
    ),
    (
        'Vilcas Huaman',
        53,
        5,
        NULL,
        NULL
    ),
    (
        'Accomarca',
        53,
        5,
        NULL,
        NULL
    ),
    (
        'Carhuanca',
        53,
        5,
        NULL,
        NULL
    ),
    (
        'Concepción',
        53,
        5,
        NULL,
        NULL
    ),
    (
        'Huambalpa',
        53,
        5,
        NULL,
        NULL
    ),
    (
        'Independencia',
        53,
        5,
        NULL,
        NULL
    ),
    ('Saurama', 53, 5, NULL, NULL),
    (
        'Vischongo',
        53,
        5,
        NULL,
        NULL
    ),
    (
        'Cajamarca',
        54,
        6,
        NULL,
        NULL
    ),
    ('Asunción', 54, 6, NULL, NULL),
    ('Chetilla', 54, 6, NULL, NULL),
    ('Cospan', 54, 6, NULL, NULL),
    ('Encañada', 54, 6, NULL, NULL),
    ('Jesús', 54, 6, NULL, NULL),
    (
        'Llacanora',
        54,
        6,
        NULL,
        NULL
    ),
    (
        'Los Baños del Inca',
        54,
        6,
        NULL,
        NULL
    ),
    (
        'Magdalena',
        54,
        6,
        NULL,
        NULL
    ),
    ('Matara', 54, 6, NULL, NULL),
    ('Namora', 54, 6, NULL, NULL),
    ('San Juan', 54, 6, NULL, NULL),
    (
        'Cajabamba',
        55,
        6,
        NULL,
        NULL
    ),
    ('Cachachi', 55, 6, NULL, NULL),
    (
        'Condebamba',
        55,
        6,
        NULL,
        NULL
    ),
    (
        'Sitacocha',
        55,
        6,
        NULL,
        NULL
    ),
    ('Celendín', 56, 6, NULL, NULL),
    ('Chumuch', 56, 6, NULL, NULL),
    (
        'Cortegana',
        56,
        6,
        NULL,
        NULL
    ),
    ('Huasmin', 56, 6, NULL, NULL),
    (
        'Jorge Chávez',
        56,
        6,
        NULL,
        NULL
    ),
    (
        'José Gálvez',
        56,
        6,
        NULL,
        NULL
    ),
    (
        'Miguel Iglesias',
        56,
        6,
        NULL,
        NULL
    ),
    ('Oxamarca', 56, 6, NULL, NULL),
    (
        'Sorochuco',
        56,
        6,
        NULL,
        NULL
    ),
    ('Sucre', 56, 6, NULL, NULL),
    ('Utco', 56, 6, NULL, NULL),
    (
        'La Libertad de Pallan',
        56,
        6,
        NULL,
        NULL
    ),
    ('Chota', 57, 6, NULL, NULL),
    ('Anguia', 57, 6, NULL, NULL),
    ('Chadin', 57, 6, NULL, NULL),
    (
        'Chiguirip',
        57,
        6,
        NULL,
        NULL
    ),
    ('Chimban', 57, 6, NULL, NULL),
    (
        'Choropampa',
        57,
        6,
        NULL,
        NULL
    ),
    (
        'Cochabamba',
        57,
        6,
        NULL,
        NULL
    ),
    ('Conchan', 57, 6, NULL, NULL),
    ('Huambos', 57, 6, NULL, NULL),
    ('Lajas', 57, 6, NULL, NULL),
    ('Llama', 57, 6, NULL, NULL),
    (
        'Miracosta',
        57,
        6,
        NULL,
        NULL
    ),
    ('Paccha', 57, 6, NULL, NULL),
    ('Pion', 57, 6, NULL, NULL),
    (
        'Querocoto',
        57,
        6,
        NULL,
        NULL
    ),
    (
        'San Juan de Licupis',
        57,
        6,
        NULL,
        NULL
    ),
    (
        'Tacabamba',
        57,
        6,
        NULL,
        NULL
    ),
    ('Tocmoche', 57, 6, NULL, NULL),
    (
        'Chalamarca',
        57,
        6,
        NULL,
        NULL
    ),
    (
        'Contumaza',
        58,
        6,
        NULL,
        NULL
    ),
    ('Chilete', 58, 6, NULL, NULL),
    (
        'Cupisnique',
        58,
        6,
        NULL,
        NULL
    ),
    ('Guzmango', 58, 6, NULL, NULL),
    (
        'San Benito',
        58,
        6,
        NULL,
        NULL
    ),
    (
        'Santa Cruz de Toledo',
        58,
        6,
        NULL,
        NULL
    ),
    (
        'Tantarica',
        58,
        6,
        NULL,
        NULL
    ),
    ('Yonan', 58, 6, NULL, NULL),
    ('Cutervo', 59, 6, NULL, NULL),
    ('Callayuc', 59, 6, NULL, NULL),
    ('Choros', 59, 6, NULL, NULL),
    ('Cujillo', 59, 6, NULL, NULL),
    (
        'La Ramada',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'Pimpingos',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'Querocotillo',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'San Andrés de Cutervo',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'San Juan de Cutervo',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'San Luis de Lucma',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'Santa Cruz',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'Santo Domingo de la Capilla',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'Santo Tomas',
        59,
        6,
        NULL,
        NULL
    ),
    ('Socota', 59, 6, NULL, NULL),
    (
        'Toribio Casanova',
        59,
        6,
        NULL,
        NULL
    ),
    (
        'Bambamarca',
        60,
        6,
        NULL,
        NULL
    ),
    ('Chugur', 60, 6, NULL, NULL),
    (
        'Hualgayoc',
        60,
        6,
        NULL,
        NULL
    ),
    ('Jaén', 61, 6, NULL, NULL),
    (
        'Bellavista',
        61,
        6,
        NULL,
        NULL
    ),
    ('Chontali', 61, 6, NULL, NULL),
    ('Colasay', 61, 6, NULL, NULL),
    ('Huabal', 61, 6, NULL, NULL),
    (
        'Las Pirias',
        61,
        6,
        NULL,
        NULL
    ),
    (
        'Pomahuaca',
        61,
        6,
        NULL,
        NULL
    ),
    ('Pucara', 61, 6, NULL, NULL),
    ('Sallique', 61, 6, NULL, NULL),
    (
        'San Felipe',
        61,
        6,
        NULL,
        NULL
    ),
    (
        'San José del Alto',
        61,
        6,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        61,
        6,
        NULL,
        NULL
    ),
    (
        'San Ignacio',
        62,
        6,
        NULL,
        NULL
    ),
    ('Chirinos', 62, 6, NULL, NULL),
    ('Huarango', 62, 6, NULL, NULL),
    ('La Coipa', 62, 6, NULL, NULL),
    ('Namballe', 62, 6, NULL, NULL),
    (
        'San José de Lourdes',
        62,
        6,
        NULL,
        NULL
    ),
    (
        'Tabaconas',
        62,
        6,
        NULL,
        NULL
    ),
    (
        'Pedro Gálvez',
        63,
        6,
        NULL,
        NULL
    ),
    ('Chancay', 63, 6, NULL, NULL),
    (
        'Eduardo Villanueva',
        63,
        6,
        NULL,
        NULL
    ),
    (
        'Gregorio Pita',
        63,
        6,
        NULL,
        NULL
    ),
    ('Ichocan', 63, 6, NULL, NULL),
    (
        'José Manuel Quiroz',
        63,
        6,
        NULL,
        NULL
    ),
    (
        'José Sabogal',
        63,
        6,
        NULL,
        NULL
    ),
    (
        'San Miguel',
        64,
        6,
        NULL,
        NULL
    ),
    ('Bolívar', 64, 6, NULL, NULL),
    ('Calquis', 64, 6, NULL, NULL),
    ('Catilluc', 64, 6, NULL, NULL),
    ('El Prado', 64, 6, NULL, NULL),
    (
        'La Florida',
        64,
        6,
        NULL,
        NULL
    ),
    ('Llapa', 64, 6, NULL, NULL),
    ('Nanchoc', 64, 6, NULL, NULL),
    ('Niepos', 64, 6, NULL, NULL),
    (
        'San Gregorio',
        64,
        6,
        NULL,
        NULL
    ),
    (
        'San Silvestre de Cochan',
        64,
        6,
        NULL,
        NULL
    ),
    ('Tongod', 64, 6, NULL, NULL),
    (
        'Unión Agua Blanca',
        64,
        6,
        NULL,
        NULL
    ),
    (
        'San Pablo',
        65,
        6,
        NULL,
        NULL
    ),
    (
        'San Bernardino',
        65,
        6,
        NULL,
        NULL
    ),
    ('San Luis', 65, 6, NULL, NULL),
    ('Tumbaden', 65, 6, NULL, NULL),
    (
        'Santa Cruz',
        66,
        6,
        NULL,
        NULL
    ),
    (
        'Andabamba',
        66,
        6,
        NULL,
        NULL
    ),
    ('Catache', 66, 6, NULL, NULL),
    (
        'Chancaybaños',
        66,
        6,
        NULL,
        NULL
    ),
    (
        'La Esperanza',
        66,
        6,
        NULL,
        NULL
    ),
    (
        'Ninabamba',
        66,
        6,
        NULL,
        NULL
    ),
    ('Pulan', 66, 6, NULL, NULL),
    (
        'Saucepampa',
        66,
        6,
        NULL,
        NULL
    ),
    ('Sexi', 66, 6, NULL, NULL),
    ('Uticyacu', 66, 6, NULL, NULL),
    ('Yauyucan', 66, 6, NULL, NULL),
    ('Callao', 67, 7, NULL, NULL),
    (
        'Bellavista',
        67,
        7,
        NULL,
        NULL
    ),
    (
        'Carmen de la Legua Reynoso',
        67,
        7,
        NULL,
        NULL
    ),
    ('La Perla', 67, 7, NULL, NULL),
    ('La Punta', 67, 7, NULL, NULL),
    (
        'Ventanilla',
        67,
        7,
        NULL,
        NULL
    ),
    ('Mi Perú', 67, 7, NULL, NULL),
    ('Cusco', 68, 8, NULL, NULL),
    ('Ccorca', 68, 8, NULL, NULL),
    ('Poroy', 68, 8, NULL, NULL),
    (
        'San Jerónimo',
        68,
        8,
        NULL,
        NULL
    ),
    (
        'San Sebastian',
        68,
        8,
        NULL,
        NULL
    ),
    ('Santiago', 68, 8, NULL, NULL),
    ('Saylla', 68, 8, NULL, NULL),
    ('Wanchaq', 68, 8, NULL, NULL),
    ('Acomayo', 69, 8, NULL, NULL),
    ('Acopia', 69, 8, NULL, NULL),
    ('Acos', 69, 8, NULL, NULL),
    (
        'Mosoc Llacta',
        69,
        8,
        NULL,
        NULL
    ),
    (
        'Pomacanchi',
        69,
        8,
        NULL,
        NULL
    ),
    ('Rondocan', 69, 8, NULL, NULL),
    (
        'Sangarara',
        69,
        8,
        NULL,
        NULL
    ),
    ('Anta', 70, 8, NULL, NULL),
    (
        'Ancahuasi',
        70,
        8,
        NULL,
        NULL
    ),
    (
        'Cachimayo',
        70,
        8,
        NULL,
        NULL
    ),
    (
        'Chinchaypujio',
        70,
        8,
        NULL,
        NULL
    ),
    (
        'Huarocondo',
        70,
        8,
        NULL,
        NULL
    ),
    (
        'Limatambo',
        70,
        8,
        NULL,
        NULL
    ),
    (
        'Mollepata',
        70,
        8,
        NULL,
        NULL
    ),
    ('Pucyura', 70, 8, NULL, NULL),
    ('Zurite', 70, 8, NULL, NULL),
    ('Calca', 71, 8, NULL, NULL),
    ('Coya', 71, 8, NULL, NULL),
    ('Lamay', 71, 8, NULL, NULL),
    ('Lares', 71, 8, NULL, NULL),
    ('Pisac', 71, 8, NULL, NULL),
    (
        'San Salvador',
        71,
        8,
        NULL,
        NULL
    ),
    ('Taray', 71, 8, NULL, NULL),
    ('Yanatile', 71, 8, NULL, NULL),
    ('Yanaoca', 72, 8, NULL, NULL),
    ('Checca', 72, 8, NULL, NULL),
    (
        'Kunturkanki',
        72,
        8,
        NULL,
        NULL
    ),
    ('Langui', 72, 8, NULL, NULL),
    ('Layo', 72, 8, NULL, NULL),
    (
        'Pampamarca',
        72,
        8,
        NULL,
        NULL
    ),
    ('Quehue', 72, 8, NULL, NULL),
    (
        'Tupac Amaru',
        72,
        8,
        NULL,
        NULL
    ),
    ('Sicuani', 73, 8, NULL, NULL),
    (
        'Checacupe',
        73,
        8,
        NULL,
        NULL
    ),
    (
        'Combapata',
        73,
        8,
        NULL,
        NULL
    ),
    (
        'Marangani',
        73,
        8,
        NULL,
        NULL
    ),
    (
        'Pitumarca',
        73,
        8,
        NULL,
        NULL
    ),
    (
        'San Pablo',
        73,
        8,
        NULL,
        NULL
    ),
    (
        'San Pedro',
        73,
        8,
        NULL,
        NULL
    ),
    ('Tinta', 73, 8, NULL, NULL),
    (
        'Santo Tomas',
        74,
        8,
        NULL,
        NULL
    ),
    (
        'Capacmarca',
        74,
        8,
        NULL,
        NULL
    ),
    ('Chamaca', 74, 8, NULL, NULL),
    (
        'Colquemarca',
        74,
        8,
        NULL,
        NULL
    ),
    ('Livitaca', 74, 8, NULL, NULL),
    ('Llusco', 74, 8, NULL, NULL),
    ('Quiñota', 74, 8, NULL, NULL),
    ('Velille', 74, 8, NULL, NULL),
    ('Espinar', 75, 8, NULL, NULL),
    (
        'Condoroma',
        75,
        8,
        NULL,
        NULL
    ),
    (
        'Coporaque',
        75,
        8,
        NULL,
        NULL
    ),
    ('Ocoruro', 75, 8, NULL, NULL),
    ('Pallpata', 75, 8, NULL, NULL),
    ('Pichigua', 75, 8, NULL, NULL),
    (
        'Suyckutambo',
        75,
        8,
        NULL,
        NULL
    ),
    (
        'Alto Pichigua',
        75,
        8,
        NULL,
        NULL
    ),
    (
        'Santa Ana',
        76,
        8,
        NULL,
        NULL
    ),
    ('Echarate', 76, 8, NULL, NULL),
    (
        'Huayopata',
        76,
        8,
        NULL,
        NULL
    ),
    ('Maranura', 76, 8, NULL, NULL),
    ('Ocobamba', 76, 8, NULL, NULL),
    (
        'Quellouno',
        76,
        8,
        NULL,
        NULL
    ),
    ('Kimbiri', 76, 8, NULL, NULL),
    (
        'Santa Teresa',
        76,
        8,
        NULL,
        NULL
    ),
    (
        'Vilcabamba',
        76,
        8,
        NULL,
        NULL
    ),
    ('Pichari', 76, 8, NULL, NULL),
    ('Inkawasi', 76, 8, NULL, NULL),
    (
        'Villa Virgen',
        76,
        8,
        NULL,
        NULL
    ),
    (
        'Villa Kintiarina',
        76,
        8,
        NULL,
        NULL
    ),
    (
        'Megantoni',
        76,
        8,
        NULL,
        NULL
    ),
    ('Paruro', 77, 8, NULL, NULL),
    ('Accha', 77, 8, NULL, NULL),
    ('Ccapi', 77, 8, NULL, NULL),
    ('Colcha', 77, 8, NULL, NULL),
    (
        'Huanoquite',
        77,
        8,
        NULL,
        NULL
    ),
    ('Omachaç', 77, 8, NULL, NULL),
    (
        'Paccaritambo',
        77,
        8,
        NULL,
        NULL
    ),
    (
        'Pillpinto',
        77,
        8,
        NULL,
        NULL
    ),
    (
        'Yaurisque',
        77,
        8,
        NULL,
        NULL
    ),
    (
        'Paucartambo',
        78,
        8,
        NULL,
        NULL
    ),
    ('Caicay', 78, 8, NULL, NULL),
    (
        'Challabamba',
        78,
        8,
        NULL,
        NULL
    ),
    (
        'Colquepata',
        78,
        8,
        NULL,
        NULL
    ),
    (
        'Huancarani',
        78,
        8,
        NULL,
        NULL
    ),
    (
        'Kosñipata',
        78,
        8,
        NULL,
        NULL
    ),
    ('Urcos', 79, 8, NULL, NULL),
    (
        'Andahuaylillas',
        79,
        8,
        NULL,
        NULL
    ),
    ('Camanti', 79, 8, NULL, NULL),
    (
        'Ccarhuayo',
        79,
        8,
        NULL,
        NULL
    ),
    ('Ccatca', 79, 8, NULL, NULL),
    ('Cusipata', 79, 8, NULL, NULL),
    ('Huaro', 79, 8, NULL, NULL),
    ('Lucre', 79, 8, NULL, NULL),
    (
        'Marcapata',
        79,
        8,
        NULL,
        NULL
    ),
    ('Ocongate', 79, 8, NULL, NULL),
    ('Oropesa', 79, 8, NULL, NULL),
    (
        'Quiquijana',
        79,
        8,
        NULL,
        NULL
    ),
    ('Urubamba', 80, 8, NULL, NULL),
    (
        'Chinchero',
        80,
        8,
        NULL,
        NULL
    ),
    (
        'Huayllabamba',
        80,
        8,
        NULL,
        NULL
    ),
    (
        'Machupicchu',
        80,
        8,
        NULL,
        NULL
    ),
    ('Maras', 80, 8, NULL, NULL),
    (
        'Ollantaytambo',
        80,
        8,
        NULL,
        NULL
    ),
    ('Yucay', 80, 8, NULL, NULL),
    (
        'Huancavelica',
        81,
        9,
        NULL,
        NULL
    ),
    (
        'Acobambilla',
        81,
        9,
        NULL,
        NULL
    ),
    ('Acoria', 81, 9, NULL, NULL),
    ('Conayca', 81, 9, NULL, NULL),
    ('Cuenca', 81, 9, NULL, NULL),
    (
        'Huachocolpa',
        81,
        9,
        NULL,
        NULL
    ),
    (
        'Huayllahuara',
        81,
        9,
        NULL,
        NULL
    ),
    (
        'Izcuchaca',
        81,
        9,
        NULL,
        NULL
    ),
    ('Laria', 81, 9, NULL, NULL),
    ('Manta', 81, 9, NULL, NULL),
    (
        'Mariscal Cáceres',
        81,
        9,
        NULL,
        NULL
    ),
    ('Moya', 81, 9, NULL, NULL),
    (
        'Nuevo Occoro',
        81,
        9,
        NULL,
        NULL
    ),
    ('Palca', 81, 9, NULL, NULL),
    ('Pilchaca', 81, 9, NULL, NULL),
    ('Vilca', 81, 9, NULL, NULL),
    ('Yauli', 81, 9, NULL, NULL),
    (
        'Ascensión',
        81,
        9,
        NULL,
        NULL
    ),
    ('Huando', 81, 9, NULL, NULL),
    ('Acobamba', 82, 9, NULL, NULL),
    (
        'Andabamba',
        82,
        9,
        NULL,
        NULL
    ),
    ('Anta', 82, 9, NULL, NULL),
    ('Caja', 82, 9, NULL, NULL),
    ('Marcas', 82, 9, NULL, NULL),
    ('Paucara', 82, 9, NULL, NULL),
    (
        'Pomacocha',
        82,
        9,
        NULL,
        NULL
    ),
    ('Rosario', 82, 9, NULL, NULL),
    ('Lircay', 83, 9, NULL, NULL),
    ('Anchonga', 83, 9, NULL, NULL),
    (
        'Callanmarca',
        83,
        9,
        NULL,
        NULL
    ),
    (
        'Ccochaccasa',
        83,
        9,
        NULL,
        NULL
    ),
    ('Chincho', 83, 9, NULL, NULL),
    ('Congalla', 83, 9, NULL, NULL),
    (
        'Huanca-Huanca',
        83,
        9,
        NULL,
        NULL
    ),
    (
        'Huayllay Grande',
        83,
        9,
        NULL,
        NULL
    ),
    (
        'Julcamarca',
        83,
        9,
        NULL,
        NULL
    ),
    (
        'San Antonio de Antaparco',
        83,
        9,
        NULL,
        NULL
    ),
    (
        'Santo Tomas de Pata',
        83,
        9,
        NULL,
        NULL
    ),
    ('Secclla', 83, 9, NULL, NULL),
    (
        'Castrovirreyna',
        84,
        9,
        NULL,
        NULL
    ),
    ('Arma', 84, 9, NULL, NULL),
    ('Aurahua', 84, 9, NULL, NULL),
    ('Capillas', 84, 9, NULL, NULL),
    (
        'Chupamarca',
        84,
        9,
        NULL,
        NULL
    ),
    ('Cocas', 84, 9, NULL, NULL),
    ('Huachos', 84, 9, NULL, NULL),
    (
        'Huamatambo',
        84,
        9,
        NULL,
        NULL
    ),
    (
        'Mollepampa',
        84,
        9,
        NULL,
        NULL
    ),
    ('San Juan', 84, 9, NULL, NULL),
    (
        'Santa Ana',
        84,
        9,
        NULL,
        NULL
    ),
    ('Tantara', 84, 9, NULL, NULL),
    ('Ticrapo', 84, 9, NULL, NULL),
    (
        'Churcampa',
        85,
        9,
        NULL,
        NULL
    ),
    ('Anco', 85, 9, NULL, NULL),
    (
        'Chinchihuasi',
        85,
        9,
        NULL,
        NULL
    ),
    (
        'El Carmen',
        85,
        9,
        NULL,
        NULL
    ),
    (
        'La Merced',
        85,
        9,
        NULL,
        NULL
    ),
    ('Locroja', 85, 9, NULL, NULL),
    (
        'Paucarbamba',
        85,
        9,
        NULL,
        NULL
    ),
    (
        'San Miguel de Mayocc',
        85,
        9,
        NULL,
        NULL
    ),
    (
        'San Pedro de Coris',
        85,
        9,
        NULL,
        NULL
    ),
    (
        'Pachamarca',
        85,
        9,
        NULL,
        NULL
    ),
    ('Cosme', 85, 9, NULL, NULL),
    ('Huaytara', 86, 9, NULL, NULL),
    ('Ayavi', 86, 9, NULL, NULL),
    ('Córdova', 86, 9, NULL, NULL),
    (
        'Huayacundo Arma',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'Laramarca',
        86,
        9,
        NULL,
        NULL
    ),
    ('Ocoyo', 86, 9, NULL, NULL),
    (
        'Pilpichaca',
        86,
        9,
        NULL,
        NULL
    ),
    ('Querco', 86, 9, NULL, NULL),
    (
        'Quito-Arma',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'San Antonio de Cusicancha',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'San Francisco de Sangayaico',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'San Isidro',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'Santiago de Chocorvos',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'Santiago de Quirahuara',
        86,
        9,
        NULL,
        NULL
    ),
    (
        'Santo Domingo de Capillas',
        86,
        9,
        NULL,
        NULL
    ),
    ('Tambo', 86, 9, NULL, NULL),
    ('Pampas', 87, 9, NULL, NULL),
    (
        'Acostambo',
        87,
        9,
        NULL,
        NULL
    ),
    ('Acraquia', 87, 9, NULL, NULL),
    ('Ahuaycha', 87, 9, NULL, NULL),
    (
        'Colcabamba',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Daniel Hernández',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Huachocolpa',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Huaribamba',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Ñahuimpuquio',
        87,
        9,
        NULL,
        NULL
    ),
    ('Pazos', 87, 9, NULL, NULL),
    ('Quishuar', 87, 9, NULL, NULL),
    (
        'Salcabamba',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Salcahuasi',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'San Marcos de Rocchac',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Surcubamba',
        87,
        9,
        NULL,
        NULL
    ),
    (
        'Tintay Puncu',
        87,
        9,
        NULL,
        NULL
    ),
    ('Quichuas', 87, 9, NULL, NULL),
    (
        'Andaymarca',
        87,
        9,
        NULL,
        NULL
    ),
    ('Roble', 87, 9, NULL, NULL),
    ('Pichos', 87, 9, NULL, NULL),
    (
        'Santiago de Tucuma',
        87,
        9,
        NULL,
        NULL
    ),
    ('Huanuco', 88, 10, NULL, NULL),
    (
        'Amarilis',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'Chinchao',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'Churubamba',
        88,
        10,
        NULL,
        NULL
    ),
    ('Margos', 88, 10, NULL, NULL),
    (
        'Quisqui (Kichki)',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'San Francisco de Cayran',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'San Pedro de Chaulan',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'Santa María del Valle',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'Yarumayo',
        88,
        10,
        NULL,
        NULL
    ),
    (
        'Pillco Marca',
        88,
        10,
        NULL,
        NULL
    ),
    ('Yacus', 88, 10, NULL, NULL),
    (
        'San Pablo de Pillao',
        88,
        10,
        NULL,
        NULL
    ),
    ('Ambo', 89, 10, NULL, NULL),
    ('Cayna', 89, 10, NULL, NULL),
    ('Colpas', 89, 10, NULL, NULL),
    (
        'Conchamarca',
        89,
        10,
        NULL,
        NULL
    ),
    ('Huacar', 89, 10, NULL, NULL),
    (
        'San Francisco',
        89,
        10,
        NULL,
        NULL
    ),
    (
        'San Rafael',
        89,
        10,
        NULL,
        NULL
    ),
    (
        'Tomay Kichwa',
        89,
        10,
        NULL,
        NULL
    ),
    (
        'La Unión',
        90,
        10,
        NULL,
        NULL
    ),
    ('Chuquis', 90, 10, NULL, NULL),
    ('Marías', 90, 10, NULL, NULL),
    ('Pachas', 90, 10, NULL, NULL),
    (
        'Quivilla',
        90,
        10,
        NULL,
        NULL
    ),
    ('Ripan', 90, 10, NULL, NULL),
    ('Shunqui', 90, 10, NULL, NULL),
    (
        'Sillapata',
        90,
        10,
        NULL,
        NULL
    ),
    ('Yanas', 90, 10, NULL, NULL),
    (
        'Huacaybamba',
        91,
        10,
        NULL,
        NULL
    ),
    (
        'Canchabamba',
        91,
        10,
        NULL,
        NULL
    ),
    (
        'Cochabamba',
        91,
        10,
        NULL,
        NULL
    ),
    ('Pinra', 91, 10, NULL, NULL),
    ('Llata', 92, 10, NULL, NULL),
    ('Arancay', 92, 10, NULL, NULL),
    (
        'Chavín de Pariarca',
        92,
        10,
        NULL,
        NULL
    ),
    (
        'Jacas Grande',
        92,
        10,
        NULL,
        NULL
    ),
    ('Jircan', 92, 10, NULL, NULL),
    (
        'Miraflores',
        92,
        10,
        NULL,
        NULL
    ),
    ('Monzón', 92, 10, NULL, NULL),
    ('Punchao', 92, 10, NULL, NULL),
    ('Puños', 92, 10, NULL, NULL),
    ('Singa', 92, 10, NULL, NULL),
    (
        'Tantamayo',
        92,
        10,
        NULL,
        NULL
    ),
    (
        'Rupa-Rupa',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Daniel Alomía Robles',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Hermílio Valdizan',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'José Crespo y Castillo',
        93,
        10,
        NULL,
        NULL
    ),
    ('Luyando', 93, 10, NULL, NULL),
    (
        'Mariano Damaso Beraun',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Pucayacu',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Castillo Grande',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Pueblo Nuevo',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Santo Domingo de Anda',
        93,
        10,
        NULL,
        NULL
    ),
    (
        'Huacrachuco',
        94,
        10,
        NULL,
        NULL
    ),
    ('Cholon', 94, 10, NULL, NULL),
    (
        'San Buenaventura',
        94,
        10,
        NULL,
        NULL
    ),
    (
        'La Morada',
        94,
        10,
        NULL,
        NULL
    ),
    (
        'Santa Rosa de Alto Yanajanca',
        94,
        10,
        NULL,
        NULL
    ),
    ('Panao', 95, 10, NULL, NULL),
    ('Chaglla', 95, 10, NULL, NULL),
    ('Molino', 95, 10, NULL, NULL),
    ('Umari', 95, 10, NULL, NULL),
    (
        'Puerto Inca',
        96,
        10,
        NULL,
        NULL
    ),
    (
        'Codo del Pozuzo',
        96,
        10,
        NULL,
        NULL
    ),
    ('Honoria', 96, 10, NULL, NULL),
    (
        'Tournavista',
        96,
        10,
        NULL,
        NULL
    ),
    (
        'Yuyapichis',
        96,
        10,
        NULL,
        NULL
    ),
    ('Jesús', 97, 10, NULL, NULL),
    ('Baños', 97, 10, NULL, NULL),
    ('Jivia', 97, 10, NULL, NULL),
    (
        'Queropalca',
        97,
        10,
        NULL,
        NULL
    ),
    ('Rondos', 97, 10, NULL, NULL),
    (
        'San Francisco de Asís',
        97,
        10,
        NULL,
        NULL
    ),
    (
        'San Miguel de Cauri',
        97,
        10,
        NULL,
        NULL
    ),
    (
        'Chavinillo',
        98,
        10,
        NULL,
        NULL
    ),
    ('Cahuac', 98, 10, NULL, NULL),
    (
        'Chacabamba',
        98,
        10,
        NULL,
        NULL
    ),
    (
        'Aparicio Pomares',
        98,
        10,
        NULL,
        NULL
    ),
    (
        'Jacas Chico',
        98,
        10,
        NULL,
        NULL
    ),
    ('Obas', 98, 10, NULL, NULL),
    (
        'Pampamarca',
        98,
        10,
        NULL,
        NULL
    ),
    ('Choras', 98, 10, NULL, NULL),
    ('Ica', 99, 11, NULL, NULL),
    (
        'La Tinguiña',
        99,
        11,
        NULL,
        NULL
    ),
    (
        'Los Aquijes',
        99,
        11,
        NULL,
        NULL
    ),
    ('Ocucaje', 99, 11, NULL, NULL),
    (
        'Pachacutec',
        99,
        11,
        NULL,
        NULL
    ),
    ('Parcona', 99, 11, NULL, NULL),
    (
        'Pueblo Nuevo',
        99,
        11,
        NULL,
        NULL
    ),
    ('Salas', 99, 11, NULL, NULL),
    (
        'San José de Los Molinos',
        99,
        11,
        NULL,
        NULL
    ),
    (
        'San Juan Bautista',
        99,
        11,
        NULL,
        NULL
    ),
    (
        'Santiago',
        99,
        11,
        NULL,
        NULL
    ),
    (
        'Subtanjalla',
        99,
        11,
        NULL,
        NULL
    ),
    ('Tate', 99, 11, NULL, NULL),
    (
        'Yauca del Rosario',
        99,
        11,
        NULL,
        NULL
    ),
    (
        'Chincha Alta',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'Alto Laran',
        100,
        11,
        NULL,
        NULL
    ),
    ('Chavin', 100, 11, NULL, NULL),
    (
        'Chincha Baja',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'El Carmen',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'Grocio Prado',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'Pueblo Nuevo',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'San Juan de Yanac',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'San Pedro de Huacarpana',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'Sunampe',
        100,
        11,
        NULL,
        NULL
    ),
    (
        'Tambo de Mora',
        100,
        11,
        NULL,
        NULL
    ),
    ('Nasca', 101, 11, NULL, NULL),
    (
        'Changuillo',
        101,
        11,
        NULL,
        NULL
    ),
    (
        'El Ingenio',
        101,
        11,
        NULL,
        NULL
    ),
    (
        'Marcona',
        101,
        11,
        NULL,
        NULL
    ),
    (
        'Vista Alegre',
        101,
        11,
        NULL,
        NULL
    ),
    ('Palpa', 102, 11, NULL, NULL),
    (
        'Llipata',
        102,
        11,
        NULL,
        NULL
    ),
    (
        'Río Grande',
        102,
        11,
        NULL,
        NULL
    ),
    (
        'Santa Cruz',
        102,
        11,
        NULL,
        NULL
    ),
    (
        'Tibillo',
        102,
        11,
        NULL,
        NULL
    ),
    ('Pisco', 103, 11, NULL, NULL),
    (
        'Huancano',
        103,
        11,
        NULL,
        NULL
    ),
    ('Humay', 103, 11, NULL, NULL),
    (
        'Independencia',
        103,
        11,
        NULL,
        NULL
    ),
    (
        'Paracas',
        103,
        11,
        NULL,
        NULL
    ),
    (
        'San Andrés',
        103,
        11,
        NULL,
        NULL
    ),
    (
        'San Clemente',
        103,
        11,
        NULL,
        NULL
    ),
    (
        'Tupac Amaru Inca',
        103,
        11,
        NULL,
        NULL
    ),
    (
        'Huancayo',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Carhuacallanga',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Chacapampa',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Chicche',
        104,
        12,
        NULL,
        NULL
    ),
    ('Chilca', 104, 12, NULL, NULL),
    (
        'Chongos Alto',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Chupuro',
        104,
        12,
        NULL,
        NULL
    ),
    ('Colca', 104, 12, NULL, NULL),
    (
        'Cullhuas',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'El Tambo',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Huacrapuquio',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Hualhuas',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Huancan',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Huasicancha',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Huayucachi',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Ingenio',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Pariahuanca',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Pilcomayo',
        104,
        12,
        NULL,
        NULL
    ),
    ('Pucara', 104, 12, NULL, NULL),
    (
        'Quichuay',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'Quilcas',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'San Agustín',
        104,
        12,
        NULL,
        NULL
    ),
    (
        'San Jerónimo de Tunan',
        104,
        12,
        NULL,
        NULL
    ),
    ('Saño', 104, 12, NULL, NULL),
    (
        'Sapallanga',
        104,
        12,
        NULL,
        NULL
    ),
    ('Sicaya', 104, 12, NULL, NULL),
    (
        'Santo Domingo de Acobamba',
        104,
        12,
        NULL,
        NULL
    ),
    ('Viques', 104, 12, NULL, NULL),
    (
        'Concepción',
        105,
        12,
        NULL,
        NULL
    ),
    ('Aco', 105, 12, NULL, NULL),
    (
        'Andamarca',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Chambara',
        105,
        12,
        NULL,
        NULL
    ),
    ('Cochas', 105, 12, NULL, NULL),
    ('Comas', 105, 12, NULL, NULL),
    (
        'Heroínas Toledo',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Manzanares',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Mariscal Castilla',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Matahuasi',
        105,
        12,
        NULL,
        NULL
    ),
    ('Mito', 105, 12, NULL, NULL),
    (
        'Nueve de Julio',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Orcotuna',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'San José de Quero',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Santa Rosa de Ocopa',
        105,
        12,
        NULL,
        NULL
    ),
    (
        'Chanchamayo',
        106,
        12,
        NULL,
        NULL
    ),
    ('Perene', 106, 12, NULL, NULL),
    (
        'Pichanaqui',
        106,
        12,
        NULL,
        NULL
    ),
    (
        'San Luis de Shuaro',
        106,
        12,
        NULL,
        NULL
    ),
    (
        'San Ramón',
        106,
        12,
        NULL,
        NULL
    ),
    ('Vitoc', 106, 12, NULL, NULL),
    ('Jauja', 107, 12, NULL, NULL),
    ('Acolla', 107, 12, NULL, NULL),
    ('Apata', 107, 12, NULL, NULL),
    ('Ataura', 107, 12, NULL, NULL),
    (
        'Canchayllo',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Curicaca',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'El Mantaro',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Huamali',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Huaripampa',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Huertas',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Janjaillo',
        107,
        12,
        NULL,
        NULL
    ),
    ('Julcán', 107, 12, NULL, NULL),
    (
        'Leonor Ordóñez',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Llocllapampa',
        107,
        12,
        NULL,
        NULL
    ),
    ('Marco', 107, 12, NULL, NULL),
    ('Masma', 107, 12, NULL, NULL),
    (
        'Masma Chicche',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Molinos',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'Monobamba',
        107,
        12,
        NULL,
        NULL
    ),
    ('Muqui', 107, 12, NULL, NULL),
    (
        'Muquiyauyo',
        107,
        12,
        NULL,
        NULL
    ),
    ('Paca', 107, 12, NULL, NULL),
    ('Paccha', 107, 12, NULL, NULL),
    ('Pancan', 107, 12, NULL, NULL),
    ('Parco', 107, 12, NULL, NULL),
    (
        'Pomacancha',
        107,
        12,
        NULL,
        NULL
    ),
    ('Ricran', 107, 12, NULL, NULL),
    (
        'San Lorenzo',
        107,
        12,
        NULL,
        NULL
    ),
    (
        'San Pedro de Chunan',
        107,
        12,
        NULL,
        NULL
    ),
    ('Sausa', 107, 12, NULL, NULL),
    ('Sincos', 107, 12, NULL, NULL),
    (
        'Tunan Marca',
        107,
        12,
        NULL,
        NULL
    ),
    ('Yauli', 107, 12, NULL, NULL),
    ('Yauyos', 107, 12, NULL, NULL),
    ('Junin', 108, 12, NULL, NULL),
    (
        'Carhuamayo',
        108,
        12,
        NULL,
        NULL
    ),
    (
        'Ondores',
        108,
        12,
        NULL,
        NULL
    ),
    (
        'Ulcumayo',
        108,
        12,
        NULL,
        NULL
    ),
    ('Satipo', 109, 12, NULL, NULL),
    (
        'Coviriali',
        109,
        12,
        NULL,
        NULL
    ),
    (
        'Llaylla',
        109,
        12,
        NULL,
        NULL
    ),
    (
        'Mazamari',
        109,
        12,
        NULL,
        NULL
    ),
    (
        'Pampa Hermosa',
        109,
        12,
        NULL,
        NULL
    ),
    ('Pangoa', 109, 12, NULL, NULL),
    (
        'Río Negro',
        109,
        12,
        NULL,
        NULL
    ),
    (
        'Río Tambo',
        109,
        12,
        NULL,
        NULL
    ),
    (
        'Vizcatan del Ene',
        109,
        12,
        NULL,
        NULL
    ),
    ('Tarma', 110, 12, NULL, NULL),
    (
        'Acobamba',
        110,
        12,
        NULL,
        NULL
    ),
    (
        'Huaricolca',
        110,
        12,
        NULL,
        NULL
    ),
    (
        'Huasahuasi',
        110,
        12,
        NULL,
        NULL
    ),
    (
        'La Unión',
        110,
        12,
        NULL,
        NULL
    ),
    ('Palca', 110, 12, NULL, NULL),
    (
        'Palcamayo',
        110,
        12,
        NULL,
        NULL
    ),
    (
        'San Pedro de Cajas',
        110,
        12,
        NULL,
        NULL
    ),
    ('Tapo', 110, 12, NULL, NULL),
    (
        'La Oroya',
        111,
        12,
        NULL,
        NULL
    ),
    (
        'Chacapalpa',
        111,
        12,
        NULL,
        NULL
    ),
    (
        'Huay-Huay',
        111,
        12,
        NULL,
        NULL
    ),
    (
        'Marcapomacocha',
        111,
        12,
        NULL,
        NULL
    ),
    (
        'Morococha',
        111,
        12,
        NULL,
        NULL
    ),
    ('Paccha', 111, 12, NULL, NULL),
    (
        'Santa Bárbara de Carhuacayan',
        111,
        12,
        NULL,
        NULL
    ),
    (
        'Santa Rosa de Sacco',
        111,
        12,
        NULL,
        NULL
    ),
    (
        'Suitucancha',
        111,
        12,
        NULL,
        NULL
    ),
    ('Yauli', 111, 12, NULL, NULL),
    (
        'Chupaca',
        112,
        12,
        NULL,
        NULL
    ),
    ('Ahuac', 112, 12, NULL, NULL),
    (
        'Chongos Bajo',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'Huachac',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'Huamancaca Chico',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'San Juan de Iscos',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'San Juan de Jarpa',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'Tres de Diciembre',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'Yanacancha',
        112,
        12,
        NULL,
        NULL
    ),
    (
        'Trujillo',
        113,
        13,
        NULL,
        NULL
    ),
    (
        'El Porvenir',
        113,
        13,
        NULL,
        NULL
    ),
    (
        'Florencia de Mora',
        113,
        13,
        NULL,
        NULL
    ),
    (
        'Huanchaco',
        113,
        13,
        NULL,
        NULL
    ),
    (
        'La Esperanza',
        113,
        13,
        NULL,
        NULL
    ),
    ('Laredo', 113, 13, NULL, NULL),
    ('Moche', 113, 13, NULL, NULL),
    ('Poroto', 113, 13, NULL, NULL),
    (
        'Salaverry',
        113,
        13,
        NULL,
        NULL
    ),
    ('Simbal', 113, 13, NULL, NULL),
    (
        'Victor Larco Herrera',
        113,
        13,
        NULL,
        NULL
    ),
    ('Ascope', 114, 13, NULL, NULL),
    (
        'Chicama',
        114,
        13,
        NULL,
        NULL
    ),
    (
        'Chocope',
        114,
        13,
        NULL,
        NULL
    ),
    (
        'Magdalena de Cao',
        114,
        13,
        NULL,
        NULL
    ),
    ('Paijan', 114, 13, NULL, NULL),
    ('Rázuri', 114, 13, NULL, NULL),
    (
        'Santiago de Cao',
        114,
        13,
        NULL,
        NULL
    ),
    (
        'Casa Grande',
        114,
        13,
        NULL,
        NULL
    ),
    (
        'Bolívar',
        115,
        13,
        NULL,
        NULL
    ),
    (
        'Bambamarca',
        115,
        13,
        NULL,
        NULL
    ),
    (
        'Condormarca',
        115,
        13,
        NULL,
        NULL
    ),
    (
        'Longotea',
        115,
        13,
        NULL,
        NULL
    ),
    (
        'Uchumarca',
        115,
        13,
        NULL,
        NULL
    ),
    (
        'Ucuncha',
        115,
        13,
        NULL,
        NULL
    ),
    ('Chepen', 116, 13, NULL, NULL),
    (
        'Pacanga',
        116,
        13,
        NULL,
        NULL
    ),
    (
        'Pueblo Nuevo',
        116,
        13,
        NULL,
        NULL
    ),
    ('Julcan', 117, 13, NULL, NULL),
    (
        'Calamarca',
        117,
        13,
        NULL,
        NULL
    ),
    (
        'Carabamba',
        117,
        13,
        NULL,
        NULL
    ),
    ('Huaso', 117, 13, NULL, NULL),
    ('Otuzco', 118, 13, NULL, NULL),
    (
        'Agallpampa',
        118,
        13,
        NULL,
        NULL
    ),
    ('Charat', 118, 13, NULL, NULL),
    (
        'Huaranchal',
        118,
        13,
        NULL,
        NULL
    ),
    (
        'La Cuesta',
        118,
        13,
        NULL,
        NULL
    ),
    ('Mache', 118, 13, NULL, NULL),
    (
        'Paranday',
        118,
        13,
        NULL,
        NULL
    ),
    ('Salpo', 118, 13, NULL, NULL),
    (
        'Sinsicap',
        118,
        13,
        NULL,
        NULL
    ),
    ('Usquil', 118, 13, NULL, NULL),
    (
        'San Pedro de Lloc',
        119,
        13,
        NULL,
        NULL
    ),
    (
        'Guadalupe',
        119,
        13,
        NULL,
        NULL
    ),
    (
        'Jequetepeque',
        119,
        13,
        NULL,
        NULL
    ),
    (
        'Pacasmayo',
        119,
        13,
        NULL,
        NULL
    ),
    (
        'San José',
        119,
        13,
        NULL,
        NULL
    ),
    (
        'Tayabamba',
        120,
        13,
        NULL,
        NULL
    ),
    (
        'Buldibuyo',
        120,
        13,
        NULL,
        NULL
    ),
    (
        'Chillia',
        120,
        13,
        NULL,
        NULL
    ),
    (
        'Huancaspata',
        120,
        13,
        NULL,
        NULL
    ),
    (
        'Huaylillas',
        120,
        13,
        NULL,
        NULL
    ),
    ('Huayo', 120, 13, NULL, NULL),
    ('Ongon', 120, 13, NULL, NULL),
    ('Parcoy', 120, 13, NULL, NULL),
    ('Pataz', 120, 13, NULL, NULL),
    ('Pias', 120, 13, NULL, NULL),
    (
        'Santiago de Challas',
        120,
        13,
        NULL,
        NULL
    ),
    (
        'Taurija',
        120,
        13,
        NULL,
        NULL
    ),
    ('Urpay', 120, 13, NULL, NULL),
    (
        'Huamachuco',
        121,
        13,
        NULL,
        NULL
    ),
    ('Chugay', 121, 13, NULL, NULL),
    (
        'Cochorco',
        121,
        13,
        NULL,
        NULL
    ),
    ('Curgos', 121, 13, NULL, NULL),
    (
        'Marcabal',
        121,
        13,
        NULL,
        NULL
    ),
    (
        'Sanagoran',
        121,
        13,
        NULL,
        NULL
    ),
    ('Sarin', 121, 13, NULL, NULL),
    (
        'Sartimbamba',
        121,
        13,
        NULL,
        NULL
    ),
    (
        'Santiago de Chuco',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Angasmarca',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Cachicadan',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Mollebamba',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Mollepata',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Quiruvilca',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Santa Cruz de Chuca',
        122,
        13,
        NULL,
        NULL
    ),
    (
        'Sitabamba',
        122,
        13,
        NULL,
        NULL
    ),
    ('Cascas', 123, 13, NULL, NULL),
    ('Lucma', 123, 13, NULL, NULL),
    ('Marmot', 123, 13, NULL, NULL),
    (
        'Sayapullo',
        123,
        13,
        NULL,
        NULL
    ),
    ('Viru', 124, 13, NULL, NULL),
    ('Chao', 124, 13, NULL, NULL),
    (
        'Guadalupito',
        124,
        13,
        NULL,
        NULL
    ),
    (
        'Chiclayo',
        125,
        14,
        NULL,
        NULL
    ),
    (
        'Chongoyape',
        125,
        14,
        NULL,
        NULL
    ),
    ('Eten', 125, 14, NULL, NULL),
    (
        'Eten Puerto',
        125,
        14,
        NULL,
        NULL
    ),
    (
        'José Leonardo Ortiz',
        125,
        14,
        NULL,
        NULL
    ),
    (
        'La Victoria',
        125,
        14,
        NULL,
        NULL
    ),
    (
        'Lagunas',
        125,
        14,
        NULL,
        NULL
    ),
    (
        'Monsefu',
        125,
        14,
        NULL,
        NULL
    ),
    (
        'Nueva Arica',
        125,
        14,
        NULL,
        NULL
    ),
    ('Oyotun', 125, 14, NULL, NULL),
    ('Picsi', 125, 14, NULL, NULL),
    (
        'Pimentel',
        125,
        14,
        NULL,
        NULL
    ),
    ('Reque', 125, 14, NULL, NULL),
    (
        'Santa Rosa',
        125,
        14,
        NULL,
        NULL
    ),
    ('Saña', 125, 14, NULL, NULL),
    (
        'Cayalti',
        125,
        14,
        NULL,
        NULL
    ),
    ('Patapo', 125, 14, NULL, NULL),
    (
        'Pomalca',
        125,
        14,
        NULL,
        NULL
    ),
    ('Pucala', 125, 14, NULL, NULL),
    ('Tuman', 125, 14, NULL, NULL),
    (
        'Ferreñafe',
        126,
        14,
        NULL,
        NULL
    ),
    (
        'Cañaris',
        126,
        14,
        NULL,
        NULL
    ),
    (
        'Incahuasi',
        126,
        14,
        NULL,
        NULL
    ),
    (
        'Manuel Antonio Mesones Muro',
        126,
        14,
        NULL,
        NULL
    ),
    ('Pitipo', 126, 14, NULL, NULL),
    (
        'Pueblo Nuevo',
        126,
        14,
        NULL,
        NULL
    ),
    (
        'Lambayeque',
        127,
        14,
        NULL,
        NULL
    ),
    (
        'Chochope',
        127,
        14,
        NULL,
        NULL
    ),
    ('Illimo', 127, 14, NULL, NULL),
    (
        'Jayanca',
        127,
        14,
        NULL,
        NULL
    ),
    (
        'Mochumi',
        127,
        14,
        NULL,
        NULL
    ),
    (
        'Morrope',
        127,
        14,
        NULL,
        NULL
    ),
    ('Motupe', 127, 14, NULL, NULL),
    ('Olmos', 127, 14, NULL, NULL),
    ('Pacora', 127, 14, NULL, NULL),
    ('Salas', 127, 14, NULL, NULL),
    (
        'San José',
        127,
        14,
        NULL,
        NULL
    ),
    ('Tucume', 127, 14, NULL, NULL),
    ('Lima', 128, 15, NULL, NULL),
    ('Ancón', 128, 15, NULL, NULL),
    ('Ate', 128, 15, NULL, NULL),
    (
        'Barranco',
        128,
        15,
        NULL,
        NULL
    ),
    ('Breña', 128, 15, NULL, NULL),
    (
        'Carabayllo',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Chaclacayo',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Chorrillos',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Cieneguilla',
        128,
        15,
        NULL,
        NULL
    ),
    ('Comas', 128, 15, NULL, NULL),
    (
        'El Agustino',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Independencia',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Jesús María',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'La Molina',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'La Victoria',
        128,
        15,
        NULL,
        NULL
    ),
    ('Lince', 128, 15, NULL, NULL),
    (
        'Los Olivos',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Lurigancho',
        128,
        15,
        NULL,
        NULL
    ),
    ('Lurin', 128, 15, NULL, NULL),
    (
        'Magdalena del Mar',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Pueblo Libre',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Miraflores',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Pachacamac',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Pucusana',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Puente Piedra',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Punta Hermosa',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Punta Negra',
        128,
        15,
        NULL,
        NULL
    ),
    ('Rímac', 128, 15, NULL, NULL),
    (
        'San Bartolo',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Borja',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Isidro',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Juan de Lurigancho',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Juan de Miraflores',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Luis',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Martín de Porres',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'San Miguel',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Anita',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Santa María del Mar',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Santiago de Surco',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Surquillo',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Villa El Salvador',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Villa María del Triunfo',
        128,
        15,
        NULL,
        NULL
    ),
    (
        'Barranca',
        129,
        15,
        NULL,
        NULL
    ),
    (
        'Paramonga',
        129,
        15,
        NULL,
        NULL
    ),
    (
        'Pativilca',
        129,
        15,
        NULL,
        NULL
    ),
    ('Supe', 129, 15, NULL, NULL),
    (
        'Supe Puerto',
        129,
        15,
        NULL,
        NULL
    ),
    (
        'Cajatambo',
        130,
        15,
        NULL,
        NULL
    ),
    ('Copa', 130, 15, NULL, NULL),
    ('Gorgor', 130, 15, NULL, NULL),
    (
        'Huancapon',
        130,
        15,
        NULL,
        NULL
    ),
    ('Manas', 130, 15, NULL, NULL),
    ('Canta', 131, 15, NULL, NULL),
    (
        'Arahuay',
        131,
        15,
        NULL,
        NULL
    ),
    (
        'Huamantanga',
        131,
        15,
        NULL,
        NULL
    ),
    ('Huaros', 131, 15, NULL, NULL),
    (
        'Lachaqui',
        131,
        15,
        NULL,
        NULL
    ),
    (
        'San Buenaventura',
        131,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Rosa de Quives',
        131,
        15,
        NULL,
        NULL
    ),
    (
        'San Vicente de Cañete',
        132,
        15,
        NULL,
        NULL
    ),
    ('Asia', 132, 15, NULL, NULL),
    (
        'Calango',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'Cerro Azul',
        132,
        15,
        NULL,
        NULL
    ),
    ('Chilca', 132, 15, NULL, NULL),
    (
        'Coayllo',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'Imperial',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'Lunahuana',
        132,
        15,
        NULL,
        NULL
    ),
    ('Mala', 132, 15, NULL, NULL),
    (
        'Nuevo Imperial',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'Pacaran',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'Quilmana',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'San Antonio',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'San Luis',
        132,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Cruz de Flores',
        132,
        15,
        NULL,
        NULL
    ),
    ('Zúñiga', 132, 15, NULL, NULL),
    ('Huaral', 133, 15, NULL, NULL),
    (
        'Atavillos Alto',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Atavillos Bajo',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Aucallama',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Chancay',
        133,
        15,
        NULL,
        NULL
    ),
    ('Ihuari', 133, 15, NULL, NULL),
    (
        'Lampian',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Pacaraos',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'San Miguel de Acos',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Cruz de Andamarca',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Sumbilca',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Veintisiete de Noviembre',
        133,
        15,
        NULL,
        NULL
    ),
    (
        'Matucana',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Antioquia',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Callahuanca',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Carampoma',
        134,
        15,
        NULL,
        NULL
    ),
    ('Chicla', 134, 15, NULL, NULL),
    ('Cuenca', 134, 15, NULL, NULL),
    (
        'Huachupampa',
        134,
        15,
        NULL,
        NULL
    ),
    ('Huanza', 134, 15, NULL, NULL),
    (
        'Huarochiri',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Lahuaytambo',
        134,
        15,
        NULL,
        NULL
    ),
    ('Langa', 134, 15, NULL, NULL),
    ('Laraos', 134, 15, NULL, NULL),
    (
        'Mariatana',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Ricardo Palma',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Andrés de Tupicocha',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Antonio',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Bartolomé',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Damian',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Juan de Iris',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Juan de Tantaranche',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Lorenzo de Quinti',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Mateo',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Mateo de Otao',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Pedro de Casta',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'San Pedro de Huancayre',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Sangallaya',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Cruz de Cocachacra',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Santa Eulalia',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Santiago de Anchucaya',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Santiago de Tuna',
        134,
        15,
        NULL,
        NULL
    ),
    (
        'Santo Domingo de Los Olleros',
        134,
        15,
        NULL,
        NULL
    ),
    ('Surco', 134, 15, NULL, NULL),
    ('Huacho', 135, 15, NULL, NULL),
    ('Ambar', 135, 15, NULL, NULL),
    (
        'Caleta de Carquin',
        135,
        15,
        NULL,
        NULL
    ),
    (
        'Checras',
        135,
        15,
        NULL,
        NULL
    ),
    (
        'Hualmay',
        135,
        15,
        NULL,
        NULL
    ),
    ('Huaura', 135, 15, NULL, NULL),
    (
        'Leoncio Prado',
        135,
        15,
        NULL,
        NULL
    ),
    ('Paccho', 135, 15, NULL, NULL),
    (
        'Santa Leonor',
        135,
        15,
        NULL,
        NULL
    ),
    (
        'Santa María',
        135,
        15,
        NULL,
        NULL
    ),
    ('Sayan', 135, 15, NULL, NULL),
    (
        'Vegueta',
        135,
        15,
        NULL,
        NULL
    ),
    ('Oyon', 136, 15, NULL, NULL),
    (
        'Andajes',
        136,
        15,
        NULL,
        NULL
    ),
    ('Caujul', 136, 15, NULL, NULL),
    (
        'Cochamarca',
        136,
        15,
        NULL,
        NULL
    ),
    ('Navan', 136, 15, NULL, NULL),
    (
        'Pachangara',
        136,
        15,
        NULL,
        NULL
    ),
    ('Yauyos', 137, 15, NULL, NULL),
    ('Alis', 137, 15, NULL, NULL),
    (
        'Allauca',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Ayaviri',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Azángaro',
        137,
        15,
        NULL,
        NULL
    ),
    ('Cacra', 137, 15, NULL, NULL),
    (
        'Carania',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Catahuasi',
        137,
        15,
        NULL,
        NULL
    ),
    ('Chocos', 137, 15, NULL, NULL),
    ('Cochas', 137, 15, NULL, NULL),
    (
        'Colonia',
        137,
        15,
        NULL,
        NULL
    ),
    ('Hongos', 137, 15, NULL, NULL),
    (
        'Huampara',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Huancaya',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Huangascar',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Huantan',
        137,
        15,
        NULL,
        NULL
    ),
    ('Huañec', 137, 15, NULL, NULL),
    ('Laraos', 137, 15, NULL, NULL),
    ('Lincha', 137, 15, NULL, NULL),
    ('Madean', 137, 15, NULL, NULL),
    (
        'Miraflores',
        137,
        15,
        NULL,
        NULL
    ),
    ('Omas', 137, 15, NULL, NULL),
    (
        'Putinza',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Quinches',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'Quinocay',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'San Joaquín',
        137,
        15,
        NULL,
        NULL
    ),
    (
        'San Pedro de Pilas',
        137,
        15,
        NULL,
        NULL
    ),
    ('Tanta', 137, 15, NULL, NULL),
    (
        'Tauripampa',
        137,
        15,
        NULL,
        NULL
    ),
    ('Tomas', 137, 15, NULL, NULL),
    ('Tupe', 137, 15, NULL, NULL),
    ('Viñac', 137, 15, NULL, NULL),
    ('Vitis', 137, 15, NULL, NULL),
    (
        'Iquitos',
        138,
        16,
        NULL,
        NULL
    ),
    (
        'Alto Nanay',
        138,
        16,
        NULL,
        NULL
    ),
    (
        'Fernando Lores',
        138,
        16,
        NULL,
        NULL
    ),
    (
        'Indiana',
        138,
        16,
        NULL,
        NULL
    ),
    (
        'Las Amazonas',
        138,
        16,
        NULL,
        NULL
    ),
    ('Mazan', 138, 16, NULL, NULL),
    ('Napo', 138, 16, NULL, NULL),
    (
        'Punchana',
        138,
        16,
        NULL,
        NULL
    ),
    (
        'Torres Causana',
        138,
        16,
        NULL,
        NULL
    ),
    ('Belén', 138, 16, NULL, NULL),
    (
        'San Juan Bautista',
        138,
        16,
        NULL,
        NULL
    ),
    (
        'Yurimaguas',
        139,
        16,
        NULL,
        NULL
    ),
    (
        'Balsapuerto',
        139,
        16,
        NULL,
        NULL
    ),
    (
        'Jeberos',
        139,
        16,
        NULL,
        NULL
    ),
    (
        'Lagunas',
        139,
        16,
        NULL,
        NULL
    ),
    (
        'Santa Cruz',
        139,
        16,
        NULL,
        NULL
    ),
    (
        'Teniente Cesar López Rojas',
        139,
        16,
        NULL,
        NULL
    ),
    ('Nauta', 140, 16, NULL, NULL),
    (
        'Parinari',
        140,
        16,
        NULL,
        NULL
    ),
    ('Tigre', 140, 16, NULL, NULL),
    (
        'Trompeteros',
        140,
        16,
        NULL,
        NULL
    ),
    (
        'Urarinas',
        140,
        16,
        NULL,
        NULL
    ),
    (
        'Ramón Castilla',
        141,
        16,
        NULL,
        NULL
    ),
    ('Pebas', 141, 16, NULL, NULL),
    ('Yavari', 141, 16, NULL, NULL),
    (
        'San Pablo',
        141,
        16,
        NULL,
        NULL
    ),
    (
        'Requena',
        142,
        16,
        NULL,
        NULL
    ),
    (
        'Alto Tapiche',
        142,
        16,
        NULL,
        NULL
    ),
    ('Capelo', 142, 16, NULL, NULL),
    (
        'Emilio San Martín',
        142,
        16,
        NULL,
        NULL
    ),
    ('Maquia', 142, 16, NULL, NULL),
    (
        'Puinahua',
        142,
        16,
        NULL,
        NULL
    ),
    (
        'Saquena',
        142,
        16,
        NULL,
        NULL
    ),
    ('Soplin', 142, 16, NULL, NULL),
    (
        'Tapiche',
        142,
        16,
        NULL,
        NULL
    ),
    (
        'Jenaro Herrera',
        142,
        16,
        NULL,
        NULL
    ),
    (
        'Yaquerana',
        142,
        16,
        NULL,
        NULL
    ),
    (
        'Contamana',
        143,
        16,
        NULL,
        NULL
    ),
    (
        'Inahuaya',
        143,
        16,
        NULL,
        NULL
    ),
    (
        'Padre Márquez',
        143,
        16,
        NULL,
        NULL
    ),
    (
        'Pampa Hermosa',
        143,
        16,
        NULL,
        NULL
    ),
    (
        'Sarayacu',
        143,
        16,
        NULL,
        NULL
    ),
    (
        'Vargas Guerra',
        143,
        16,
        NULL,
        NULL
    ),
    (
        'Barranca',
        144,
        16,
        NULL,
        NULL
    ),
    (
        'Cahuapanas',
        144,
        16,
        NULL,
        NULL
    ),
    (
        'Manseriche',
        144,
        16,
        NULL,
        NULL
    ),
    ('Morona', 144, 16, NULL, NULL),
    (
        'Pastaza',
        144,
        16,
        NULL,
        NULL
    ),
    ('Andoas', 144, 16, NULL, NULL),
    (
        'Putumayo',
        145,
        16,
        NULL,
        NULL
    ),
    (
        'Rosa Panduro',
        145,
        16,
        NULL,
        NULL
    ),
    (
        'Teniente Manuel Clavero',
        145,
        16,
        NULL,
        NULL
    ),
    ('Yaguas', 145, 16, NULL, NULL),
    (
        'Tambopata',
        146,
        17,
        NULL,
        NULL
    ),
    (
        'Inambari',
        146,
        17,
        NULL,
        NULL
    ),
    (
        'Las Piedras',
        146,
        17,
        NULL,
        NULL
    ),
    (
        'Laberinto',
        146,
        17,
        NULL,
        NULL
    ),
    ('Manu', 147, 17, NULL, NULL),
    (
        'Fitzcarrald',
        147,
        17,
        NULL,
        NULL
    ),
    (
        'Madre de Dios',
        147,
        17,
        NULL,
        NULL
    ),
    (
        'Huepetuhe',
        147,
        17,
        NULL,
        NULL
    ),
    (
        'Iñapari',
        148,
        17,
        NULL,
        NULL
    ),
    ('Iberia', 148, 17, NULL, NULL),
    (
        'Tahuamanu',
        148,
        17,
        NULL,
        NULL
    ),
    (
        'Moquegua',
        149,
        18,
        NULL,
        NULL
    ),
    (
        'Carumas',
        149,
        18,
        NULL,
        NULL
    ),
    (
        'Cuchumbaya',
        149,
        18,
        NULL,
        NULL
    ),
    (
        'Samegua',
        149,
        18,
        NULL,
        NULL
    ),
    (
        'San Cristóbal',
        149,
        18,
        NULL,
        NULL
    ),
    ('Torata', 149, 18, NULL, NULL),
    ('Omate', 150, 18, NULL, NULL),
    (
        'Chojata',
        150,
        18,
        NULL,
        NULL
    ),
    (
        'Coalaque',
        150,
        18,
        NULL,
        NULL
    ),
    ('Ichuña', 150, 18, NULL, NULL),
    (
        'La Capilla',
        150,
        18,
        NULL,
        NULL
    ),
    ('Lloque', 150, 18, NULL, NULL),
    (
        'Matalaque',
        150,
        18,
        NULL,
        NULL
    ),
    (
        'Puquina',
        150,
        18,
        NULL,
        NULL
    ),
    (
        'Quinistaquillas',
        150,
        18,
        NULL,
        NULL
    ),
    ('Ubinas', 150, 18, NULL, NULL),
    ('Yunga', 150, 18, NULL, NULL),
    ('Ilo', 151, 18, NULL, NULL),
    (
        'El Algarrobal',
        151,
        18,
        NULL,
        NULL
    ),
    (
        'Pacocha',
        151,
        18,
        NULL,
        NULL
    ),
    (
        'Chaupimarca',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Huachon',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Huariaca',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Huayllay',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Ninacaca',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Pallanchacra',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Paucartambo',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'San Francisco de Asís de Yarusyacan',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Simon Bolívar',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Ticlacayan',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Tinyahuarco',
        152,
        19,
        NULL,
        NULL
    ),
    ('Vicco', 152, 19, NULL, NULL),
    (
        'Yanacancha',
        152,
        19,
        NULL,
        NULL
    ),
    (
        'Yanahuanca',
        153,
        19,
        NULL,
        NULL
    ),
    (
        'Chacayan',
        153,
        19,
        NULL,
        NULL
    ),
    (
        'Goyllarisquizga',
        153,
        19,
        NULL,
        NULL
    ),
    ('Paucar', 153, 19, NULL, NULL),
    (
        'San Pedro de Pillao',
        153,
        19,
        NULL,
        NULL
    ),
    (
        'Santa Ana de Tusi',
        153,
        19,
        NULL,
        NULL
    ),
    ('Tapuc', 153, 19, NULL, NULL),
    (
        'Vilcabamba',
        153,
        19,
        NULL,
        NULL
    ),
    (
        'Oxapampa',
        154,
        19,
        NULL,
        NULL
    ),
    (
        'Chontabamba',
        154,
        19,
        NULL,
        NULL
    ),
    (
        'Huancabamba',
        154,
        19,
        NULL,
        NULL
    ),
    (
        'Palcazu',
        154,
        19,
        NULL,
        NULL
    ),
    ('Pozuzo', 154, 19, NULL, NULL),
    (
        'Puerto Bermúdez',
        154,
        19,
        NULL,
        NULL
    ),
    (
        'Villa Rica',
        154,
        19,
        NULL,
        NULL
    ),
    (
        'Constitución',
        154,
        19,
        NULL,
        NULL
    ),
    ('Piura', 155, 20, NULL, NULL),
    (
        'Castilla',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'Catacaos',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'Cura Mori',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'El Tallan',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'La Arena',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'La Unión',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'Las Lomas',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'Tambo Grande',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'Veintiseis de Octubre',
        155,
        20,
        NULL,
        NULL
    ),
    (
        'Ayabaca',
        156,
        20,
        NULL,
        NULL
    ),
    ('Frias', 156, 20, NULL, NULL),
    ('Jilili', 156, 20, NULL, NULL),
    (
        'Lagunas',
        156,
        20,
        NULL,
        NULL
    ),
    (
        'Montero',
        156,
        20,
        NULL,
        NULL
    ),
    (
        'Pacaipampa',
        156,
        20,
        NULL,
        NULL
    ),
    ('Paimas', 156, 20, NULL, NULL),
    (
        'Sapillica',
        156,
        20,
        NULL,
        NULL
    ),
    (
        'Sicchez',
        156,
        20,
        NULL,
        NULL
    ),
    ('Suyo', 156, 20, NULL, NULL),
    (
        'Huancabamba',
        157,
        20,
        NULL,
        NULL
    ),
    (
        'Canchaque',
        157,
        20,
        NULL,
        NULL
    ),
    (
        'El Carmen de la Frontera',
        157,
        20,
        NULL,
        NULL
    ),
    (
        'Huarmaca',
        157,
        20,
        NULL,
        NULL
    ),
    (
        'Lalaquiz',
        157,
        20,
        NULL,
        NULL
    ),
    (
        'San Miguel de El Faique',
        157,
        20,
        NULL,
        NULL
    ),
    ('Sondor', 157, 20, NULL, NULL),
    (
        'Sondorillo',
        157,
        20,
        NULL,
        NULL
    ),
    (
        'Chulucanas',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Buenos Aires',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Chalaco',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'La Matanza',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Morropon',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Salitral',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'San Juan de Bigote',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Santa Catalina de Mossa',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Santo Domingo',
        158,
        20,
        NULL,
        NULL
    ),
    (
        'Yamango',
        158,
        20,
        NULL,
        NULL
    ),
    ('Paita', 159, 20, NULL, NULL),
    (
        'Amotape',
        159,
        20,
        NULL,
        NULL
    ),
    ('Arenal', 159, 20, NULL, NULL),
    ('Colan', 159, 20, NULL, NULL),
    (
        'La Huaca',
        159,
        20,
        NULL,
        NULL
    ),
    (
        'Tamarindo',
        159,
        20,
        NULL,
        NULL
    ),
    (
        'Vichayal',
        159,
        20,
        NULL,
        NULL
    ),
    (
        'Sullana',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Bellavista',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Ignacio Escudero',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Lancones',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Marcavelica',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Miguel Checa',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Querecotillo',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Salitral',
        160,
        20,
        NULL,
        NULL
    ),
    (
        'Pariñas',
        161,
        20,
        NULL,
        NULL
    ),
    (
        'El Alto',
        161,
        20,
        NULL,
        NULL
    ),
    (
        'La Brea',
        161,
        20,
        NULL,
        NULL
    ),
    (
        'Lobitos',
        161,
        20,
        NULL,
        NULL
    ),
    (
        'Los Organos',
        161,
        20,
        NULL,
        NULL
    ),
    (
        'Mancora',
        161,
        20,
        NULL,
        NULL
    ),
    (
        'Sechura',
        162,
        20,
        NULL,
        NULL
    ),
    (
        'Bellavista de la Unión',
        162,
        20,
        NULL,
        NULL
    ),
    ('Bernal', 162, 20, NULL, NULL),
    (
        'Cristo Nos Valga',
        162,
        20,
        NULL,
        NULL
    ),
    ('Vice', 162, 20, NULL, NULL),
    (
        'Rinconada Llicuar',
        162,
        20,
        NULL,
        NULL
    ),
    ('Puno', 163, 21, NULL, NULL),
    ('Acora', 163, 21, NULL, NULL),
    (
        'Amantani',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'Atuncolla',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'Capachica',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'Chucuito',
        163,
        21,
        NULL,
        NULL
    ),
    ('Coata', 163, 21, NULL, NULL),
    ('Huata', 163, 21, NULL, NULL),
    ('Mañazo', 163, 21, NULL, NULL),
    (
        'Paucarcolla',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'Pichacani',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'Plateria',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'San Antonio',
        163,
        21,
        NULL,
        NULL
    ),
    (
        'Tiquillaca',
        163,
        21,
        NULL,
        NULL
    ),
    ('Vilque', 163, 21, NULL, NULL),
    (
        'Azángaro',
        164,
        21,
        NULL,
        NULL
    ),
    ('Achaya', 164, 21, NULL, NULL),
    ('Arapa', 164, 21, NULL, NULL),
    ('Asillo', 164, 21, NULL, NULL),
    (
        'Caminaca',
        164,
        21,
        NULL,
        NULL
    ),
    ('Chupa', 164, 21, NULL, NULL),
    (
        'José Domingo Choquehuanca',
        164,
        21,
        NULL,
        NULL
    ),
    ('Muñani', 164, 21, NULL, NULL),
    ('Potoni', 164, 21, NULL, NULL),
    ('Saman', 164, 21, NULL, NULL),
    (
        'San Anton',
        164,
        21,
        NULL,
        NULL
    ),
    (
        'San José',
        164,
        21,
        NULL,
        NULL
    ),
    (
        'San Juan de Salinas',
        164,
        21,
        NULL,
        NULL
    ),
    (
        'Santiago de Pupuja',
        164,
        21,
        NULL,
        NULL
    ),
    (
        'Tirapata',
        164,
        21,
        NULL,
        NULL
    ),
    (
        'Macusani',
        165,
        21,
        NULL,
        NULL
    ),
    (
        'Ajoyani',
        165,
        21,
        NULL,
        NULL
    ),
    (
        'Ayapata',
        165,
        21,
        NULL,
        NULL
    ),
    ('Coasa', 165, 21, NULL, NULL),
    ('Corani', 165, 21, NULL, NULL),
    (
        'Crucero',
        165,
        21,
        NULL,
        NULL
    ),
    ('Ituata', 165, 21, NULL, NULL),
    (
        'Ollachea',
        165,
        21,
        NULL,
        NULL
    ),
    (
        'San Gaban',
        165,
        21,
        NULL,
        NULL
    ),
    (
        'Usicayos',
        165,
        21,
        NULL,
        NULL
    ),
    ('Juli', 166, 21, NULL, NULL),
    (
        'Desaguadero',
        166,
        21,
        NULL,
        NULL
    ),
    (
        'Huacullani',
        166,
        21,
        NULL,
        NULL
    ),
    (
        'Kelluyo',
        166,
        21,
        NULL,
        NULL
    ),
    (
        'Pisacoma',
        166,
        21,
        NULL,
        NULL
    ),
    ('Pomata', 166, 21, NULL, NULL),
    ('Zepita', 166, 21, NULL, NULL),
    ('Ilave', 167, 21, NULL, NULL),
    ('Capazo', 167, 21, NULL, NULL),
    (
        'Pilcuyo',
        167,
        21,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        167,
        21,
        NULL,
        NULL
    ),
    (
        'Conduriri',
        167,
        21,
        NULL,
        NULL
    ),
    (
        'Huancane',
        168,
        21,
        NULL,
        NULL
    ),
    ('Cojata', 168, 21, NULL, NULL),
    (
        'Huatasani',
        168,
        21,
        NULL,
        NULL
    ),
    (
        'Inchupalla',
        168,
        21,
        NULL,
        NULL
    ),
    ('Pusi', 168, 21, NULL, NULL),
    (
        'Rosaspata',
        168,
        21,
        NULL,
        NULL
    ),
    ('Taraco', 168, 21, NULL, NULL),
    (
        'Vilque Chico',
        168,
        21,
        NULL,
        NULL
    ),
    ('Lampa', 169, 21, NULL, NULL),
    (
        'Cabanilla',
        169,
        21,
        NULL,
        NULL
    ),
    (
        'Calapuja',
        169,
        21,
        NULL,
        NULL
    ),
    (
        'Nicasio',
        169,
        21,
        NULL,
        NULL
    ),
    (
        'Ocuviri',
        169,
        21,
        NULL,
        NULL
    ),
    ('Palca', 169, 21, NULL, NULL),
    (
        'Paratia',
        169,
        21,
        NULL,
        NULL
    ),
    ('Pucara', 169, 21, NULL, NULL),
    (
        'Santa Lucia',
        169,
        21,
        NULL,
        NULL
    ),
    (
        'Vilavila',
        169,
        21,
        NULL,
        NULL
    ),
    (
        'Ayaviri',
        170,
        21,
        NULL,
        NULL
    ),
    (
        'Antauta',
        170,
        21,
        NULL,
        NULL
    ),
    ('Cupi', 170, 21, NULL, NULL),
    ('Llalli', 170, 21, NULL, NULL),
    ('Macari', 170, 21, NULL, NULL),
    ('Nuñoa', 170, 21, NULL, NULL),
    (
        'Orurillo',
        170,
        21,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        170,
        21,
        NULL,
        NULL
    ),
    (
        'Umachiri',
        170,
        21,
        NULL,
        NULL
    ),
    ('Moho', 171, 21, NULL, NULL),
    ('Conima', 171, 21, NULL, NULL),
    (
        'Huayrapata',
        171,
        21,
        NULL,
        NULL
    ),
    ('Tilali', 171, 21, NULL, NULL),
    ('Putina', 172, 21, NULL, NULL),
    ('Ananea', 172, 21, NULL, NULL),
    (
        'Pedro Vilca Apaza',
        172,
        21,
        NULL,
        NULL
    ),
    (
        'Quilcapuncu',
        172,
        21,
        NULL,
        NULL
    ),
    ('Sina', 172, 21, NULL, NULL),
    (
        'Juliaca',
        173,
        21,
        NULL,
        NULL
    ),
    ('Cabana', 173, 21, NULL, NULL),
    (
        'Cabanillas',
        173,
        21,
        NULL,
        NULL
    ),
    (
        'Caracoto',
        173,
        21,
        NULL,
        NULL
    ),
    (
        'San Miguel',
        173,
        21,
        NULL,
        NULL
    ),
    ('Sandia', 174, 21, NULL, NULL),
    (
        'Cuyocuyo',
        174,
        21,
        NULL,
        NULL
    ),
    (
        'Limbani',
        174,
        21,
        NULL,
        NULL
    ),
    (
        'Patambuco',
        174,
        21,
        NULL,
        NULL
    ),
    ('Phara', 174, 21, NULL, NULL),
    ('Quiaca', 174, 21, NULL, NULL),
    (
        'San Juan del Oro',
        174,
        21,
        NULL,
        NULL
    ),
    (
        'Yanahuaya',
        174,
        21,
        NULL,
        NULL
    ),
    (
        'Alto Inambari',
        174,
        21,
        NULL,
        NULL
    ),
    (
        'San Pedro de Putina Punco',
        174,
        21,
        NULL,
        NULL
    ),
    (
        'Yunguyo',
        175,
        21,
        NULL,
        NULL
    ),
    ('Anapia', 175, 21, NULL, NULL),
    ('Copani', 175, 21, NULL, NULL),
    (
        'Cuturapi',
        175,
        21,
        NULL,
        NULL
    ),
    (
        'Ollaraya',
        175,
        21,
        NULL,
        NULL
    ),
    (
        'Tinicachi',
        175,
        21,
        NULL,
        NULL
    ),
    (
        'Unicachi',
        175,
        21,
        NULL,
        NULL
    ),
    (
        'Moyobamba',
        176,
        22,
        NULL,
        NULL
    ),
    (
        'Calzada',
        176,
        22,
        NULL,
        NULL
    ),
    ('Habana', 176, 22, NULL, NULL),
    (
        'Jepelacio',
        176,
        22,
        NULL,
        NULL
    ),
    (
        'Soritor',
        176,
        22,
        NULL,
        NULL
    ),
    (
        'Yantalo',
        176,
        22,
        NULL,
        NULL
    ),
    (
        'Bellavista',
        177,
        22,
        NULL,
        NULL
    ),
    (
        'Alto Biavo',
        177,
        22,
        NULL,
        NULL
    ),
    (
        'Bajo Biavo',
        177,
        22,
        NULL,
        NULL
    ),
    (
        'Huallaga',
        177,
        22,
        NULL,
        NULL
    ),
    (
        'San Pablo',
        177,
        22,
        NULL,
        NULL
    ),
    (
        'San Rafael',
        177,
        22,
        NULL,
        NULL
    ),
    (
        'San José de Sisa',
        178,
        22,
        NULL,
        NULL
    ),
    (
        'Agua Blanca',
        178,
        22,
        NULL,
        NULL
    ),
    (
        'San Martín',
        178,
        22,
        NULL,
        NULL
    ),
    (
        'Santa Rosa',
        178,
        22,
        NULL,
        NULL
    ),
    (
        'Shatoja',
        178,
        22,
        NULL,
        NULL
    ),
    (
        'Saposoa',
        179,
        22,
        NULL,
        NULL
    ),
    (
        'Alto Saposoa',
        179,
        22,
        NULL,
        NULL
    ),
    (
        'El Eslabón',
        179,
        22,
        NULL,
        NULL
    ),
    (
        'Piscoyacu',
        179,
        22,
        NULL,
        NULL
    ),
    (
        'Sacanche',
        179,
        22,
        NULL,
        NULL
    ),
    (
        'Tingo de Saposoa',
        179,
        22,
        NULL,
        NULL
    ),
    ('Lamas', 180, 22, NULL, NULL),
    (
        'Alonso de Alvarado',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Barranquita',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Caynarachi',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Cuñumbuqui',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Pinto Recodo',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Rumisapa',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'San Roque de Cumbaza',
        180,
        22,
        NULL,
        NULL
    ),
    ('Shanao', 180, 22, NULL, NULL),
    (
        'Tabalosos',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Zapatero',
        180,
        22,
        NULL,
        NULL
    ),
    (
        'Juanjuí',
        181,
        22,
        NULL,
        NULL
    ),
    (
        'Campanilla',
        181,
        22,
        NULL,
        NULL
    ),
    (
        'Huicungo',
        181,
        22,
        NULL,
        NULL
    ),
    (
        'Pachiza',
        181,
        22,
        NULL,
        NULL
    ),
    (
        'Pajarillo',
        181,
        22,
        NULL,
        NULL
    ),
    ('Picota', 182, 22, NULL, NULL),
    (
        'Buenos Aires',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'Caspisapa',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'Pilluana',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'Pucacaca',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'San Cristóbal',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'San Hilarión',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'Shamboyacu',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'Tingo de Ponasa',
        182,
        22,
        NULL,
        NULL
    ),
    (
        'Tres Unidos',
        182,
        22,
        NULL,
        NULL
    ),
    ('Rioja', 183, 22, NULL, NULL),
    ('Awajun', 183, 22, NULL, NULL),
    (
        'Elías Soplin Vargas',
        183,
        22,
        NULL,
        NULL
    ),
    (
        'Nueva Cajamarca',
        183,
        22,
        NULL,
        NULL
    ),
    (
        'Pardo Miguel',
        183,
        22,
        NULL,
        NULL
    ),
    ('Posic', 183, 22, NULL, NULL),
    (
        'San Fernando',
        183,
        22,
        NULL,
        NULL
    ),
    (
        'Yorongos',
        183,
        22,
        NULL,
        NULL
    ),
    (
        'Yuracyacu',
        183,
        22,
        NULL,
        NULL
    ),
    (
        'Tarapoto',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Alberto Leveau',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Cacatachi',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Chazuta',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Chipurana',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'El Porvenir',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Huimbayoc',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Juan Guerra',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'La Banda de Shilcayo',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Morales',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Papaplaya',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'San Antonio',
        184,
        22,
        NULL,
        NULL
    ),
    ('Sauce', 184, 22, NULL, NULL),
    (
        'Shapaja',
        184,
        22,
        NULL,
        NULL
    ),
    (
        'Tocache',
        185,
        22,
        NULL,
        NULL
    ),
    (
        'Nuevo Progreso',
        185,
        22,
        NULL,
        NULL
    ),
    (
        'Polvora',
        185,
        22,
        NULL,
        NULL
    ),
    ('Shunte', 185, 22, NULL, NULL),
    ('Uchiza', 185, 22, NULL, NULL),
    ('Tacna', 186, 23, NULL, NULL),
    (
        'Alto de la Alianza',
        186,
        23,
        NULL,
        NULL
    ),
    ('Calana', 186, 23, NULL, NULL),
    (
        'Ciudad Nueva',
        186,
        23,
        NULL,
        NULL
    ),
    ('Inclan', 186, 23, NULL, NULL),
    ('Pachia', 186, 23, NULL, NULL),
    ('Palca', 186, 23, NULL, NULL),
    (
        'Pocollay',
        186,
        23,
        NULL,
        NULL
    ),
    ('Sama', 186, 23, NULL, NULL),
    (
        'Coronel Gregorio Albarracín Lanchipa',
        186,
        23,
        NULL,
        NULL
    ),
    (
        'La Yarada los Palos',
        186,
        23,
        NULL,
        NULL
    ),
    (
        'Candarave',
        187,
        23,
        NULL,
        NULL
    ),
    (
        'Cairani',
        187,
        23,
        NULL,
        NULL
    ),
    (
        'Camilaca',
        187,
        23,
        NULL,
        NULL
    ),
    (
        'Curibaya',
        187,
        23,
        NULL,
        NULL
    ),
    (
        'Huanuara',
        187,
        23,
        NULL,
        NULL
    ),
    (
        'Quilahuani',
        187,
        23,
        NULL,
        NULL
    ),
    (
        'Locumba',
        188,
        23,
        NULL,
        NULL
    ),
    (
        'Ilabaya',
        188,
        23,
        NULL,
        NULL
    ),
    ('Ite', 188, 23, NULL, NULL),
    ('Tarata', 189, 23, NULL, NULL),
    (
        'Héroes Albarracín',
        189,
        23,
        NULL,
        NULL
    ),
    (
        'Estique',
        189,
        23,
        NULL,
        NULL
    ),
    (
        'Estique-Pampa',
        189,
        23,
        NULL,
        NULL
    ),
    (
        'Sitajara',
        189,
        23,
        NULL,
        NULL
    ),
    (
        'Susapaya',
        189,
        23,
        NULL,
        NULL
    ),
    (
        'Tarucachi',
        189,
        23,
        NULL,
        NULL
    ),
    ('Ticaco', 189, 23, NULL, NULL),
    ('Tumbes', 190, 24, NULL, NULL),
    (
        'Corrales',
        190,
        24,
        NULL,
        NULL
    ),
    (
        'La Cruz',
        190,
        24,
        NULL,
        NULL
    ),
    (
        'Pampas de Hospital',
        190,
        24,
        NULL,
        NULL
    ),
    (
        'San Jacinto',
        190,
        24,
        NULL,
        NULL
    ),
    (
        'San Juan de la Virgen',
        190,
        24,
        NULL,
        NULL
    ),
    (
        'Zorritos',
        191,
        24,
        NULL,
        NULL
    ),
    (
        'Casitas',
        191,
        24,
        NULL,
        NULL
    ),
    (
        'Canoas de Punta Sal',
        191,
        24,
        NULL,
        NULL
    ),
    (
        'Zarumilla',
        192,
        24,
        NULL,
        NULL
    ),
    (
        'Aguas Verdes',
        192,
        24,
        NULL,
        NULL
    ),
    (
        'Matapalo',
        192,
        24,
        NULL,
        NULL
    ),
    (
        'Papayal',
        192,
        24,
        NULL,
        NULL
    ),
    (
        'Calleria',
        193,
        25,
        NULL,
        NULL
    ),
    (
        'Campoverde',
        193,
        25,
        NULL,
        NULL
    ),
    ('Iparia', 193, 25, NULL, NULL),
    (
        'Masisea',
        193,
        25,
        NULL,
        NULL
    ),
    (
        'Yarinacocha',
        193,
        25,
        NULL,
        NULL
    ),
    (
        'Nueva Requena',
        193,
        25,
        NULL,
        NULL
    ),
    (
        'Manantay',
        193,
        25,
        NULL,
        NULL
    ),
    (
        'Raymondi',
        194,
        25,
        NULL,
        NULL
    ),
    (
        'Sepahua',
        194,
        25,
        NULL,
        NULL
    ),
    (
        'Tahuania',
        194,
        25,
        NULL,
        NULL
    ),
    ('Yurua', 194, 25, NULL, NULL),
    (
        'Padre Abad',
        195,
        25,
        NULL,
        NULL
    ),
    (
        'Irazola',
        195,
        25,
        NULL,
        NULL
    ),
    (
        'Curimana',
        195,
        25,
        NULL,
        NULL
    ),
    (
        'Neshuya',
        195,
        25,
        NULL,
        NULL
    ),
    (
        'Alexander Von Humboldt',
        195,
        25,
        NULL,
        NULL
    ),
    ('Purus', 196, 25, NULL, NULL);

    