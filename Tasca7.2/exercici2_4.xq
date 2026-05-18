let $mitjana := avg(collection("capo")//empleat/salari/xs:decimal(.))
return round($mitjana, 2)