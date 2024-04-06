CREATE TABLE vista_fase1 (
    id BIGINT PRIMARY KEY,
    codigo BIGINT,
    asignatura TEXT,
    credito_total BIGINT,
    tipo_credito TEXT,
    horas_semanales DOUBLE PRECISION,
    distribucion_horario TEXT,
    distribucion_salon TEXT,
    prerrequisito TEXT,
    inscrito BIGINT,
    porcentaje_aprobacion DOUBLE PRECISION,
    porcentaje_retiro DOUBLE PRECISION,
    porcentaje_reprobacion DOUBLE PRECISION,
    estimados BIGINT,
    num_grupos BIGINT
);
