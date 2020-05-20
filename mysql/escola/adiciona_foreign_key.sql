ALTER TABLE curso
	MODIFY COLUMN carga_horaria INTEGER NOT NULL,
	ADD COLUMN professor_id BIGINT,
	ADD CONSTRAINT fk_professor_id
	FOREIGN KEY (professor_id) REFERENCES professor(id);
