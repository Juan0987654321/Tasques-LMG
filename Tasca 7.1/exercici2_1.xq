for $f in //factura
where $f/total >= 500 and $f/total <= 1000
return $f/client/raosocial/nom/text()