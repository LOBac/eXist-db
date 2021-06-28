xquery version "3.1";

(: Select all species whose year of discovery is before 1900. :)
for $Year in doc("db.xml")/Bacteria/Bacterium
where $Year/Year < 1900
return <SpecieY1900>{$Year/Taxonomy/Specie}{$Year/Year}</SpecieY1900>

(: All idBacteria whose oxygenDemand is Aerobic :)
for $idBacterium in doc("db.xml")/Bacteria/Bacterium
where $idBacterium/OxygenDemand = "Aerobic"
return $idBacterium/idBacterium

(: Select bacterium's ids of bacteria whose genome cat is "Linear" :)
for $idBacterium in doc("db.xml")/Bacteria/Bacterium
where $idBacterium/Genome/Category = "LINEAR"
return $idBacterium/idBacterium

(: Select all diseases that cause the coccus bacteria :)
for $Disease in doc("db.xml")/Bacteria/Bacterium
where $Disease/Morphology = "Coccus"
return $Disease/Diseases/Disease/NameDisease
