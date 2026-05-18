let $mitjana := avg(collection("capo")//empleat/salari/xs:decimal(.))
for $e in collection("capo")//empleat
where $e/salari > $mitjana
order by xs:integer($e/salari) descending
return concat($e/nom, " ", $e/llinatges, ", ", $e/salari)