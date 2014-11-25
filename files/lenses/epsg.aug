module EPSG =

let proj = [ key /[^\/= \t\n]+/ . (Sep.equal . store Rx.no_spaces)? ]

let entry = [ Util.del_str "<" . key Rx.integer . Util.del_str ">"
            . Sep.space . Build.opt_list proj Sep.space . Sep.space
            . Util.del_str "<>" . Util.eol ]

let lns = (Util.empty | Util.comment | entry)*

