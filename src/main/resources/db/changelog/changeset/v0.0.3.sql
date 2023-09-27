CREATE TABLE articles
(
    id          INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    title_text  VARCHAR(50)                              NOT NULL,
    title_image BYTEA,
    text        VARCHAR(255)                             NOT NULL,
    date        date                                     NOT NULL,
    CONSTRAINT pk_articles PRIMARY KEY (id)
);

CREATE TABLE users_articles
(
    article_id INTEGER NOT NULL,
    user_id    INTEGER NOT NULL,
    CONSTRAINT pk_users_articles PRIMARY KEY (article_id, user_id)
);

ALTER TABLE users_articles
    ADD CONSTRAINT fk_useart_on_article FOREIGN KEY (article_id) REFERENCES articles (id);

ALTER TABLE users_articles
    ADD CONSTRAINT fk_useart_on_user FOREIGN KEY (user_id) REFERENCES users (id);
