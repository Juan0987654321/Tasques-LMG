let $max_edat := max(collection("capo")//empleat/edat/xs:integer(.))
for $e in collection("capo")//empleat
where $e/edat = $max_edat
return concat($e/nom, " ", $e/llinatges)