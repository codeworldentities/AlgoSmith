-- Auto-generated: migration script v8640
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_8640 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    description TEXT,
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_8640_name
    ON migration_script_8640(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_8640_created
    ON migration_script_8640(created_at DESC);

-- Seed data
INSERT INTO migration_script_8640 (name, status)
VALUES
    ('item_0', 'val_0_8640'),
    ('item_1', 'val_1_8640'),
    ('item_2', 'val_2_8640'),
    ('item_3', 'val_3_8640'),
    ('item_4', 'val_4_8640'),
    ('item_5', 'val_5_8640'),
    ('item_6', 'val_6_8640'),
    ('item_7', 'val_7_8640'),

-- View
CREATE OR REPLACE VIEW v_migration_script_8640_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_8640
GROUP BY name
ORDER BY total DESC;
