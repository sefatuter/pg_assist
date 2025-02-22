CREATE EXTENSION IF NOT EXISTS vector;
CREATE TABLE IF NOT EXISTS structured_documents (
    id SERIAL PRIMARY KEY,
    heading TEXT,
    content TEXT,
    embedding VECTOR(384)
);
CREATE TABLE IF NOT EXISTS chat_history (
    id SERIAL PRIMARY KEY,
    session_id VARCHAR(255) NOT NULL,
    role TEXT NOT NULL,
    message TEXT NOT NULL
);