# -*- coding: utf-8 -*-
"""
Created on Mon Oct 2 01:20:51 2021

@author: Moises New
"""

import pymysql

conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='moises123', db='mibasemoises')

cur = conn.cursor()
sql = "INSERT INTO Persona (ci, nombre, paterno, materno, fechanac, departamento ) VALUES (12514307, 'Rafael', 'Prado', 'Quino', '1997-04-25', 03),(1732897, 'Anahis', 'Cruz', 'Montecinos', '1997-10-10', 03);"
cur.execute(sql)
cur.execute("SELECT * FROM persona")

print()
for row in cur:
    print(row)
cur.close()
conn.close()
