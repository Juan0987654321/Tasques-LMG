count(
for $r in //rebut
where $r/linies/producte/descripcio = "Porquet de xocolata negra"
return $r
)