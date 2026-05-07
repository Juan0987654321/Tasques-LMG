sum(
for $p in //producte
where $p/descripcio = "Porquet de xocolata amb llet"
return $p/quantitat * $p/preuunitari
)