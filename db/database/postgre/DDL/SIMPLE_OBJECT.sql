CREATE SEQUENCE SIMPLE_OBJECT_PK_SIMPLE_OBJECT_SEQ
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE SIMPLE_OBJECT
(
  PK_SIMPLE_OBJECT BIGINT NOT NULL DEFAULT NEXTVAL('SIMPLE_OBJECT_PK_SIMPLE_OBJECT_SEQ'::REGCLASS),
  NAME CHARACTER VARYING(100),
  FK_LOOKUP_TYPE BIGINT NOT NULL REFERENCES LOOKUP(PK_LOOKUP),
  STATUS INTEGER NOT NULL DEFAULT 1,
  CONSTRAINT PK_SIMPLE_OBJECT PRIMARY KEY (PK_SIMPLE_OBJECT)
)
WITH (
  OIDS=FALSE
);