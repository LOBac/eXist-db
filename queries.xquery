xquery version "3.1";

for $x in doc("db.xml")//database//table_data[@name='Bacterium']
return $x/row/field[@name='Morphology']
