;*************************************************
;* hypnotoad script foALL GLORY TO THE HYPNOTOAD *
;*************************************************

on *:load:{
  echo -s hypnotoad loa0,1ALL GLORY TO THE HYPNOTOAD
}

alias hypnotoad_about {
  echo -s Authors: Frederico Carvalho
  echo -s Contact: armorfist@gmail.com
  echo -s Description: "With this script you ca0,1ALL GLORY TO THE HYPNOTOAD
  echo -s License: BSD
}

on *:START:{
  set %hypnotoad_random 100
}

on *:INPUT:*:{
  if $rand(0,%hypnotoad_random) == 1 { 
    if ($len($1-) > 10) {
      say $left($1-,$calc($len($1-)-6)) $+ 0,1ALL GLORY TO THE HYPNOTOAD | halt 
    }
  }
}
