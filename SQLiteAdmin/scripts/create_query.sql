----
-- Table structure for location
----
CREATE TABLE location (
	id INTEGER NOT NULL, 
	description_en TEXT, 
	description_es TEXT, 
	description_de TEXT, 
	name_en TEXT, 
	name_es TEXT, 
	name_de TEXT, 
	name_short_en VARCHAR(75), 
	name_short_es VARCHAR(75), 
	name_short_de VARCHAR(75), 
	code VARCHAR(25), 
	parent_id INTEGER, 
	level VARCHAR(12), 
	PRIMARY KEY (id), 
	CONSTRAINT location_level CHECK (level IN ('country', 'department', 'msa', 'municipality'))
);

----
-- Table structure for country
----
CREATE TABLE country (
	id INTEGER NOT NULL, 
	description_en TEXT, 
	description_es TEXT, 
	description_de TEXT, 
	name_en TEXT, 
	name_es TEXT, 
	name_de TEXT, 
	name_short_en VARCHAR(75), 
	name_short_es VARCHAR(75), 
	name_short_de VARCHAR(75), 
	code VARCHAR(25), 
	parent_id INTEGER, 
	level VARCHAR(7), 
	PRIMARY KEY (id), 
	CONSTRAINT country_level CHECK (level IN ('region', 'country'))
);

----
-- Table structure for occupation
----
CREATE TABLE occupation (
	id INTEGER NOT NULL, 
	description_en TEXT, 
	description_es TEXT, 
	description_de TEXT, 
	name_en TEXT, 
	name_es TEXT, 
	name_de TEXT, 
	name_short_en VARCHAR(75), 
	name_short_es VARCHAR(75), 
	name_short_de VARCHAR(75), 
	code VARCHAR(25), 
	parent_id INTEGER, 
	level VARCHAR(19), 
	PRIMARY KEY (id), 
	CONSTRAINT occupation_level CHECK (level IN ('major_group', 'minor_group', 'broad_occupation', 'detailed_occupation'))
);

----
-- Data dump for occupation, a total of 0 rows
----

----
-- Table structure for industry
----
CREATE TABLE industry (
	id INTEGER NOT NULL, 
	description_en TEXT, 
	description_es TEXT, 
	description_de TEXT, 
	name_en TEXT, 
	name_es TEXT, 
	name_de TEXT, 
	name_short_en VARCHAR(75), 
	name_short_es VARCHAR(75), 
	name_short_de VARCHAR(75), 
	code VARCHAR(25), 
	parent_id INTEGER, 
	level VARCHAR(8), 
	PRIMARY KEY (id), 
	CONSTRAINT industry_level CHECK (level IN ('section', 'division', 'group', 'class'))
);

----
-- Data dump for industry, a total of 0 rows
----


----
-- Table structure for product
----
CREATE TABLE product (
	id INTEGER NOT NULL, 
	description_en TEXT, 
	description_es TEXT, 
	description_de TEXT, 
	name_en TEXT, 
	name_es TEXT, 
	name_de TEXT, 
	name_short_en VARCHAR(75), 
	name_short_es VARCHAR(75), 
	name_short_de VARCHAR(75), 
	code VARCHAR(25), 
	parent_id INTEGER, 
	level VARCHAR(7), 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit'))
);

----
-- Table structure for country_country_year
----
CREATE TABLE country_country_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	country_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(country_id) REFERENCES location (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Table structure for municipality_industry_year
----
CREATE TABLE municipality_industry_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(8), 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	rca INTEGER, 
	distance FLOAT, 
	cog FLOAT, 
	industry_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT industry_level CHECK (level IN ('section', 'division', 'group', 'class')), 
	FOREIGN KEY(industry_id) REFERENCES industry (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Data dump for municipality_industry_year, a total of 0 rows
----

----
-- Table structure for country_municipality_year
----
CREATE TABLE country_municipality_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	country_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(country_id) REFERENCES location (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Data dump for country_municipality_year, a total of 0 rows
----

----
-- Table structure for product_year
----
CREATE TABLE product_year (
	id INTEGER NOT NULL, 
	product_id INTEGER, 
	year INTEGER, 
	level VARCHAR(7), 
	pci FLOAT, 
	pci_rank INTEGER, 
	export_value BIGINT, 
	import_value BIGINT, 
	export_num_plants INTEGER, 
	import_num_plants INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(product_id) REFERENCES product (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit'))
);


----
-- Table structure for industry_year
----
CREATE TABLE industry_year (
	id INTEGER NOT NULL, 
	industry_id INTEGER, 
	year INTEGER, 
	level VARCHAR(8), 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	complexity FLOAT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(industry_id) REFERENCES industry (id), 
	CONSTRAINT industry_level CHECK (level IN ('section', 'division', 'group', 'class'))
);

----
-- Data dump for industry_year, a total of 0 rows
----


----
-- Table structure for country_department_product_year
----
CREATE TABLE country_department_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	product_id INTEGER, 
	location_id INTEGER, 
	country_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(product_id) REFERENCES product (id), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(country_id) REFERENCES location (id)
);


----
-- Table structure for msa_industry_year
----
CREATE TABLE msa_industry_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(8), 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	rca INTEGER, 
	distance FLOAT, 
	cog FLOAT, 
	industry_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT industry_level CHECK (level IN ('section', 'division', 'group', 'class')), 
	FOREIGN KEY(industry_id) REFERENCES industry (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Data dump for msa_industry_year, a total of 0 rows
----


----
-- Table structure for msa_product_year
----
CREATE TABLE msa_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	import_value BIGINT, 
	export_num_plants INTEGER, 
	import_num_plants INTEGER, 
	export_rca INTEGER, 
	density FLOAT, 
	cog FLOAT, 
	location_id INTEGER, 
	product_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(product_id) REFERENCES product (id)
);

----
-- Table structure for country_product_year
----
CREATE TABLE country_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	import_value BIGINT, 
	export_num_plants INTEGER, 
	import_num_plants INTEGER, 
	export_rca INTEGER, 
	density FLOAT, 
	cog FLOAT, 
	location_id INTEGER, 
	product_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(product_id) REFERENCES product (id)
);

----
-- Table structure for department_year
----
CREATE TABLE department_year (
	id INTEGER NOT NULL, 
	location_id INTEGER, 
	year INTEGER, 
	eci FLOAT, 
	eci_rank INTEGER, 
	diversity FLOAT, 
	coi FLOAT, 
	industry_coi FLOAT, 
	gdp_nominal BIGINT, 
	gdp_real BIGINT, 
	gdp_pc_nominal INTEGER, 
	gdp_pc_real INTEGER, 
	population INTEGER, 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	industry_eci FLOAT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Table structure for country_industry_year
----
CREATE TABLE country_industry_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(8), 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	rca INTEGER, 
	distance FLOAT, 
	cog FLOAT, 
	industry_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT industry_level CHECK (level IN ('section', 'division', 'group', 'class')), 
	FOREIGN KEY(industry_id) REFERENCES industry (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Data dump for country_industry_year, a total of 0 rows
----


----
-- Table structure for country_municipality_product_year
----
CREATE TABLE country_municipality_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	product_id INTEGER, 
	location_id INTEGER, 
	country_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(product_id) REFERENCES product (id), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(country_id) REFERENCES location (id)
);

----
-- Data dump for country_municipality_product_year, a total of 0 rows
----

----
-- Table structure for occupation_year
----
CREATE TABLE occupation_year (
	id INTEGER NOT NULL, 
	occupation_id INTEGER, 
	level VARCHAR(19), 
	average_wages INTEGER, 
	num_vacancies INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(occupation_id) REFERENCES occupation (id), 
	CONSTRAINT occupation_level CHECK (level IN ('major_group', 'minor_group', 'broad_occupation', 'detailed_occupation'))
);

----
-- Data dump for occupation_year, a total of 0 rows
----

----
-- Table structure for country_msa_year
----
CREATE TABLE country_msa_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	country_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(country_id) REFERENCES location (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Table structure for municipality_product_year
----
CREATE TABLE municipality_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	import_value BIGINT, 
	export_num_plants INTEGER, 
	import_num_plants INTEGER, 
	export_rca INTEGER, 
	density FLOAT, 
	cog FLOAT, 
	location_id INTEGER, 
	product_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(product_id) REFERENCES product (id)
);

----
-- Data dump for municipality_product_year, a total of 0 rows
----


----
-- Table structure for department_product_year
----
CREATE TABLE department_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	import_value BIGINT, 
	export_num_plants INTEGER, 
	import_num_plants INTEGER, 
	export_rca INTEGER, 
	density FLOAT, 
	cog FLOAT, 
	location_id INTEGER, 
	product_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(product_id) REFERENCES product (id)
);


----
-- Table structure for partner_product_year
----
CREATE TABLE partner_product_year (
	id INTEGER NOT NULL, 
	country_id INTEGER, 
	product_id INTEGER, 
	level VARCHAR(7), 
	year INTEGER, 
	export_value BIGINT, 
	import_value BIGINT, 
	export_num_plants INTEGER, 
	import_num_plants INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(country_id) REFERENCES country (id), 
	FOREIGN KEY(product_id) REFERENCES product (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit'))
);


----
-- Table structure for msa_year
----
CREATE TABLE msa_year (
	id INTEGER NOT NULL, 
	location_id INTEGER, 
	year INTEGER, 
	eci FLOAT, 
	coi FLOAT, 
	industry_coi FLOAT, 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	industry_eci FLOAT, 
	PRIMARY KEY (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);


----
-- Table structure for department_industry_year
----
CREATE TABLE department_industry_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(8), 
	employment INTEGER, 
	wages BIGINT, 
	monthly_wages INTEGER, 
	num_establishments INTEGER, 
	rca INTEGER, 
	distance FLOAT, 
	cog FLOAT, 
	industry_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT industry_level CHECK (level IN ('section', 'division', 'group', 'class')), 
	FOREIGN KEY(industry_id) REFERENCES industry (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Data dump for department_industry_year, a total of 0 rows
----


----
-- Table structure for country_department_year
----
CREATE TABLE country_department_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	country_id INTEGER, 
	location_id INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(country_id) REFERENCES location (id), 
	FOREIGN KEY(location_id) REFERENCES location (id)
);

----
-- Table structure for country_msa_product_year
----
CREATE TABLE country_msa_product_year (
	id INTEGER NOT NULL, 
	year INTEGER, 
	level VARCHAR(7), 
	export_value BIGINT, 
	export_num_plants INTEGER, 
	import_value BIGINT, 
	import_num_plants INTEGER, 
	product_id INTEGER, 
	location_id INTEGER, 
	country_id INTEGER, 
	PRIMARY KEY (id), 
	CONSTRAINT product_level CHECK (level IN ('section', '2digit', '4digit')), 
	FOREIGN KEY(product_id) REFERENCES product (id), 
	FOREIGN KEY(location_id) REFERENCES location (id), 
	FOREIGN KEY(country_id) REFERENCES location (id)
);

----
-- Table structure for occupation_industry_year
----
CREATE TABLE occupation_industry_year (
	id INTEGER NOT NULL, 
	occupation_id INTEGER, 
	industry_id INTEGER, 
	level VARCHAR(19), 
	average_wages INTEGER, 
	num_vacancies INTEGER, 
	PRIMARY KEY (id), 
	FOREIGN KEY(occupation_id) REFERENCES occupation (id), 
	FOREIGN KEY(industry_id) REFERENCES industry (id), 
	CONSTRAINT occupation_level CHECK (level IN ('major_group', 'minor_group', 'broad_occupation', 'detailed_occupation'))
);

----
-- Data dump for occupation_industry_year, a total of 0 rows
----





----
-- Table structure for user
----

CREATE TABLE user (
	id_user INTEGER NOT NULL, 
	usuario VARCHAR(20), 
	password VARCHAR(50), 
	rol TEXT,
	PRIMARY KEY (id_user)
);

INSERT INTO "user" ("id_user","usuario","password","rol") VALUES ('1','eamadom2','12345','1')