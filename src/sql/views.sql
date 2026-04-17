-- Auto-generated: views — views v6475
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_6475 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    metadata JSONB,
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_6475_name
    ON views_—_views_6475(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_6475_created
    ON views_—_views_6475(created_at DESC);

-- Seed data
INSERT INTO views_—_views_6475 (name, description)
VALUES
    ('item_0', 'val_0_6475'),
    ('item_1', 'val_1_6475'),
    ('item_2', 'val_2_6475'),
    ('item_3', 'val_3_6475'),
    ('item_4', 'val_4_6475'),
    ('item_5', 'val_5_6475'),
    ('item_6', 'val_6_6475'),
    ('item_7', 'val_7_6475'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_6475_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_6475
GROUP BY name
ORDER BY total DESC;
