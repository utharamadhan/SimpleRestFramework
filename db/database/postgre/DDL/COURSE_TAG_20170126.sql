DROP TABLE IF EXISTS COURSE_TAG;

CREATE TABLE COURSE_TAG
(
  FK_COURSE BIGINT NOT NULL REFERENCES COURSE(PK_COURSE),
  FK_TAG BIGINT NOT NULL REFERENCES TAG(PK_TAG)
)
WITH (
  OIDS=FALSE
);