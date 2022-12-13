-- Databricks notebook source
-- MAGIC %python
-- MAGIC import pandas as pd
-- MAGIC import numpy as np
-- MAGIC print("ok")

-- COMMAND ----------

USE silver_olist;

-- COMMAND ----------

SELECT c.descCidade = g.descCidade check
FROM cliente c
JOIN geolocalizacao g
ON c.codCep = g.codCep
WHERE (c.descCidade = g.descCidade) = true
LIMIT 10

-- COMMAND ----------

SELECT * FROM GEOlocalizacao
LIMIT 5

-- COMMAND ----------

SHOW COLUMNS IN geolocalizacao

-- COMMAND ----------


