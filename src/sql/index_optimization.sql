-- Auto-generated: index optimization v5257
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_5257 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_5257_name
    ON index_optimization_5257(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_5257_created
    ON index_optimization_5257(created_at DESC);

-- Seed data
INSERT INTO index_optimization_5257 (name, score)
VALUES
    ('item_0', 'val_0_5257'),
    ('item_1', 'val_1_5257'),
    ('item_2', 'val_2_5257'),
    ('item_3', 'val_3_5257'),
    ('item_4', 'val_4_5257'),
    ('item_5', 'val_5_5257'),
    ('item_6', 'val_6_5257'),
    ('item_7', 'val_7_5257'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_5257_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_5257
GROUP BY name
ORDER BY total DESC;
