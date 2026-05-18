for $doc in collection("capo")
let $ruta := document-uri($doc)
let $total := count($doc//empleat)
order by $ruta
return concat($ruta, ": ", $total)