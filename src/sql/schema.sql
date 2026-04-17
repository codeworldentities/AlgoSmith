-- Auto-generated: schema — database schema definition v2683
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2683 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    email VARCHAR(255),
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2683_name
    ON schema_—_database_schema_definition_2683(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2683_created
    ON schema_—_database_schema_definition_2683(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2683 (name, metadata)
VALUES
    ('item_0', 'val_0_2683'),
    ('item_1', 'val_1_2683'),
    ('item_2', 'val_2_2683'),
    ('item_3', 'val_3_2683'),
    ('item_4', 'val_4_2683'),
    ('item_5', 'val_5_2683'),
    ('item_6', 'val_6_2683'),
    ('item_7', 'val_7_2683');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2683_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2683
GROUP BY name
ORDER BY total DESC;
