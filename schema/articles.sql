/*
 schema/articles.sql
 This file defines the structure of our 'articles' table.
*/

DROP TABLE IF EXISTS articles;

CREATE TABLE articles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  url TEXT NOT_NULL UNIQUE,
  summary TEXT,
  topic TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/* Create an index to make searching by topic faster */
CREATE INDEX IF NOT EXISTS idx_articles_topic ON articles (topic);