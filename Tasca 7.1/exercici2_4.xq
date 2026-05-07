for $r in //rebut
let $total_q := sum($r/linies/producte/quantitat)
where ($total_q = 2 or $total_q = 50)
return data($r/@numero)