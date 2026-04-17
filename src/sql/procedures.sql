-- Auto-generated: procedures — procedures v346
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_346 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_346_name
    ON procedures_—_procedures_346(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_346_created
    ON procedures_—_procedures_346(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_346 (name, description)
VALUES
    ('item_0', 'val_0_346'),
    ('item_1', 'val_1_346'),
    ('item_2', 'val_2_346'),
    ('item_3', 'val_3_346'),
    ('item_4', 'val_4_346'),
    ('item_5', 'val_5_346'),
    ('item_6', 'val_6_346'),
    ('item_7', 'val_7_346');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_346_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_346
GROUP BY name
ORDER BY total DESC;
