CREATE TABLE tipologias (
    tipo TEXT PRIMARY KEY,
    descripcion TEXT
);

CREATE TABLE edificios (
    edificio TEXT PRIMARY KEY
);

CREATE TABLE mallas (
    malla TEXT PRIMARY KEY
);

CREATE TABLE materias (
    codigo BIGINT PRIMARY KEY,
    nombre TEXT
);

CREATE TABLE salones (
    id BIGINT PRIMARY KEY,
    id_tipologia TEXT REFERENCES tipologias(tipo),
    id_edificio TEXT REFERENCES edificios(edificio),
    nombre TEXT,
    capacidad SMALLINT,
    tipo TEXT
);

CREATE TABLE asignaturas (
    id BIGINT PRIMARY KEY,
    codigo BIGINT REFERENCES materias(codigo),
    id_malla TEXT REFERENCES mallas(malla),
    id_tipologia TEXT REFERENCES tipologias(tipo),
    num_semestre TEXT,
    credito_practico BIGINT,
    credito_teorico BIGINT,
    credito_total BIGINT
);

CREATE TABLE matricula (
    id BIGINT PRIMARY KEY,
    id_asignatura BIGINT REFERENCES materias(codigo),
    num_matriculados BIGINT,
    periodo TEXT,
    num_grupos BIGINT
);

CREATE TABLE prerrequisitos (
    id BIGINT PRIMARY KEY,
    id_asig_principal BIGINT REFERENCES materias(codigo),
    id_asig_prerreq BIGINT REFERENCES materias(codigo),
    id_malla TEXT REFERENCES mallas(malla)
);

CREATE TABLE salones_provisional (
    codigo SERIAL PRIMARY KEY,
    nombre TEXT,
    salon_pasado TEXT
);

CREATE TABLE combinadas (
    id BIGINT PRIMARY KEY,
    id_malla TEXT REFERENCES mallas(malla),
    id_asig_1 BIGINT REFERENCES materias(codigo),
    id_asig_2 BIGINT REFERENCES materias(codigo)
);
