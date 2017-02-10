CREATE SEQUENCE RESEARCH_PK_RESEARCH_SEQ
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE RESEARCH
(
  PK_RESEARCH BIGINT NOT NULL DEFAULT NEXTVAL('RESEARCH_PK_RESEARCH_SEQ'::REGCLASS),
  FK_RESEARCH_TOPIC BIGINT NOT NULL REFERENCES RESEARCH_TOPIC(PK_RESEARCH_TOPIC),
  CODE CHARACTER VARYING(100) NOT NULL,
  NAME CHARACTER VARYING(100),
  SUBTITLE CHARACTER VARYING(100),
  BASIC_PICTURE_URL TEXT,
  FULL_DESCRIPTION TEXT,
  CREATED_BY CHARACTER VARYING(200) NOT NULL,
  CREATION_TIME TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  MODIFIED_BY CHARACTER VARYING(200) NOT NULL,
  MODIFICATION_TIME TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  STATUS INTEGER NOT NULL DEFAULT 1,
  CONSTRAINT PK_RESEARCH PRIMARY KEY (PK_RESEARCH)
)
WITH (
  OIDS=FALSE
);