CREATE TABLE wallet (
    id SERIAL PRIMARY KEY,
    category VARCHAR(50) NOT NULL,        -- ex: Fixed Income, Variable Income
    name VARCHAR(100) NOT NULL,           -- ex: Government Bonds, CDB, etc.
    percent_goal NUMERIC(5,2) NOT NULL,   -- ex: 15.00
    percent_current NUMERIC(5,2) NOT NULL, -- ex: 0.00
    current_value NUMERIC(12,2) NOT NULL,  -- ex: 39.27
    percent_fix NUMERIC(6,2) NOT NULL,    -- diferença entre goal e current
    value_fix NUMERIC(12,2) NOT NULL      -- valor necessário para ajuste
);


INSERT INTO wallet
(category, name, percent_goal, percent_current, current_value, percent_fix, value_fix)
VALUES
('Fixed Income', 'Government Bonds (Selic + IPCA+)', 15.00, 0.00, 0.00, 15.00, 17.85),
('Fixed Income', 'CDB', 8.00, 14.00, 16.66, -6.00, 0.00),
('Fixed Income', 'PGBL', 10.00, 33.00, 39.27, -23.00, 0.00),
('Alternative', 'Funds', 10.00, 10.00, 11.90, 0.00, 0.00),
('Variable Income', 'Brasilian Stock', 18.00, 0.00, 0.00, 18.00, 21.42),
('Variable Income', 'Global Stock', 19.00, 0.00, 0.00, 19.00, 22.61),
('Variable Income', 'Real Estate Funds', 15.00, 43.00, 51.17, -28.00, 0.00),
('Alternative', 'Cripto', 5.00, 0.00, 0.00, 5.00, 5.95),
('Saving', 'Saving', 0.00, 0.00, 0.00, 0.00, 0.00);
