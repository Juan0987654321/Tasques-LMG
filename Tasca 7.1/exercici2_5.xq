for $f in //factura
let $nom := $f/client/raosocial/nom
let $total := $f/total
order by number($total) descending
return concat("Client ", $nom, ". Total factura: ", $total)