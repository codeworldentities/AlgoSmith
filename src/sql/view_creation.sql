-- Auto-generated: view creation v1204
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_1204 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    score DECIMAL(10,2),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_1204_name
    ON view_creation_1204(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_1204_created
    ON view_creation_1204(created_at DESC);

-- Seed data
INSERT INTO view_creation_1204 (name, metadata)
VALUES
    ('item_0', 'val_0_1204'),
    ('item_1', 'val_1_1204'),
    ('item_2', 'val_2_1204'),
    ('item_3', 'val_3_1204'),
    ('item_4', 'val_4_1204'),
    ('item_5', 'val_5_1204'),
    ('item_6', 'val_6_1204'),
    ('item_7', 'val_7_1204'),

-- View
CREATE OR REPLACE VIEW v_view_creation_1204_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_1204
GROUP BY name
ORDER BY total DESC;
