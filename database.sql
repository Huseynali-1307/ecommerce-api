CREATE DATABASE cyber_db;
USE cyber_db;

CREATE TABLE tech_defenders (
    firm_id INT PRIMARY KEY AUTO_INCREMENT,
    firm_name VARCHAR(120) NOT NULL,
    specialty_area VARCHAR(80) DEFAULT 'Cybersecurity',
    global_headquarters VARCHAR(150),
    founding_year INT,
    annual_revenue_million_usd DECIMAL(12, 2),
    contact_email VARCHAR(255),
    avatar_url VARCHAR(500)
);

INSERT INTO tech_defenders 
(firm_name, specialty_area, global_headquarters, founding_year, annual_revenue_million_usd, contact_email, avatar_url)
VALUES
("CrowdStrike", "Endpoint Security", "Austin, Texas, USA", 2011, 3050.50, "info@crowdstrike.com", "https://logo.clearbit.com/crowdstrike.com"),
("Palantir", "Big Data & AI Analytics", "Denver, Colorado, USA", 2003, 2220.00, "contact@palantir.com", "https://logo.clearbit.com/palantir.com"),
("Cloudflare", "Edge Security & CDN", "San Francisco, California, USA", 2009, 1300.25, "support@cloudflare.com", "https://logo.clearbit.com/cloudflare.com"),
("Darktrace", "AI Cyber Defense", "Cambridge, United Kingdom", 2013, 600.80, "ops@darktrace.com", "https://logo.clearbit.com/darktrace.com"),
("Check Point", "Network Security", "Tel Aviv, Israel", 1993, 2400.00, "sales@checkpoint.com", "https://logo.clearbit.com/checkpoint.com");
