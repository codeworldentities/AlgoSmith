-- Auto-generated: view creation v7643
-- Created for project optimization

CREATE TABLE IF NOT EXISTS view_creation_7643 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    counter INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_view_creation_7643_name
    ON view_creation_7643(name);

CREATE INDEX IF NOT EXISTS idx_view_creation_7643_created
    ON view_creation_7643(created_at DESC);

-- Seed data
INSERT INTO view_creation_7643 (name, status)
VALUES
    ('item_0', 'val_0_7643'),
    ('item_1', 'val_1_7643'),
    ('item_2', 'val_2_7643'),
    ('item_3', 'val_3_7643'),
    ('item_4', 'val_4_7643'),
    ('item_5', 'val_5_7643'),
    ('item_6', 'val_6_7643'),
    ('item_7', 'val_7_7643'),

-- View
CREATE OR REPLACE VIEW v_view_creation_7643_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM view_creation_7643
GROUP BY name
ORDER BY total DESC;
