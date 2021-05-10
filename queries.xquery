xquery version "3.1";

(: Get all Morphologies from Bacterium table :)
for $x in doc("db.xml")//database//table_data[@name='Bacterium']
return $x/row/field[@name='Morphology']
