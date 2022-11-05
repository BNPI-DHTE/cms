CREATE TABLE articles (
  id BIGINT PRIMARY KEY,
   title VARCHAR(255) NOT NULL,
   date DATE,
   summary VARCHAR(255)
);

CREATE TABLE authors (
  id BIGINT PRIMARY KEY,
   name VARCHAR(255),
   description VARCHAR(255),
   email VARCHAR(255)
);

CREATE TABLE elements (
  id BIGINT PRIMARY KEY REFERENCES elements,
   article_id BIGINT REFERENCES articles,
   rank INTEGER NOT NULL
);

CREATE TABLE images (
  element_id BIGINT NOT NULL REFERENCES elements,
   description VARCHAR(255),
   CONSTRAINT pk_images PRIMARY KEY (element_id)
);

CREATE TABLE paragraphs (
  element_id BIGINT NOT NULL REFERENCES elements,
   content VARCHAR(255),
   CONSTRAINT pk_paragraphs PRIMARY KEY (element_id)
);

CREATE TABLE spreadsheets (
  element_id BIGINT NOT NULL REFERENCES elements,
   description VARCHAR(255),
   header VARCHAR(255),
   rows TEXT[],
   CONSTRAINT pk_spreadsheets PRIMARY KEY (element_id)
);

CREATE TABLE videos (
  element_id BIGINT NOT NULL REFERENCES elements,
   description VARCHAR(255),
   CONSTRAINT pk_videos PRIMARY KEY (element_id)
);

CREATE TABLE articles_authors (
  article_id BIGINT NOT NULL REFERENCES articles,
   author_id BIGINT NOT NULL REFERENCES authors,
   CONSTRAINT pk_articles_authors PRIMARY KEY (article_id, author_id)
);

CREATE TABLE images_authors (
  author_id BIGINT NOT NULL REFERENCES authors,
   image_id BIGINT NOT NULL REFERENCES images,
   CONSTRAINT pk_images_authors PRIMARY KEY (author_id, image_id)
);

CREATE TABLE spreadsheets_authors (
  author_id BIGINT NOT NULL REFERENCES authors,
   spreadsheet_id BIGINT NOT NULL REFERENCES spreadsheets,
   CONSTRAINT pk_spreadsheets_authors PRIMARY KEY (author_id, spreadsheet_id)
);

CREATE TABLE videos_authors (
  author_id BIGINT NOT NULL REFERENCES authors,
   video_id BIGINT NOT NULL REFERENCES videos,
   CONSTRAINT pk_videos_authors PRIMARY KEY (author_id, video_id)
);