CREATE SEQUENCE GROUP_COURSE_PK_GROUP_COURSE_SEQ
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE GROUP_COURSE
(
  PK_GROUP_COURSE BIGINT NOT NULL DEFAULT NEXTVAL('GROUP_COURSE_PK_GROUP_COURSE_SEQ'::REGCLASS),
  CODE CHARACTER VARYING(100) NOT NULL,
  NAME CHARACTER VARYING(100),
  BASIC_PICTURE_URL TEXT,
  SHORT_DESCRIPTION TEXT,
  FULL_DESCRIPTION TEXT,
  CREATED_BY CHARACTER VARYING(200) NOT NULL,
  CREATION_TIME TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  MODIFIED_BY CHARACTER VARYING(200) NOT NULL,
  MODIFICATION_TIME TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  STATUS INTEGER NOT NULL DEFAULT 1,
  CONSTRAINT PK_GROUP_COURSE PRIMARY KEY (PK_GROUP_COURSE)
)
WITH (
  OIDS=FALSE
);