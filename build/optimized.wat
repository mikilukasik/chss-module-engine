(module
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $f32_f32_=>_i32 (func (param f32 f32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_f32_i32_=>_f32 (func (param i32 i32 i32 i32 f32 i32) (result f32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $src/assembly/index/Uint8Array_ID i32 (i32.const 3))
 (global $~lib/rt/__rtti_base i32 (i32.const 4016))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 20540))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1068) "<")
 (data (i32.const 1080) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1132) "<")
 (data (i32.const 1144) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1260) "<")
 (data (i32.const 1272) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1324) ",")
 (data (i32.const 1336) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1404) "<")
 (data (i32.const 1416) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1468) "\1c")
 (data (i32.const 1480) "\07\00\00\00\08\00\00\00\01")
 (data (i32.const 1500) "\1c")
 (data (i32.const 1532) "<")
 (data (i32.const 1544) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1596) ",")
 (data (i32.const 1608) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1644) ",")
 (data (i32.const 1656) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1692) "\1c")
 (data (i32.const 1704) "\07\00\00\00\08\00\00\00\02")
 (data (i32.const 1724) "\1c")
 (data (i32.const 1756) "\1c")
 (data (i32.const 1768) "\07\00\00\00\08\00\00\00\03")
 (data (i32.const 1788) "\1c")
 (data (i32.const 1820) "\1c")
 (data (i32.const 1832) "\07\00\00\00\08\00\00\00\04")
 (data (i32.const 1852) "\1c")
 (data (i32.const 1884) "\1c")
 (data (i32.const 1896) "\07\00\00\00\08\00\00\00\05")
 (data (i32.const 1916) "\1c")
 (data (i32.const 1948) "\1c")
 (data (i32.const 1960) "\07\00\00\00\08\00\00\00\06")
 (data (i32.const 1980) "\1c")
 (data (i32.const 2012) "\1c")
 (data (i32.const 2024) "\08\00\00\00\08\00\00\00\07")
 (data (i32.const 2044) ",")
 (data (i32.const 2060) "\1c\00\00\00\d0\05\00\00\b0\06\00\00\f0\06\00\000\07\00\00p\07\00\00\b0\07\00\00\f0\07")
 (data (i32.const 2092) ",")
 (data (i32.const 2104) "\05\00\00\00\10\00\00\00\10\08\00\00\10\08\00\00\1c\00\00\00\07")
 (data (i32.const 2140) "\1c")
 (data (i32.const 2172) "\1c")
 (data (i32.const 2184) "\0b\00\00\00\08\00\00\00\08")
 (data (i32.const 2204) "\1c")
 (data (i32.const 2236) "\1c")
 (data (i32.const 2248) "\0b\00\00\00\08\00\00\00\t")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2300) "\1c")
 (data (i32.const 2312) "\0b\00\00\00\08\00\00\00\n")
 (data (i32.const 2332) "\1c")
 (data (i32.const 2364) "\1c")
 (data (i32.const 2376) "\0b\00\00\00\08\00\00\00\0b")
 (data (i32.const 2396) "\1c")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2440) "\0b\00\00\00\08\00\00\00\0c")
 (data (i32.const 2460) "\1c")
 (data (i32.const 2492) "\1c")
 (data (i32.const 2504) "\0b\00\00\00\08\00\00\00\0d")
 (data (i32.const 2524) "\1c")
 (data (i32.const 2556) "\1c")
 (data (i32.const 2568) "\0c\00\00\00\08\00\00\00\0e")
 (data (i32.const 2588) ",")
 (data (i32.const 2604) "\1c\00\00\00\90\08\00\00\d0\08\00\00\10\t\00\00P\t\00\00\90\t\00\00\d0\t\00\00\10\n")
 (data (i32.const 2636) ",")
 (data (i32.const 2648) "\n\00\00\00\10\00\00\000\n\00\000\n\00\00\1c\00\00\00\07")
 (data (i32.const 2684) "L")
 (data (i32.const 2700) "<")
 (data (i32.const 2710) "\80\bf\b8\1eU\c033C\c0\f6(\b4\c0\00\00\18\c1\00\00p\c1")
 (data (i32.const 2742) "\80?\b8\1eU@33C@\f6(\b4@\00\00\18A\00\00pA")
 (data (i32.const 2764) ",")
 (data (i32.const 2776) "\0d\00\00\00\10\00\00\00\90\n\00\00\90\n\00\00<\00\00\00\0f")
 (data (i32.const 2812) "L")
 (data (i32.const 2828) "<")
 (data (i32.const 2838) "\80?\b8\1eU@33C@\f6(\b4@\00\00\18A\00\00pA")
 (data (i32.const 2870) "\80?\b8\1eU@33C@\f6(\b4@\00\00\18A\00\00pA")
 (data (i32.const 2892) ",")
 (data (i32.const 2904) "\0d\00\00\00\10\00\00\00\10\0b\00\00\10\0b\00\00<\00\00\00\0f")
 (data (i32.const 2940) "<")
 (data (i32.const 2952) "\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 3004) ",")
 (data (i32.const 3016) "\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\0f\00\00\00\08\00\00\00\0f")
 (data (i32.const 3084) ",")
 (data (i32.const 3096) "\01\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data (i32.const 3132) "\1c")
 (data (i32.const 3144) "\0f\00\00\00\08\00\00\00\10")
 (data (i32.const 3164) "\1c")
 (data (i32.const 3176) "\10\00\00\00\08\00\00\00\11")
 (data (i32.const 3196) "<")
 (data (i32.const 3208) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 3260) "\1c")
 (data (i32.const 3292) "\1c")
 (data (i32.const 3324) "|")
 (data (i32.const 3336) "\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data (i32.const 3452) "\1c")
 (data (i32.const 3484) "\8c")
 (data (i32.const 3496) "\01\00\00\00|\00\00\00S\00o\00m\00t\00h\00i\00n\00g\00\'\00s\00 \00w\00r\00o\00n\00g\00,\00 \00i\00l\00l\00e\00g\00a\00l\00 \00b\00o\00a\00r\00d\00 \00w\00h\00i\00l\00e\00 \00u\00s\00i\00n\00g\00 \00g\00e\00n\00e\00r\00a\00t\00e\00L\00e\00g\00a\00l\00M\00o\00v\00e\00s")
 (data (i32.const 3628) "\1c")
 (data (i32.const 3660) "\\")
 (data (i32.const 3672) "\01\00\00\00F\00\00\00i\00m\00p\00l\00e\00m\00e\00n\00t\00 \00k\00i\00n\00g\00h\00i\00t\00 \00i\00n\00 \00e\00v\00a\00l\00u\00a\00t\00e\00B\00o\00a\00r\00d\00!")
 (data (i32.const 3756) "\1c")
 (data (i32.const 3788) "\1c")
 (data (i32.const 3820) "\1c")
 (data (i32.const 3852) "\1c")
 (data (i32.const 3884) "<")
 (data (i32.const 3896) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 3948) "<")
 (data (i32.const 3960) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 4016) "\11\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 4044) "A\00\00\00\02\00\00\00\82\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t")
 (data (i32.const 4092) "B\00\00\00\00\00\00\00\02A")
 (data (i32.const 4124) "\02\19\00\00\00\00\00\00\10\c1")
 (table $0 18 18 funcref)
 (elem $0 (i32.const 1) $start:src/assembly/generatePseudoMoves~anonymous|0 $src/assembly/getPawnMoves/getPawnMoves $src/assembly/getBishopMoves/getBishopMoves $src/assembly/getKnightMoves/getKnightMoves $src/assembly/getRookMoves/getRookMoves $src/assembly/getQueenMoves/getQueenMoves $src/assembly/getKingMoves/getKingMoves@varargs $start:src/assembly/getHitMovesNoPromotion~anonymous|0 $src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion $src/assembly/getBishopHitMoves/getBishopHitMoves $src/assembly/getKnightHitMoves/getKnightHitMoves $src/assembly/getRookHitMoves/getRookHitMoves $src/assembly/getQueenHitMoves/getQueenHitMoves $src/assembly/getKingHitMoves/getKingHitMoves@varargs $start:src/assembly/evaluateBoard~anonymous|0~anonymous|0 $start:src/assembly/evaluateBoard~anonymous|0~anonymous|0 $start:src/assembly/evaluateBoard~anonymous|0)
 (export "Uint8Array_ID" (global $src/assembly/index/Uint8Array_ID))
 (export "typeTest" (func $src/assembly/typeTest/typeTest))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "getMovedBoard" (func $export:src/assembly/getMovedBoard/getMovedBoard))
 (export "getPawnMoves" (func $export:src/assembly/getPawnMoves/getPawnMoves))
 (export "getPawnHitMovesNoPromotion" (func $export:src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion))
 (export "getKnightMoves" (func $export:src/assembly/getKnightMoves/getKnightMoves))
 (export "getKnightHitMoves" (func $export:src/assembly/getKnightHitMoves/getKnightHitMoves))
 (export "getKingMoves" (func $export:src/assembly/getKingMoves/getKingMoves@varargs))
 (export "getKingHitMoves" (func $export:src/assembly/getKingHitMoves/getKingHitMoves@varargs))
 (export "getQueenMoves" (func $export:src/assembly/getQueenMoves/getQueenMoves))
 (export "getQueenHitMoves" (func $export:src/assembly/getQueenHitMoves/getQueenHitMoves))
 (export "getBishopMoves" (func $export:src/assembly/getBishopMoves/getBishopMoves))
 (export "getBishopHitMoves" (func $export:src/assembly/getBishopHitMoves/getBishopHitMoves))
 (export "getRookMoves" (func $export:src/assembly/getRookMoves/getRookMoves))
 (export "getRookHitMoves" (func $export:src/assembly/getRookHitMoves/getRookHitMoves))
 (export "isCaptured" (func $export:src/assembly/isCaptured/isCaptured))
 (export "generatePseudoMoves" (func $export:src/assembly/generatePseudoMoves/generatePseudoMoves))
 (export "perft" (func $export:src/assembly/perft/perft))
 (export "generateLegalMoves" (func $export:src/assembly/generateLegalMoves/generateLegalMoves))
 (export "getHitMovesNoPromotion" (func $export:src/assembly/getHitMovesNoPromotion/getHitMovesNoPromotion))
 (export "getDefenderValues" (func $export:src/assembly/getDefenderValues/getDefenderValues))
 (export "evaluateBoard" (func $export:src/assembly/evaluateBoard/evaluateBoard))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1280
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1664
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3104
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3344
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2960
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1088
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3904
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3968
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2112
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2656
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2784
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 2912
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.get $0
   i32.const 20540
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1152
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $1
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/itcms/iter
  local.get $0
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1152
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   i32.const 4016
   i32.load
   local.get $2
   i32.lt_u
   if
    i32.const 1280
    i32.const 1344
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 3
   i32.shl
   i32.const 4020
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $0
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $0
  i32.or
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $2
  local.get $3
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $2
   local.get $3
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.get $4
  i32.ne
  if
   i32.const 0
   i32.const 1424
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $2
   i32.const 1073741820
   local.get $2
   i32.const 1073741820
   i32.lt_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $2
  local.get $5
  i32.const 4
  i32.shl
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $5
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $2
  i32.gt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $4
  if
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   local.get $1
   i32.const 16
   i32.sub
   i32.eq
   if
    local.get $4
    i32.load
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 1424
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $2
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $2
  i32.const 8
  i32.sub
  local.tee $2
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $2
  local.get $1
  i32.const 4
  i32.add
  i32.add
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 20544
  i32.const 0
  i32.store
  i32.const 22112
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 20544
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $1
      local.get $0
      i32.const 4
      i32.shl
      i32.add
      i32.const 2
      i32.shl
      i32.const 20544
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 20544
  i32.const 22116
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 20544
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 20540
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 15
  i32.and
  i32.const 1
  local.get $0
  select
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load
   i32.const 1
   i32.and
  end
  if
   i32.const 0
   i32.const 1424
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  i32.store
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     global.get $~lib/rt/itcms/toSpace
     local.get $0
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      i32.load offset=4
      i32.const 3
      i32.and
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 20540
      i32.lt_u
      if
       local.get $0
       i32.load
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      global.get $~lib/rt/itcms/toSpace
      local.get $0
      i32.ne
      if
       local.get $0
       i32.load offset=4
       i32.const 3
       i32.and
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        local.get $0
        i32.load offset=4
        i32.const -4
        i32.and
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1152
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20540
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     call $~lib/rt/tlsf/__free
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store offset=4
   local.get $0
   local.get $0
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   local.get $1
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1424
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1424
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1088
   i32.const 1424
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $3
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $3
   i32.add
   local.get $3
   local.get $3
   i32.const 536870910
   i32.lt_u
   select
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1424
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $1
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 1424
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1424
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $4
   i32.const 2
   i32.and
   local.get $3
   i32.or
   i32.store
   local.get $3
   local.get $1
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1088
   i32.const 1152
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  local.get $2
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $start:src/assembly/generatePseudoMoves~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1056
  call $~lib/rt/__newArray
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1552
   i32.const 166
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.tee $5
  local.get $2
  i32.shr_u
  local.get $1
  i32.lt_u
  if
   i32.const 1073741820
   local.get $2
   i32.shr_u
   local.get $1
   i32.lt_u
   if
    i32.const 1664
    i32.const 1616
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   i32.const 8
   local.get $1
   i32.const 8
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $1
   local.get $3
   if
    local.get $5
    i32.const 1
    i32.shl
    local.tee $2
    i32.const 1073741820
    local.get $2
    i32.const 1073741820
    i32.lt_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   block $__inlined_func$~lib/rt/itcms/__renew
    local.get $4
    i32.const 20
    i32.sub
    local.tee $3
    i32.load
    i32.const -4
    i32.and
    i32.const 16
    i32.sub
    local.get $1
    i32.ge_u
    if
     local.get $3
     local.get $1
     i32.store offset=16
     local.get $4
     local.set $2
     br $__inlined_func$~lib/rt/itcms/__renew
    end
    local.get $1
    local.get $3
    i32.load offset=12
    call $~lib/rt/itcms/__new
    local.tee $2
    local.get $4
    local.get $1
    local.get $3
    i32.load offset=16
    local.tee $3
    local.get $1
    local.get $3
    i32.lt_u
    select
    memory.copy
   end
   local.get $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store
    local.get $0
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u16>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/array/Array<u16>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $start:src/assembly/getHitMovesNoPromotion~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2160
  call $~lib/rt/__newArray
 )
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 0
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_u
 )
 (func $~lib/map/Map<u8,~lib/array/Array<f32>>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 255
  i32.and
  i32.const -1028477379
  i32.mul
  i32.const 374761394
  i32.add
  i32.const 17
  i32.rotl
  i32.const 668265263
  i32.mul
  local.tee $0
  i32.const 15
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -2048144777
  i32.mul
  local.tee $0
  i32.const 13
  i32.shr_u
  local.get $0
  i32.xor
  i32.const -1028477379
  i32.mul
  local.tee $0
  i32.const 16
  i32.shr_u
  local.get $0
  i32.xor
  i32.and
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $0
  block $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find
   loop $while-continue|0
    local.get $0
    if
     local.get $0
     i32.load offset=8
     local.tee $2
     i32.const 1
     i32.and
     if (result i32)
      i32.const 0
     else
      local.get $0
      i32.load8_u
      local.get $1
      i32.const 255
      i32.and
      i32.eq
     end
     br_if $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find
     local.get $2
     i32.const -2
     i32.and
     local.set $0
     br $while-continue|0
    end
   end
   i32.const 0
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 2960
   i32.const 3024
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $start:src/assembly/evaluateBoard~anonymous|0~anonymous|0 (param $0 f32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  f32.gt
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  f32.lt
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $~lib/util/sort/insertionSort<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 i32)
  (local $8 f32)
  local.get $3
  local.get $2
  local.get $1
  i32.sub
  i32.const 1
  i32.add
  local.tee $7
  local.get $3
  i32.sub
  i32.const 1
  i32.and
  i32.sub
  local.get $7
  i32.const 1
  i32.and
  local.get $3
  select
  local.get $1
  i32.add
  local.set $7
  loop $for-loop|0
   local.get $2
   local.get $7
   i32.ge_s
   if
    local.get $7
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.tee $3
    f32.load offset=4
    local.tee $8
    local.set $6
    local.get $3
    f32.load
    local.set $5
    i32.const 2
    global.set $~argumentsLength
    local.get $5
    local.get $8
    local.get $4
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 0
    i32.le_s
    if
     local.get $5
     local.set $6
     local.get $8
     local.set $5
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $3
    loop $while-continue|1
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|1
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       f32.load
       local.set $8
       i32.const 2
       global.set $~argumentsLength
       local.get $8
       local.get $5
       local.get $4
       i32.load
       call_indirect $0 (type $f32_f32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|1
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $8
       f32.store offset=8
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $while-continue|1
      end
     end
    end
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $5
    f32.store offset=8
    loop $while-continue|2
     local.get $1
     local.get $3
     i32.le_s
     if
      block $while-break|2
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       f32.load
       local.set $5
       i32.const 2
       global.set $~argumentsLength
       local.get $5
       local.get $6
       local.get $4
       i32.load
       call_indirect $0 (type $f32_f32_=>_i32)
       i32.const 0
       i32.le_s
       br_if $while-break|2
       local.get $3
       i32.const 2
       i32.shl
       local.get $0
       i32.add
       local.get $5
       f32.store offset=4
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       br $while-continue|2
      end
     end
    end
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $6
    f32.store offset=4
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
 )
 (func $~lib/util/sort/extendRunRight<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $1
   return
  end
  local.get $1
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  f32.load
  local.get $1
  i32.const 1
  i32.add
  local.tee $4
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  f32.load
  i32.const 2
  global.set $~argumentsLength
  local.get $3
  i32.load
  call_indirect $0 (type $f32_f32_=>_i32)
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $6
     f32.load offset=4
     local.get $6
     f32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 31
     i32.shr_u
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   local.get $4
   local.set $2
   loop $while-continue|1
    local.get $1
    local.get $2
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $3
     f32.load
     local.set $5
     local.get $3
     local.get $2
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $3
     f32.load
     f32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $5
     f32.store
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
  else
   loop $while-continue|2
    local.get $2
    local.get $4
    i32.gt_s
    if (result i32)
     local.get $4
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.tee $1
     f32.load offset=4
     local.get $1
     f32.load
     i32.const 2
     global.set $~argumentsLength
     local.get $3
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 0
     i32.ge_s
    else
     i32.const 0
    end
    if
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
  end
  local.get $4
 )
 (func $~lib/util/sort/mergeRuns<f32> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
  local.get $3
  local.get $2
  i32.const 1
  i32.sub
  local.tee $6
  i32.add
  local.set $9
  local.get $6
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    local.get $4
    local.get $2
    i32.const 1
    i32.sub
    local.tee $2
    i32.const 2
    i32.shl
    local.tee $10
    i32.add
    local.get $0
    local.get $10
    i32.add
    f32.load
    f32.store
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $3
   local.get $6
   i32.gt_s
   if
    local.get $9
    local.get $6
    i32.sub
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $6
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    f32.load offset=4
    f32.store
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|1
   end
  end
  loop $for-loop|2
   local.get $1
   local.get $3
   i32.le_s
   if
    local.get $6
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.set $7
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    f32.load
    local.set $8
    i32.const 2
    global.set $~argumentsLength
    local.get $7
    local.get $8
    local.get $5
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 0
    i32.lt_s
    if
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $7
     f32.store
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
    else
     local.get $1
     i32.const 2
     i32.shl
     local.get $0
     i32.add
     local.get $8
     f32.store
     local.get $2
     i32.const 1
     i32.add
     local.set $2
    end
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|2
   end
  end
 )
 (func $~lib/util/sort/SORT<f32> (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 f32)
  (local $15 f32)
  (local $16 i32)
  local.get $1
  i32.const 48
  i32.le_s
  if
   local.get $1
   i32.const 1
   i32.le_s
   if
    return
   end
   block $break|0
    block $case1|0
     local.get $1
     i32.const 3
     i32.ne
     if
      local.get $1
      i32.const 2
      i32.eq
      br_if $case1|0
      br $break|0
     end
     local.get $0
     f32.load
     local.set $14
     local.get $0
     f32.load offset=4
     local.set $15
     i32.const 2
     global.set $~argumentsLength
     local.get $0
     local.get $15
     local.get $14
     local.get $14
     local.get $15
     local.get $2
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 0
     i32.gt_s
     local.tee $1
     select
     f32.store
     local.get $0
     f32.load offset=8
     local.set $8
     i32.const 2
     global.set $~argumentsLength
     local.get $14
     local.get $15
     local.get $1
     select
     local.tee $14
     local.get $8
     local.get $2
     i32.load
     call_indirect $0 (type $f32_f32_=>_i32)
     i32.const 0
     i32.gt_s
     local.set $1
     local.get $0
     local.get $8
     local.get $14
     local.get $1
     select
     f32.store offset=4
     local.get $0
     local.get $14
     local.get $8
     local.get $1
     select
     f32.store offset=8
    end
    local.get $0
    f32.load
    local.set $8
    local.get $0
    f32.load offset=4
    local.set $14
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $14
    local.get $8
    local.get $8
    local.get $14
    local.get $2
    i32.load
    call_indirect $0 (type $f32_f32_=>_i32)
    i32.const 0
    i32.gt_s
    local.tee $1
    select
    f32.store
    local.get $0
    local.get $8
    local.get $14
    local.get $1
    select
    f32.store offset=4
    return
   end
   local.get $0
   i32.const 0
   local.get $1
   i32.const 1
   i32.sub
   i32.const 0
   local.get $2
   call $~lib/util/sort/insertionSort<f32>
   return
  end
  i32.const 33
  local.get $1
  i32.clz
  i32.sub
  local.tee $6
  i32.const 2
  i32.shl
  local.tee $7
  i32.const 1
  i32.shl
  local.set $9
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $9
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.tee $10
  local.get $7
  i32.add
  local.set $11
  loop $for-loop|1
   local.get $5
   local.get $6
   i32.lt_u
   if
    local.get $5
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.const -1
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|1
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $1
  i32.const 2
  i32.shl
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $12
  local.get $0
  i32.const 0
  local.get $1
  i32.const 1
  i32.sub
  local.tee $9
  local.get $2
  call $~lib/util/sort/extendRunRight<f32>
  local.tee $1
  i32.const 1
  i32.add
  local.tee $5
  i32.const 32
  i32.lt_s
  if
   local.get $0
   i32.const 0
   local.get $9
   i32.const 31
   local.get $9
   i32.const 31
   i32.lt_s
   select
   local.tee $1
   local.get $5
   local.get $2
   call $~lib/util/sort/insertionSort<f32>
  end
  loop $while-continue|2
   local.get $1
   local.get $9
   i32.lt_s
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.add
    local.tee $6
    local.get $9
    local.get $2
    call $~lib/util/sort/extendRunRight<f32>
    local.tee $5
    local.get $6
    i32.sub
    i32.const 1
    i32.add
    local.tee $7
    i32.const 32
    i32.lt_s
    if
     local.get $0
     local.get $6
     local.get $9
     local.get $6
     i32.const 31
     i32.add
     local.tee $5
     local.get $5
     local.get $9
     i32.gt_s
     select
     local.tee $5
     local.get $7
     local.get $2
     call $~lib/util/sort/insertionSort<f32>
    end
    local.get $3
    local.get $6
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $9
    i32.const 1
    i32.add
    i64.extend_i32_u
    local.tee $13
    i64.div_u
    local.get $5
    local.get $6
    i32.add
    i32.const 1
    i32.add
    i64.extend_i32_u
    i64.const 30
    i64.shl
    local.get $13
    i64.div_u
    i64.xor
    i32.wrap_i64
    i32.clz
    local.set $7
    loop $for-loop|3
     local.get $4
     local.get $7
     i32.gt_u
     if
      local.get $4
      i32.const 2
      i32.shl
      local.get $10
      i32.add
      i32.load
      local.tee $16
      i32.const -1
      i32.ne
      if
       local.get $0
       local.get $16
       local.get $11
       local.get $4
       i32.const 2
       i32.shl
       local.tee $3
       i32.add
       i32.load
       i32.const 1
       i32.add
       local.get $1
       local.get $12
       local.get $2
       call $~lib/util/sort/mergeRuns<f32>
       local.get $3
       local.get $10
       i32.add
       i32.const -1
       i32.store
       local.get $16
       local.set $3
      end
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
      br $for-loop|3
     end
    end
    local.get $10
    local.get $7
    i32.const 2
    i32.shl
    local.tee $4
    i32.add
    local.get $3
    i32.store
    local.get $4
    local.get $11
    i32.add
    local.get $1
    i32.store
    local.get $6
    local.set $3
    local.get $5
    local.set $1
    local.get $7
    local.set $4
    br $while-continue|2
   end
  end
  loop $for-loop|4
   local.get $4
   if
    local.get $4
    i32.const 2
    i32.shl
    local.get $10
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if
     local.get $0
     local.get $1
     local.get $4
     i32.const 2
     i32.shl
     local.get $11
     i32.add
     i32.load
     i32.const 1
     i32.add
     local.get $9
     local.get $12
     local.get $2
     call $~lib/util/sort/mergeRuns<f32>
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $for-loop|4
   end
  end
  local.get $12
  call $~lib/rt/tlsf/__free
  local.get $10
  call $~lib/rt/tlsf/__free
 )
 (func $~lib/array/Array<f32>#pop (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 0
  i32.le_s
  if
   i32.const 3104
   i32.const 1616
   i32.const 291
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.sub
  local.tee $2
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.get $0
  local.get $2
  i32.store offset=12
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1552
   i32.const 177
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
 )
 (func $src/assembly/getKingMoves/getKingMoves@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $1
   local.get $0
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 3
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingMoves/getKingMoves
 )
 (func $src/assembly/getKingHitMoves/getKingHitMoves@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $1
   local.get $0
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 3
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingHitMoves/getKingHitMoves
 )
 (func $~lib/array/Array<f32>#__set (param $0 i32) (param $1 i32) (param $2 f32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1280
    i32.const 1616
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $3
   i32.store offset=12
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 3904
    i32.const 1152
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 3968
   i32.const 1152
   i32.const 351
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load offset=8
   local.set $2
   local.get $1
   global.get $~lib/rt/itcms/white
   local.get $0
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   local.get $1
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $1
   local.get $3
   i32.lt_u
   if
    local.get $1
    i32.load
    local.tee $2
    if
     local.get $2
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner3
   block $folding-inner2
    block $invalid
     block $~lib/map/Map<u8,~lib/array/Array<f32>>
      block $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u8>>
       block $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>
        block $~lib/string/String
         block $~lib/arraybuffer/ArrayBuffer
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner3 $folding-inner3 $folding-inner3 $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>> $folding-inner3 $folding-inner2 $folding-inner2 $folding-inner3 $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u8>> $folding-inner2 $folding-inner2 $folding-inner3 $~lib/map/Map<u8,~lib/array/Array<f32>> $folding-inner2 $folding-inner2 $invalid
         end
         return
        end
        return
       end
       local.get $0
       call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit
       return
      end
      local.get $0
      call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit
      return
     end
     local.get $0
     i32.load
     local.tee $1
     if
      local.get $1
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     local.get $0
     i32.load offset=16
     i32.const 12
     i32.mul
     local.get $0
     i32.load offset=8
     local.tee $2
     local.tee $0
     i32.add
     local.set $3
     loop $while-continue|0
      local.get $0
      local.get $3
      i32.lt_u
      if
       local.get $0
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        local.get $0
        i32.load offset=4
        local.tee $1
        if
         local.get $1
         call $byn-split-outlined-A$~lib/rt/itcms/__visit
        end
       end
       local.get $0
       i32.const 12
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     local.get $2
     if
      local.get $2
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     return
    end
    unreachable
   end
   local.get $0
   i32.load offset=4
   local.tee $0
   if
    local.get $0
    call $byn-split-outlined-A$~lib/rt/itcms/__visit
   end
   return
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 20540
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1204
  i32.const 1200
  i32.store
  i32.const 1208
  i32.const 1200
  i32.store
  i32.const 1200
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1236
  i32.const 1232
  i32.store
  i32.const 1240
  i32.const 1232
  i32.store
  i32.const 1232
  global.set $~lib/rt/itcms/toSpace
  i32.const 1380
  i32.const 1376
  i32.store
  i32.const 1384
  i32.const 1376
  i32.store
  i32.const 1376
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $start:src/assembly/evaluateBoard~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 f32) (param $5 i32) (result f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $2
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store
  local.get $9
  i32.load offset=12
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 2912
   i32.store
   local.get $4
   i32.const 2912
   local.get $0
   local.get $3
   local.get $5
   i32.const 255
   i32.and
   call $~lib/array/Array<u8>#__get
   call $~lib/typedarray/Uint8Array#__get
   call $~lib/array/Array<f32>#__get
   local.tee $6
   f32.lt
   i32.eqz
   if
    local.get $4
    local.set $6
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2912
  i32.store
  i32.const 2912
  local.get $0
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/typedarray/Uint8Array#__get
  call $~lib/array/Array<f32>#__get
  f32.const 0
  f32.add
  local.set $6
  local.get $1
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3072
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  i32.const 3072
  call $~lib/util/sort/SORT<f32>
  local.get $1
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<f32>#pop
  local.set $7
  local.get $2
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 3152
  i32.store offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=12
  i32.const 3152
  call $~lib/util/sort/SORT<f32>
  local.get $2
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $~lib/array/Array<f32>#pop
  local.set $8
  local.get $1
  local.get $3
  local.get $5
  i32.const 255
  i32.and
  call $~lib/array/Array<u8>#__get
  call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  i32.const 0
  i32.ne
  local.tee $0
  local.get $7
  local.get $8
  f32.lt
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   local.get $4
   local.get $4
   local.get $6
   f32.lt
   select
   return
  end
  local.get $6
  local.get $7
  f32.sub
  local.set $6
  block $folding-inner0
   local.get $0
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $3
   local.get $5
   i32.const 255
   i32.and
   call $~lib/array/Array<u8>#__get
   call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/array/Array<f32>#pop
   local.set $7
   local.get $2
   local.get $3
   local.get $5
   i32.const 255
   i32.and
   call $~lib/array/Array<u8>#__get
   call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   i32.const 0
   i32.ne
   local.set $0
   loop $while-continue|0 (result f32)
    local.get $0
    local.get $7
    local.get $8
    f32.gt
    i32.and
    br_if $folding-inner0
    local.get $6
    local.get $8
    f32.add
    local.set $6
    local.get $0
    i32.eqz
    br_if $folding-inner0
    local.get $2
    local.get $3
    local.get $5
    i32.const 255
    i32.and
    call $~lib/array/Array<u8>#__get
    call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $~lib/array/Array<f32>#pop
    local.set $8
    local.get $1
    local.get $3
    local.get $5
    i32.const 255
    i32.and
    call $~lib/array/Array<u8>#__get
    call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=12
    i32.const 0
    i32.ne
    local.tee $0
    local.get $7
    local.get $8
    f32.lt
    i32.and
    br_if $folding-inner0
    local.get $6
    local.get $7
    f32.sub
    local.set $6
    local.get $0
    if (result f32)
     local.get $1
     local.get $3
     local.get $5
     i32.const 255
     i32.and
     call $~lib/array/Array<u8>#__get
     call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     call $~lib/array/Array<f32>#pop
     local.set $7
     local.get $2
     local.get $3
     local.get $5
     i32.const 255
     i32.and
     call $~lib/array/Array<u8>#__get
     call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load offset=12
     i32.const 0
     i32.ne
     local.set $0
     br $while-continue|0
    else
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     local.get $4
     local.get $4
     local.get $6
     f32.lt
     local.get $6
     f32.const 0
     f32.gt
     i32.and
     select
    end
   end
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  local.get $4
  local.get $4
  local.get $6
  f32.lt
  local.get $6
  f32.const 0
  f32.gt
  i32.and
  select
 )
 (func $src/assembly/generatePseudoMoves/generatePseudoMoves (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4156
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill
   local.get $2
   i32.const 0
   i32.const 1
   i32.const 4
   i32.const 3280
   call $~lib/rt/__newArray
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 1
   i32.const 4
   i32.const 3312
   call $~lib/rt/__newArray
   local.tee $5
   i32.store offset=4
   local.get $0
   local.tee $2
   i32.const 64
   call $~lib/typedarray/Uint8Array#__get
   i32.const 1
   i32.xor
   i32.const 3
   i32.shl
   i32.const 6
   i32.add
   local.set $6
   i32.const -1
   local.set $0
   block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
    local.get $2
    i32.load offset=8
    local.tee $7
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $7
    select
    br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
    local.get $2
    i32.load offset=4
    local.set $8
    loop $while-continue|0
     local.get $1
     local.get $7
     i32.lt_s
     if
      local.get $1
      local.tee $0
      local.get $8
      i32.add
      i32.load8_u
      local.get $6
      i32.const 255
      i32.and
      i32.eq
      br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
      local.get $0
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    i32.const -1
    local.set $0
   end
   loop $for-loop|2
    local.get $3
    i32.const 255
    i32.and
    i32.const 64
    i32.lt_u
    if
     block $for-continue|2
      local.get $2
      local.get $3
      i32.const 255
      i32.and
      call $~lib/typedarray/Uint8Array#__get
      if (result i32)
       local.get $2
       local.get $3
       i32.const 255
       i32.and
       call $~lib/typedarray/Uint8Array#__get
       i32.const 3
       i32.shr_u
       local.get $2
       i32.const 64
       call $~lib/typedarray/Uint8Array#__get
       i32.ne
      else
       i32.const 1
      end
      br_if $for-continue|2
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      i32.const 2112
      i32.store offset=8
      local.get $1
      i32.const 2112
      local.get $2
      local.get $3
      i32.const 255
      i32.and
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.and
      call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__get
      local.tee $1
      i32.store offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.const 64
      call $~lib/typedarray/Uint8Array#__get
      local.set $7
      i32.const 3
      global.set $~argumentsLength
      local.get $3
      local.get $2
      local.get $7
      local.get $1
      i32.load
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      local.tee $6
      i32.store offset=16
      local.get $6
      i32.load offset=12
      i32.eqz
      br_if $for-continue|2
      local.get $3
      i32.const 255
      i32.and
      i32.const 10
      i32.shl
      local.set $7
      i32.const 0
      local.set $1
      local.get $6
      i32.load offset=12
      local.set $8
      loop $for-loop|3
       local.get $1
       local.get $8
       i32.lt_s
       if
        block $for-continue|3
         local.get $2
         local.get $6
         local.get $1
         call $~lib/array/Array<u16>#__get
         i32.const 63
         i32.and
         call $~lib/typedarray/Uint8Array#__get
         if
          local.get $6
          local.get $1
          call $~lib/array/Array<u16>#__get
          local.get $0
          i32.eq
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 20
           i32.add
           global.set $~lib/memory/__stack_pointer
           i32.const 0
           return
          end
          local.get $5
          local.get $5
          i32.load offset=12
          local.get $6
          local.get $1
          call $~lib/array/Array<u16>#__get
          local.get $7
          i32.add
          call $~lib/array/Array<u16>#__set
          br $for-continue|3
         end
         local.get $4
         local.get $4
         i32.load offset=12
         local.get $6
         local.get $1
         call $~lib/array/Array<u16>#__get
         local.get $7
         i32.add
         call $~lib/array/Array<u16>#__set
        end
        local.get $1
        i32.const 1
        i32.add
        local.set $1
        br $for-loop|3
       end
      end
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
   local.get $5
   i32.load offset=12
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $4
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4156
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $5
   i32.load offset=12
   local.tee $0
   local.get $4
   i32.load offset=12
   local.tee $1
   i32.add
   local.tee $2
   i32.const 536870910
   i32.gt_u
   if
    i32.const 1664
    i32.const 1616
    i32.const 244
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.const 1
   i32.const 4
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $2
   i32.store
   local.get $2
   i32.load offset=4
   local.tee $3
   local.get $5
   i32.load offset=4
   local.get $0
   i32.const 1
   i32.shl
   local.tee $0
   memory.copy
   local.get $0
   local.get $3
   i32.add
   local.get $4
   i32.load offset=4
   local.get $1
   i32.const 1
   i32.shl
   memory.copy
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 20560
  i32.const 20608
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $src/assembly/perft/perft (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store
  local.get $4
  i32.const 0
  i32.store offset=8
  local.get $4
  local.get $1
  call $src/assembly/generateLegalMoves/generateLegalMoves
  local.tee $6
  i32.store
  local.get $6
  if
   local.get $0
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $6
    i32.load offset=12
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   local.get $6
   i32.load offset=12
   local.set $4
   loop $for-loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     local.get $6
     local.get $2
     call $~lib/array/Array<u16>#__get
     local.get $1
     call $src/assembly/getMovedBoard/getMovedBoard
     local.set $5
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=4
     local.get $0
     i32.const 1
     i32.sub
     local.get $5
     call $src/assembly/perft/perft
     local.get $3
     i32.add
     local.set $3
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 3504
  i32.store offset=8
  i32.const 3504
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/builtins/abort
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/assembly/getHitMovesNoPromotion/getHitMovesNoPromotion (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store
  local.get $2
  i32.const 2656
  i32.store
  local.get $2
  i32.const 2656
  local.get $0
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__get
  i32.const 7
  i32.and
  call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__get
  local.tee $3
  i32.store offset=4
  local.get $0
  i32.const 64
  call $~lib/typedarray/Uint8Array#__get
  local.set $2
  i32.const 3
  global.set $~argumentsLength
  local.get $1
  local.get $0
  local.get $2
  local.get $3
  i32.load
  call_indirect $0 (type $i32_i32_i32_=>_i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/assembly/evaluateBoard/evaluateBoard (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4156
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 40
   memory.fill
   local.get $2
   call $~lib/map/Map<u8,~lib/array/Array<f32>>#constructor
   local.tee $6
   i32.store
   global.get $~lib/memory/__stack_pointer
   call $~lib/map/Map<u8,~lib/array/Array<f32>>#constructor
   local.tee $7
   i32.store offset=4
   local.get $0
   local.tee $3
   i32.const 64
   call $~lib/typedarray/Uint8Array#__get
   i32.const 1
   i32.xor
   i32.const 3
   i32.shl
   i32.const 6
   i32.add
   local.set $2
   i32.const -1
   local.set $0
   block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
    local.get $3
    i32.load offset=8
    local.tee $10
    i32.const 0
    i32.le_s
    i32.const 1
    local.get $10
    select
    br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
    local.get $3
    i32.load offset=4
    local.set $11
    loop $while-continue|0
     local.get $1
     local.get $10
     i32.lt_s
     if
      local.get $1
      local.tee $0
      local.get $11
      i32.add
      i32.load8_u
      local.get $2
      i32.const 255
      i32.and
      i32.eq
      br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
      local.get $0
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    i32.const -1
    local.set $0
   end
   loop $for-loop|3
    local.get $4
    i32.const 255
    i32.and
    i32.const 63
    i32.le_u
    if
     local.get $3
     local.get $4
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 2784
      i32.store offset=8
      local.get $8
      i32.const 2784
      local.get $3
      local.get $4
      i32.const 255
      i32.and
      call $~lib/typedarray/Uint8Array#__get
      call $~lib/array/Array<f32>#__get
      f32.add
      local.set $8
      local.get $3
      local.get $4
      i32.const 255
      i32.and
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      local.get $3
      i32.const 64
      call $~lib/typedarray/Uint8Array#__get
      i32.eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $3
       local.get $4
       call $src/assembly/getHitMovesNoPromotion/getHitMovesNoPromotion
       local.tee $12
       i32.store offset=12
       i32.const 0
       local.set $1
       i32.const -1
       local.set $2
       block $__inlined_func$~lib/array/Array<u8>#indexOf
        local.get $12
        i32.load offset=12
        local.tee $10
        i32.const 0
        i32.le_s
        i32.const 1
        local.get $10
        select
        br_if $__inlined_func$~lib/array/Array<u8>#indexOf
        local.get $12
        i32.load offset=4
        local.set $11
        loop $while-continue|00
         local.get $1
         local.get $10
         i32.lt_s
         if
          local.get $1
          local.tee $2
          local.get $11
          i32.add
          i32.load8_u
          local.get $0
          i32.const 255
          i32.and
          i32.eq
          br_if $__inlined_func$~lib/array/Array<u8>#indexOf
          local.get $2
          i32.const 1
          i32.add
          local.set $1
          br $while-continue|00
         end
        end
        i32.const -1
        local.set $2
       end
       local.get $2
       i32.const 0
       i32.ge_s
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 3680
        i32.store offset=8
        i32.const 3680
        i32.const 0
        i32.const 0
        i32.const 0
        call $~lib/builtins/abort
       end
       i32.const 0
       local.set $2
       local.get $12
       i32.load offset=12
       local.set $13
       loop $for-loop|5
        local.get $2
        i32.const 255
        i32.and
        local.get $13
        i32.const 255
        i32.and
        i32.lt_u
        if
         local.get $12
         local.get $2
         i32.const 255
         i32.and
         call $~lib/array/Array<u8>#__get
         local.set $14
         local.get $12
         local.get $2
         i32.const 255
         i32.and
         call $~lib/array/Array<u8>#__get
         local.tee $10
         i32.const 255
         i32.and
         i32.const -1028477379
         i32.mul
         i32.const 374761394
         i32.add
         i32.const 17
         i32.rotl
         i32.const 668265263
         i32.mul
         local.tee $1
         local.get $1
         i32.const 15
         i32.shr_u
         i32.xor
         i32.const -2048144777
         i32.mul
         local.tee $1
         local.get $1
         i32.const 13
         i32.shr_u
         i32.xor
         i32.const -1028477379
         i32.mul
         local.set $1
         local.get $6
         i32.load
         local.get $6
         i32.load offset=4
         local.get $1
         local.get $1
         i32.const 16
         i32.shr_u
         i32.xor
         i32.and
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.set $1
         block $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find
          loop $while-continue|01
           local.get $1
           if
            local.get $1
            i32.load offset=8
            local.tee $11
            i32.const 1
            i32.and
            if (result i32)
             i32.const 0
            else
             local.get $1
             i32.load8_u
             local.get $10
             i32.const 255
             i32.and
             i32.eq
            end
            br_if $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find
            local.get $11
            i32.const -2
            i32.and
            local.set $1
            br $while-continue|01
           end
          end
          i32.const 0
          local.set $1
         end
         local.get $1
         if (result i32)
          local.get $6
          local.get $12
          local.get $2
          i32.const 255
          i32.and
          call $~lib/array/Array<u8>#__get
          call $~lib/map/Map<u8,~lib/array/Array<f32>>#get
         else
          i32.const 0
          i32.const 2
          i32.const 13
          i32.const 3872
          call $~lib/rt/__newArray
         end
         local.set $15
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $15
         i32.store offset=20
         local.get $1
         i32.const 1
         i32.const 2
         i32.const 13
         i32.const 0
         call $~lib/rt/__newArray
         local.tee $16
         i32.store offset=24
         global.get $~lib/memory/__stack_pointer
         local.get $16
         i32.load offset=4
         i32.store offset=28
         global.get $~lib/memory/__stack_pointer
         i32.const 2912
         i32.store offset=32
         i32.const 2912
         local.get $3
         local.get $4
         i32.const 255
         i32.and
         call $~lib/typedarray/Uint8Array#__get
         i32.const 7
         i32.and
         call $~lib/array/Array<f32>#__get
         local.set $9
         local.get $16
         i32.load offset=4
         local.get $9
         f32.store
         global.get $~lib/memory/__stack_pointer
         local.get $16
         i32.store offset=16
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4156
         i32.lt_s
         br_if $folding-inner0
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.store
         local.get $15
         i32.load offset=12
         local.tee $1
         local.get $16
         i32.load offset=12
         local.tee $10
         i32.add
         local.tee $11
         i32.const 268435455
         i32.gt_u
         if
          i32.const 1664
          i32.const 1616
          i32.const 244
          i32.const 60
          call $~lib/builtins/abort
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.get $11
         i32.const 2
         i32.const 13
         i32.const 0
         call $~lib/rt/__newArray
         local.tee $17
         i32.store
         local.get $17
         i32.load offset=4
         local.tee $11
         local.get $15
         i32.load offset=4
         local.get $1
         i32.const 2
         i32.shl
         local.tee $1
         memory.copy
         local.get $1
         local.get $11
         i32.add
         local.get $16
         i32.load offset=4
         local.get $10
         i32.const 2
         i32.shl
         memory.copy
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         local.get $17
         i32.store offset=16
         local.get $6
         local.get $14
         local.get $17
         call $~lib/map/Map<u8,~lib/array/Array<f32>>#set
         local.get $12
         local.get $2
         i32.const 255
         i32.and
         call $~lib/array/Array<u8>#__get
         local.tee $10
         i32.const 255
         i32.and
         i32.const -1028477379
         i32.mul
         i32.const 374761394
         i32.add
         i32.const 17
         i32.rotl
         i32.const 668265263
         i32.mul
         local.tee $1
         local.get $1
         i32.const 15
         i32.shr_u
         i32.xor
         i32.const -2048144777
         i32.mul
         local.tee $1
         local.get $1
         i32.const 13
         i32.shr_u
         i32.xor
         i32.const -1028477379
         i32.mul
         local.set $1
         local.get $7
         i32.load
         local.get $7
         i32.load offset=4
         local.get $1
         local.get $1
         i32.const 16
         i32.shr_u
         i32.xor
         i32.and
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.set $1
         block $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find3
          loop $while-continue|04
           local.get $1
           if
            local.get $1
            i32.load offset=8
            local.tee $11
            i32.const 1
            i32.and
            if (result i32)
             i32.const 0
            else
             local.get $1
             i32.load8_u
             local.get $10
             i32.const 255
             i32.and
             i32.eq
            end
            br_if $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find3
            local.get $11
            i32.const -2
            i32.and
            local.set $1
            br $while-continue|04
           end
          end
          i32.const 0
          local.set $1
         end
         local.get $1
         i32.eqz
         if
          local.get $12
          local.get $2
          i32.const 255
          i32.and
          call $~lib/array/Array<u8>#__get
          local.set $1
          local.get $3
          local.get $12
          local.get $2
          i32.const 255
          i32.and
          call $~lib/array/Array<u8>#__get
          local.get $3
          i32.const 64
          call $~lib/typedarray/Uint8Array#__get
          call $src/assembly/getDefenderValues/getDefenderValues
          local.set $10
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=16
          local.get $7
          local.get $1
          local.get $10
          call $~lib/map/Map<u8,~lib/array/Array<f32>>#set
         end
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|5
        end
       end
      end
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|3
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4156
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store
   local.get $6
   i32.load offset=8
   local.set $2
   local.get $6
   i32.load offset=16
   local.set $10
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4156
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store
   local.get $4
   i32.const 16
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $11
   i32.store
   local.get $11
   i32.const 0
   i32.store
   local.get $11
   i32.const 0
   i32.store offset=4
   local.get $11
   i32.const 0
   i32.store offset=8
   local.get $11
   i32.const 0
   i32.store offset=12
   local.get $10
   i32.const 1073741820
   i32.gt_u
   if
    i32.const 1664
    i32.const 1616
    i32.const 70
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.const 8
   local.get $10
   i32.const 8
   i32.gt_u
   select
   local.tee $4
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $12
   i32.store offset=4
   local.get $11
   local.get $12
   i32.store
   local.get $12
   if
    local.get $11
    local.get $12
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   local.get $11
   local.get $12
   i32.store offset=4
   local.get $11
   local.get $4
   i32.store offset=8
   local.get $11
   local.get $10
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $11
   i32.store
   i32.const 0
   local.set $1
   i32.const 0
   local.set $4
   loop $for-loop|0
    local.get $4
    local.get $10
    i32.lt_s
    if
     local.get $4
     i32.const 12
     i32.mul
     local.get $2
     i32.add
     local.tee $12
     i32.load offset=8
     i32.const 1
     i32.and
     i32.eqz
     if
      local.get $11
      local.get $1
      local.get $12
      i32.load8_u
      call $~lib/array/Array<u8>#__set
      local.get $1
      i32.const 1
      i32.add
      local.set $1
     end
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   local.get $11
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/array/ensureCapacity
   local.get $11
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   local.get $11
   i32.store offset=36
   i32.const 0
   local.set $0
   local.get $11
   i32.load offset=12
   local.set $1
   loop $for-loop|7
    local.get $0
    i32.const 255
    i32.and
    local.get $1
    i32.const 255
    i32.and
    i32.lt_u
    if
     i32.const 6
     global.set $~argumentsLength
     local.get $3
     local.get $6
     local.get $7
     local.get $11
     local.get $5
     local.get $0
     i32.const 3184
     i32.load
     call_indirect $0 (type $i32_i32_i32_i32_f32_i32_=>_f32)
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|7
    end
   end
   local.get $8
   local.get $5
   f32.add
   local.get $8
   local.get $5
   f32.sub
   local.get $3
   i32.const 64
   call $~lib/typedarray/Uint8Array#__get
   i32.const 1
   i32.eq
   select
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 20560
  i32.const 20608
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.tee $5
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $5
   memory.copy
  end
  local.get $4
  local.get $1
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $1
  i32.store
  local.get $1
  if
   local.get $2
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $5
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/assembly/getPawnMoves/getPawnMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1520
  call $~lib/rt/__newArray
  local.tee $5
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.set $4
  local.get $0
  i32.const 7
  i32.and
  local.tee $6
  i32.const 7
  i32.lt_u
  local.set $3
  local.get $6
  i32.const 0
  i32.ne
  local.set $6
  local.get $2
  i32.const 255
  i32.and
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.sub
   i32.extend8_s
   local.tee $2
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.eqz
   if
    local.get $4
    i32.const 255
    i32.and
    i32.const 1
    i32.eq
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 832
     i32.add
     call $~lib/array/Array<u16>#__set
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 768
     i32.add
     call $~lib/array/Array<u16>#__set
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 704
     i32.add
     call $~lib/array/Array<u16>#__set
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 640
     i32.add
     call $~lib/array/Array<u16>#__set
    else
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u16>#__set
    end
    local.get $4
    i32.const 255
    i32.and
    i32.const 6
    i32.eq
    if
     local.get $1
     local.get $0
     i32.const 16
     i32.sub
     i32.extend8_s
     local.tee $2
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.eqz
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u16>#__set
     end
    end
   end
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.sub
    i32.extend8_s
    local.tee $2
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if
     local.get $1
     local.get $2
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.eqz
     if
      local.get $4
      i32.const 255
      i32.and
      i32.const 1
      i32.eq
      if
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 832
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 768
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 704
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 640
       i32.add
       call $~lib/array/Array<u16>#__set
      else
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       call $~lib/array/Array<u16>#__set
      end
     end
    else
     local.get $4
     i32.const 255
     i32.and
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $2
      i32.const 65535
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u16>#__set
     end
    end
   end
   local.get $6
   if
    local.get $1
    local.get $0
    i32.const 9
    i32.sub
    i32.extend8_s
    local.tee $0
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if
     local.get $1
     local.get $0
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.eqz
     if
      local.get $4
      i32.const 255
      i32.and
      i32.const 1
      i32.eq
      if
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 832
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 768
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 704
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 640
       i32.add
       call $~lib/array/Array<u16>#__set
      else
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       call $~lib/array/Array<u16>#__set
      end
     end
    else
     local.get $4
     i32.const 255
     i32.and
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $0
      i32.const 65535
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      call $~lib/array/Array<u16>#__set
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $1
  local.get $0
  i32.const 8
  i32.add
  i32.extend8_s
  local.tee $2
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint8Array#__get
  i32.eqz
  if
   local.get $4
   i32.const 255
   i32.and
   i32.const 6
   i32.eq
   if
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 320
    i32.add
    call $~lib/array/Array<u16>#__set
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 256
    i32.add
    call $~lib/array/Array<u16>#__set
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 192
    i32.add
    call $~lib/array/Array<u16>#__set
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 128
    i32.add
    call $~lib/array/Array<u16>#__set
   else
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    call $~lib/array/Array<u16>#__set
   end
   local.get $4
   i32.const 255
   i32.and
   i32.const 1
   i32.eq
   if
    local.get $1
    local.get $0
    i32.const 16
    i32.add
    i32.extend8_s
    local.tee $2
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.eqz
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $3
  if
   local.get $1
   local.get $0
   i32.const 9
   i32.add
   i32.extend8_s
   local.tee $2
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if
    local.get $1
    local.get $2
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $4
     i32.const 255
     i32.and
     i32.const 6
     i32.eq
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 320
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 256
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 192
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 128
      i32.add
      call $~lib/array/Array<u16>#__set
     else
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u16>#__set
     end
    end
   else
    local.get $4
    i32.const 255
    i32.and
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $2
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $6
  if
   local.get $1
   local.get $0
   i32.const 7
   i32.add
   i32.extend8_s
   local.tee $0
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if
    local.get $1
    local.get $0
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $4
     i32.const 255
     i32.and
     i32.const 6
     i32.eq
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 320
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 256
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 192
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 128
      i32.add
      call $~lib/array/Array<u16>#__set
     else
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      call $~lib/array/Array<u16>#__set
     end
    end
   else
    local.get $4
    i32.const 255
    i32.and
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $0
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $0
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/assembly/getBishopMoves/getBishopMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1744
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $6
  i32.extend8_s
  i32.sub
  local.set $7
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $8
  i32.sub
  local.set $9
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 9
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break0
     block $for-continue|0
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|0
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $3
     i32.const 9
     i32.sub
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 7
  i32.sub
  local.set $3
  loop $for-loop|1
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break1
     block $for-continue|1
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|1
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $3
     i32.const 7
     i32.sub
     local.set $3
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 7
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break2
     block $for-continue|2
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|2
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $3
     i32.const 7
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 9
  i32.add
  local.set $3
  loop $for-loop|3
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break3
     block $for-continue|3
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|3
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $3
     i32.const 9
     i32.add
     local.set $3
     br $for-loop|3
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getKnightMoves/getKnightMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1808
  call $~lib/rt/__newArray
  local.tee $7
  i32.store
  local.get $0
  i32.const 7
  i32.and
  local.tee $5
  i32.const 1
  i32.gt_u
  local.tee $8
  local.get $5
  i32.const 0
  i32.ne
  local.get $8
  select
  local.set $4
  local.get $5
  i32.const 6
  i32.lt_u
  local.tee $3
  local.get $5
  i32.const 7
  i32.lt_u
  local.get $3
  select
  local.set $5
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  i32.extend8_s
  local.tee $9
  i32.const 1
  i32.gt_s
  local.tee $10
  local.get $9
  i32.const 0
  i32.gt_s
  local.get $10
  select
  local.set $6
  local.get $9
  i32.const 6
  i32.lt_s
  local.tee $11
  local.get $9
  i32.const 7
  i32.lt_s
  local.get $11
  select
  local.set $9
  local.get $10
  if
   local.get $4
   if
    local.get $1
    local.get $0
    i32.const 17
    i32.sub
    local.tee $10
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $10
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $10
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $5
   if
    local.get $1
    local.get $0
    i32.const 15
    i32.sub
    local.tee $10
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $10
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $10
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $11
  if
   local.get $4
   if
    local.get $1
    local.get $0
    i32.const 15
    i32.add
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $5
   if
    local.get $1
    local.get $0
    i32.const 17
    i32.add
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $8
  if
   local.get $6
   if
    local.get $1
    local.get $0
    i32.const 10
    i32.sub
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $1
    local.get $0
    i32.const 6
    i32.add
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $3
  if
   local.get $6
   if
    local.get $1
    local.get $0
    i32.const 6
    i32.sub
    local.tee $3
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $3
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $1
    local.get $0
    i32.const 10
    i32.add
    local.tee $0
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $0
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $0
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/assembly/getRookMoves/getRookMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1872
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $3
  i32.sub
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $5
  i32.sub
  local.set $7
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  i32.sub
  local.set $8
  local.get $0
  i32.const 8
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.extend8_s
   local.get $8
   i32.extend8_s
   i32.ge_s
   if
    block $for-break0
     block $for-continue|0
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|0
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $3
     i32.const 8
     i32.sub
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  local.get $7
  i32.add
  local.set $7
  local.get $0
  i32.const 1
  i32.add
  local.set $3
  loop $for-loop|1
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.le_s
   if
    block $for-break1
     block $for-continue|1
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|1
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
  end
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  local.set $6
  local.get $0
  i32.const 8
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $3
   i32.extend8_s
   local.get $6
   i32.extend8_s
   i32.le_s
   if
    block $for-break2
     block $for-continue|2
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|2
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  local.get $0
  local.get $5
  i32.sub
  local.set $3
  local.get $0
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|3
   local.get $0
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break3
     block $for-continue|3
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|3
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|3
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getQueenMoves/getQueenMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1936
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $7
  i32.sub
  local.set $8
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $6
  i32.sub
  local.set $9
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 9
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break0
     block $for-continue|0
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|0
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $3
     i32.const 9
     i32.sub
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 7
  i32.sub
  local.set $3
  loop $for-loop|1
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break1
     block $for-continue|1
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|1
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $3
     i32.const 7
     i32.sub
     local.set $3
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 7
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break2
     block $for-continue|2
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|2
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $3
     i32.const 7
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 9
  i32.add
  local.set $3
  loop $for-loop|3
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break3
     block $for-continue|3
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|3
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $3
     i32.const 9
     i32.add
     local.set $3
     br $for-loop|3
    end
   end
  end
  local.get $0
  local.get $7
  i32.const 3
  i32.shl
  i32.sub
  local.set $7
  local.get $0
  i32.const 8
  i32.sub
  local.set $3
  loop $for-loop|4
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.ge_s
   if
    block $for-break4
     block $for-continue|4
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|4
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break4
     end
     local.get $3
     i32.const 8
     i32.sub
     local.set $3
     br $for-loop|4
    end
   end
  end
  local.get $0
  local.get $9
  i32.add
  local.set $7
  local.get $0
  i32.const 1
  i32.add
  local.set $3
  loop $for-loop|5
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.le_s
   if
    block $for-break5
     block $for-continue|5
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|5
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break5
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|5
    end
   end
  end
  local.get $8
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  local.set $7
  local.get $0
  i32.const 8
  i32.add
  local.set $3
  loop $for-loop|6
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.le_s
   if
    block $for-break6
     block $for-continue|6
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|6
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break6
     end
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     br $for-loop|6
    end
   end
  end
  local.get $0
  local.get $6
  i32.sub
  local.set $3
  local.get $0
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|7
   local.get $0
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break7
     block $for-continue|7
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|7
      end
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break7
     end
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|7
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/isCaptured/isCaptured (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.set $5
  local.get $1
  i32.const 7
  i32.and
  local.set $6
  block $folding-inner0
   local.get $2
   i32.const 255
   i32.and
   if
    local.get $5
    i32.extend8_s
    i32.const 1
    i32.gt_s
    if
     local.get $6
     i32.const 7
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $1
      i32.const 7
      i32.sub
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
     local.get $6
     if (result i32)
      local.get $0
      local.get $1
      i32.const 9
      i32.sub
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
    end
   else
    local.get $5
    i32.extend8_s
    i32.const 6
    i32.lt_s
    if
     local.get $6
     if (result i32)
      local.get $0
      local.get $1
      i32.const 7
      i32.add
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 9
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
     local.get $6
     i32.const 7
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $1
      i32.const 9
      i32.add
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 9
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   local.get $2
   call $src/assembly/getKnightMoves/getKnightMoves
   local.tee $6
   i32.store
   local.get $6
   i32.load offset=12
   local.set $7
   loop $for-loop|0
    local.get $3
    local.get $7
    i32.lt_s
    if
     local.get $0
     local.get $6
     local.get $3
     call $~lib/array/Array<u16>#__get
     call $~lib/typedarray/Uint8Array#__get
     i32.const 7
     i32.and
     i32.const 3
     i32.eq
     br_if $folding-inner0
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   i32.const 7
   local.get $5
   i32.extend8_s
   i32.sub
   local.set $9
   i32.const 7
   local.get $1
   i32.const 7
   i32.and
   local.tee $6
   i32.sub
   local.set $3
   local.get $2
   i32.const 1
   i32.xor
   i32.const 3
   i32.shl
   local.tee $2
   i32.const 2
   i32.add
   local.set $10
   local.get $2
   i32.const 4
   i32.add
   local.set $11
   local.get $2
   i32.const 5
   i32.add
   local.set $7
   local.get $2
   i32.const 6
   i32.add
   local.set $8
   local.get $1
   f64.convert_i32_s
   local.get $5
   f64.convert_i32_s
   local.get $6
   f64.convert_i32_s
   f64.min
   f64.const 9
   f64.mul
   f64.sub
   local.set $4
   local.get $1
   i32.const 9
   i32.sub
   local.set $2
   loop $for-loop|1
    local.get $4
    local.get $2
    f64.convert_i32_s
    f64.le
    if
     block $for-break1
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $10
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 9
        i32.sub
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break1
      end
      local.get $2
      i32.const 9
      i32.sub
      local.set $2
      br $for-loop|1
     end
    end
   end
   local.get $1
   f64.convert_i32_s
   local.get $5
   f64.convert_i32_s
   local.get $3
   f64.convert_i32_s
   f64.min
   f64.const 7
   f64.mul
   f64.sub
   local.set $4
   local.get $1
   i32.const 7
   i32.sub
   local.set $2
   loop $for-loop|2
    local.get $4
    local.get $2
    f64.convert_i32_s
    f64.le
    if
     block $for-break2
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $10
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 7
        i32.sub
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break2
      end
      local.get $2
      i32.const 7
      i32.sub
      local.set $2
      br $for-loop|2
     end
    end
   end
   local.get $1
   f64.convert_i32_s
   local.get $9
   f64.convert_i32_s
   local.get $6
   f64.convert_i32_s
   f64.min
   f64.const 7
   f64.mul
   f64.add
   local.set $4
   local.get $1
   i32.const 7
   i32.add
   local.set $2
   loop $for-loop|3
    local.get $4
    local.get $2
    f64.convert_i32_s
    f64.ge
    if
     block $for-break3
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $10
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 7
        i32.add
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break3
      end
      local.get $2
      i32.const 7
      i32.add
      local.set $2
      br $for-loop|3
     end
    end
   end
   local.get $1
   f64.convert_i32_s
   local.get $9
   f64.convert_i32_s
   local.get $3
   f64.convert_i32_s
   f64.min
   f64.const 9
   f64.mul
   f64.add
   local.set $4
   local.get $1
   i32.const 9
   i32.add
   local.set $2
   loop $for-loop|4
    local.get $4
    local.get $2
    f64.convert_i32_s
    f64.ge
    if
     block $for-break4
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $10
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 9
        i32.add
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break4
      end
      local.get $2
      i32.const 9
      i32.add
      local.set $2
      br $for-loop|4
     end
    end
   end
   local.get $1
   local.get $5
   i32.const 3
   i32.shl
   i32.sub
   local.set $5
   local.get $1
   i32.const 8
   i32.sub
   local.set $2
   loop $for-loop|5
    local.get $2
    i32.extend8_s
    local.get $5
    i32.extend8_s
    i32.ge_s
    if
     block $for-break5
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $11
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 8
        i32.sub
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break5
      end
      local.get $2
      i32.const 8
      i32.sub
      local.set $2
      br $for-loop|5
     end
    end
   end
   local.get $3
   local.get $1
   i32.extend8_s
   i32.add
   local.set $3
   local.get $1
   i32.const 1
   i32.add
   local.set $2
   loop $for-loop|6
    local.get $3
    local.get $2
    i32.extend8_s
    i32.ge_s
    if
     block $for-break6
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $11
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 1
        i32.add
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break6
      end
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|6
     end
    end
   end
   local.get $1
   i32.extend8_s
   local.get $9
   i32.const 3
   i32.shl
   i32.add
   local.set $3
   local.get $1
   i32.const 8
   i32.add
   local.set $2
   loop $for-loop|7
    local.get $3
    local.get $2
    i32.extend8_s
    i32.ge_s
    if
     block $for-break7
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $11
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 8
        i32.add
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break7
      end
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      br $for-loop|7
     end
    end
   end
   local.get $1
   local.get $6
   i32.sub
   local.set $3
   local.get $1
   i32.const 1
   i32.sub
   local.set $2
   loop $for-loop|8
    local.get $2
    i32.extend8_s
    local.get $3
    i32.extend8_s
    i32.ge_s
    if
     block $for-break8
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $11
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $7
       i32.const 255
       i32.and
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Uint8Array#__get
       local.get $8
       i32.const 255
       i32.and
       i32.eq
       if (result i32)
        local.get $2
        i32.const 255
        i32.and
        local.get $1
        i32.const 1
        i32.sub
        i32.const 255
        i32.and
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner0
       br $for-break8
      end
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|8
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 1
 )
 (func $src/assembly/getKingMoves/getKingMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 2000
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.const 255
  i32.and
  i32.const 3
  i32.shr_u
  local.tee $5
  i32.const 7
  i32.lt_u
  local.get $0
  i32.const 7
  i32.and
  local.tee $7
  i32.const 0
  i32.ne
  local.set $3
  local.get $7
  i32.const 7
  i32.lt_u
  local.set $7
  local.get $5
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.sub
   local.tee $5
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 1
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $5
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 9
    i32.sub
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $7
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.sub
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.add
   local.tee $5
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 1
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $5
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.add
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $7
   if
    local.get $1
    local.get $0
    i32.const 9
    i32.add
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 1
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $3
  if
   local.get $1
   local.get $0
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $3
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 1
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $3
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
  end
  local.get $7
  if
   local.get $1
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 1
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $0
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
  end
  block $folding-inner0
   local.get $1
   i32.const 65
   call $~lib/typedarray/Uint8Array#__get
   i32.eqz
   br_if $folding-inner0
   local.get $2
   i32.const 255
   i32.and
   if
    local.get $1
    i32.const 60
    i32.const 1
    call $src/assembly/isCaptured/isCaptured
    br_if $folding-inner0
    local.get $1
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 8
    i32.and
    i32.const 8
    i32.eq
    if (result i32)
     local.get $1
     i32.const 61
     call $~lib/typedarray/Uint8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 62
     call $~lib/typedarray/Uint8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 61
     i32.const 1
     call $src/assembly/isCaptured/isCaptured
    end
    i32.eqz
    if
     local.get $4
     local.get $4
     i32.load offset=12
     i32.const 62
     call $~lib/array/Array<u16>#__set
    end
    local.get $1
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 4
    i32.and
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 59
     call $~lib/typedarray/Uint8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 58
     call $~lib/typedarray/Uint8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 57
     call $~lib/typedarray/Uint8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 59
     i32.const 1
     call $src/assembly/isCaptured/isCaptured
    end
    i32.eqz
    if
     local.get $4
     local.get $4
     i32.load offset=12
     i32.const 58
     call $~lib/array/Array<u16>#__set
    end
   else
    local.get $1
    i32.const 4
    i32.const 0
    call $src/assembly/isCaptured/isCaptured
    br_if $folding-inner0
    local.get $1
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 2
    i32.and
    i32.const 2
    i32.eq
    if (result i32)
     local.get $1
     i32.const 5
     call $~lib/typedarray/Uint8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 6
     call $~lib/typedarray/Uint8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 5
     i32.const 0
     call $src/assembly/isCaptured/isCaptured
    end
    i32.eqz
    if
     local.get $4
     local.get $4
     i32.load offset=12
     i32.const 6
     call $~lib/array/Array<u16>#__set
    end
    local.get $1
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    i32.and
    if (result i32)
     local.get $1
     i32.const 3
     call $~lib/typedarray/Uint8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 1
     call $~lib/typedarray/Uint8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 2
     call $~lib/typedarray/Uint8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 3
     i32.const 0
     call $src/assembly/isCaptured/isCaptured
    end
    i32.eqz
    if
     local.get $4
     local.get $4
     i32.load offset=12
     i32.const 2
     call $~lib/array/Array<u16>#__set
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2224
  call $~lib/rt/__newArray
  local.tee $5
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.set $4
  local.get $0
  i32.const 7
  i32.and
  local.tee $6
  i32.const 7
  i32.lt_u
  local.set $3
  local.get $6
  i32.const 0
  i32.ne
  local.set $6
  local.get $2
  i32.const 255
  i32.and
  if
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.sub
    local.tee $2
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if
     local.get $1
     local.get $2
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.eqz
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u8>#__set
     end
    else
     local.get $4
     i32.const 255
     i32.and
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $2
      i32.const 255
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u8>#__set
     end
    end
   end
   local.get $6
   if
    local.get $1
    local.get $0
    i32.const 9
    i32.sub
    local.tee $0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if
     local.get $1
     local.get $0
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.eqz
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      call $~lib/array/Array<u8>#__set
     end
    else
     local.get $4
     i32.const 255
     i32.and
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $0
      i32.const 255
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      call $~lib/array/Array<u8>#__set
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $3
  if
   local.get $1
   local.get $0
   i32.const 9
   i32.add
   local.tee $2
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if
    local.get $1
    local.get $2
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u8>#__set
    end
   else
    local.get $4
    i32.const 255
    i32.and
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $2
     i32.const 255
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  local.get $6
  if
   local.get $1
   local.get $0
   i32.const 7
   i32.add
   local.tee $0
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if
    local.get $1
    local.get $0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $0
     call $~lib/array/Array<u8>#__set
    end
   else
    local.get $4
    i32.const 255
    i32.and
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $0
     i32.const 255
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $0
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/assembly/getBishopHitMoves/getBishopHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2288
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $6
  i32.extend8_s
  i32.sub
  local.set $7
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $8
  i32.sub
  local.set $9
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 9
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break0
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break0
     end
     local.get $3
     i32.const 9
     i32.sub
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 7
  i32.sub
  local.set $3
  loop $for-loop|1
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break1
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break1
     end
     local.get $3
     i32.const 7
     i32.sub
     local.set $3
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 7
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break2
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break2
     end
     local.get $3
     i32.const 7
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 9
  i32.add
  local.set $3
  loop $for-loop|3
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break3
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break3
     end
     local.get $3
     i32.const 9
     i32.add
     local.set $3
     br $for-loop|3
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getKnightHitMoves/getKnightHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2352
  call $~lib/rt/__newArray
  local.tee $7
  i32.store
  local.get $0
  i32.const 7
  i32.and
  local.tee $5
  i32.const 1
  i32.gt_u
  local.tee $8
  local.get $5
  i32.const 0
  i32.ne
  local.get $8
  select
  local.set $4
  local.get $5
  i32.const 6
  i32.lt_u
  local.tee $3
  local.get $5
  i32.const 7
  i32.lt_u
  local.get $3
  select
  local.set $5
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  i32.extend8_s
  local.tee $9
  i32.const 1
  i32.gt_s
  local.tee $10
  local.get $9
  i32.const 0
  i32.gt_s
  local.get $10
  select
  local.set $6
  local.get $9
  i32.const 6
  i32.lt_s
  local.tee $11
  local.get $9
  i32.const 7
  i32.lt_s
  local.get $11
  select
  local.set $9
  local.get $10
  if
   local.get $4
   if
    local.get $1
    local.get $0
    i32.const 17
    i32.sub
    local.tee $10
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $10
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $10
     call $~lib/array/Array<u8>#__set
    end
   end
   local.get $5
   if
    local.get $1
    local.get $0
    i32.const 15
    i32.sub
    local.tee $10
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $10
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $10
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  local.get $11
  if
   local.get $4
   if
    local.get $1
    local.get $0
    i32.const 15
    i32.add
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     call $~lib/array/Array<u8>#__set
    end
   end
   local.get $5
   if
    local.get $1
    local.get $0
    i32.const 17
    i32.add
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  local.get $8
  if
   local.get $6
   if
    local.get $1
    local.get $0
    i32.const 10
    i32.sub
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     call $~lib/array/Array<u8>#__set
    end
   end
   local.get $9
   if
    local.get $1
    local.get $0
    i32.const 6
    i32.add
    local.tee $4
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $4
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  local.get $3
  if
   local.get $6
   if
    local.get $1
    local.get $0
    i32.const 6
    i32.sub
    local.tee $3
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $3
     call $~lib/array/Array<u8>#__set
    end
   end
   local.get $9
   if
    local.get $1
    local.get $0
    i32.const 10
    i32.add
    local.tee $0
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $0
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $7
     local.get $7
     i32.load offset=12
     local.get $0
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/assembly/getRookHitMoves/getRookHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2416
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $3
  i32.sub
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $5
  i32.sub
  local.set $7
  local.get $0
  local.get $3
  i32.const 3
  i32.shl
  i32.sub
  local.set $8
  local.get $0
  i32.const 8
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.extend8_s
   local.get $8
   i32.extend8_s
   i32.ge_s
   if
    block $for-break0
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break0
     end
     local.get $3
     i32.const 8
     i32.sub
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  local.get $7
  i32.add
  local.set $7
  local.get $0
  i32.const 1
  i32.add
  local.set $3
  loop $for-loop|1
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.le_s
   if
    block $for-break1
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break1
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
  end
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  local.set $6
  local.get $0
  i32.const 8
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $3
   i32.extend8_s
   local.get $6
   i32.extend8_s
   i32.le_s
   if
    block $for-break2
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break2
     end
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  local.get $0
  local.get $5
  i32.sub
  local.set $3
  local.get $0
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|3
   local.get $0
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break3
     local.get $1
     local.get $0
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       call $~lib/array/Array<u8>#__set
      end
      br $for-break3
     end
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|3
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getQueenHitMoves/getQueenHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2480
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $7
  i32.sub
  local.set $8
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $6
  i32.sub
  local.set $9
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 9
  i32.sub
  local.set $3
  loop $for-loop|0
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break0
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break0
     end
     local.get $3
     i32.const 9
     i32.sub
     local.set $3
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $7
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $5
  local.get $0
  i32.const 7
  i32.sub
  local.set $3
  loop $for-loop|1
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.le
   if
    block $for-break1
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break1
     end
     local.get $3
     i32.const 7
     i32.sub
     local.set $3
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 7
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break2
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break2
     end
     local.get $3
     i32.const 7
     i32.add
     local.set $3
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $8
  f64.convert_i32_s
  local.get $9
  f64.convert_i32_s
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $5
  local.get $0
  i32.const 9
  i32.add
  local.set $3
  loop $for-loop|3
   local.get $5
   local.get $3
   f64.convert_i32_s
   f64.ge
   if
    block $for-break3
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break3
     end
     local.get $3
     i32.const 9
     i32.add
     local.set $3
     br $for-loop|3
    end
   end
  end
  local.get $0
  local.get $7
  i32.const 3
  i32.shl
  i32.sub
  local.set $7
  local.get $0
  i32.const 8
  i32.sub
  local.set $3
  loop $for-loop|4
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.ge_s
   if
    block $for-break4
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break4
     end
     local.get $3
     i32.const 8
     i32.sub
     local.set $3
     br $for-loop|4
    end
   end
  end
  local.get $0
  local.get $9
  i32.add
  local.set $7
  local.get $0
  i32.const 1
  i32.add
  local.set $3
  loop $for-loop|5
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.le_s
   if
    block $for-break5
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break5
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|5
    end
   end
  end
  local.get $8
  i32.const 3
  i32.shl
  local.get $0
  i32.add
  local.set $7
  local.get $0
  i32.const 8
  i32.add
  local.set $3
  loop $for-loop|6
   local.get $3
   i32.extend8_s
   local.get $7
   i32.extend8_s
   i32.le_s
   if
    block $for-break6
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
      end
      br $for-break6
     end
     local.get $3
     i32.const 8
     i32.add
     local.set $3
     br $for-loop|6
    end
   end
  end
  local.get $0
  local.get $6
  i32.sub
  local.set $3
  local.get $0
  i32.const 1
  i32.sub
  local.set $0
  loop $for-loop|7
   local.get $0
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break7
     local.get $1
     local.get $0
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $2
      i32.const 255
      i32.and
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.shr_u
      i32.ne
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       call $~lib/array/Array<u8>#__set
      end
      br $for-break7
     end
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|7
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getKingHitMoves/getKingHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 9
  i32.const 2544
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.const 255
  i32.and
  i32.const 3
  i32.shr_u
  local.tee $5
  i32.const 7
  i32.lt_u
  local.get $0
  i32.const 7
  i32.and
  local.tee $7
  i32.const 0
  i32.ne
  local.set $3
  local.get $7
  i32.const 7
  i32.lt_u
  local.set $7
  local.get $5
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.sub
   local.tee $5
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $5
    call $~lib/array/Array<u8>#__set
   end
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 9
    i32.sub
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     call $~lib/array/Array<u8>#__set
    end
   end
   local.get $7
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.sub
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.add
   local.tee $5
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $5
    call $~lib/array/Array<u8>#__set
   end
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.add
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     call $~lib/array/Array<u8>#__set
    end
   end
   local.get $7
   if
    local.get $1
    local.get $0
    i32.const 9
    i32.add
    local.tee $5
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    if (result i32)
     local.get $2
     i32.const 255
     i32.and
     local.get $1
     local.get $5
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shr_u
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     i32.load offset=12
     local.get $5
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  local.get $3
  if
   local.get $1
   local.get $0
   i32.const 1
   i32.sub
   local.tee $3
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $3
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $3
    call $~lib/array/Array<u8>#__set
   end
  end
  local.get $7
  if
   local.get $1
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   if (result i32)
    local.get $2
    i32.const 255
    i32.and
    local.get $1
    local.get $0
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.shr_u
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $0
    call $~lib/array/Array<u8>#__set
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/assembly/getMovedBoard/getMovedBoard (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 4156
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i32.const 0
    i32.store
    local.get $5
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4156
    i32.lt_s
    br_if $folding-inner0
    local.get $0
    i32.const 65535
    i32.and
    i32.const 10
    i32.shr_u
    local.set $4
    local.get $0
    i32.const 63
    i32.and
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    i32.const 0
    i32.store
    i32.const 0
    local.get $1
    i32.load offset=8
    local.tee $7
    local.get $7
    i32.const 0
    i32.gt_s
    select
    local.set $6
    local.get $7
    local.get $6
    i32.sub
    local.tee $7
    i32.const 0
    local.get $7
    i32.const 0
    i32.gt_s
    select
    local.set $9
    local.get $3
    block $__inlined_func$~lib/typedarray/Uint8Array#constructor (result i32)
     local.get $3
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     block $folding-inner00
      global.get $~lib/memory/__stack_pointer
      i32.const 4156
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      i32.const 0
      i32.store
      local.get $3
      i32.const 12
      i32.const 3
      call $~lib/rt/itcms/__new
      local.tee $3
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4156
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      local.get $3
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.const 2
       call $~lib/rt/itcms/__new
       local.tee $3
       i32.store
      end
      local.get $3
      i32.const 0
      i32.store
      local.get $3
      i32.const 0
      i32.store offset=4
      local.get $3
      i32.const 0
      i32.store offset=8
      local.get $9
      i32.const 1073741820
      i32.gt_u
      if
       i32.const 1664
       i32.const 3216
       i32.const 19
       i32.const 57
       call $~lib/builtins/abort
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.const 0
      call $~lib/rt/itcms/__new
      local.tee $8
      i32.store offset=4
      local.get $3
      local.get $8
      i32.store
      local.get $8
      if
       local.get $3
       local.get $8
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      local.get $3
      local.get $8
      i32.store offset=4
      local.get $3
      local.get $9
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $7
      local.get $3
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $3
      br $__inlined_func$~lib/typedarray/Uint8Array#constructor
     end
     br $folding-inner1
    end
    local.tee $3
    i32.store
    local.get $3
    i32.load offset=4
    local.get $6
    local.get $1
    i32.load offset=4
    i32.add
    local.get $9
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $5
    local.get $3
    i32.store
    local.get $3
    local.get $2
    local.get $3
    local.get $4
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    local.get $4
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    i32.const 64
    local.get $1
    i32.const 64
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    i32.xor
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    block $break|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.get $4
         call $~lib/typedarray/Uint8Array#__get
         i32.const 7
         i32.and
         i32.const 1
         i32.sub
         br_table $case0|0 $case3|0 $case3|0 $case1|0 $case3|0 $case2|0 $case3|0
        end
        local.get $1
        i32.const 66
        call $~lib/typedarray/Uint8Array#__get
        local.get $2
        i32.eq
        if
         local.get $3
         local.get $2
         i32.const 8
         i32.add
         local.get $2
         i32.const 8
         i32.sub
         local.get $1
         i32.const 64
         call $~lib/typedarray/Uint8Array#__get
         select
         i32.const 255
         i32.and
         i32.const 0
         call $~lib/typedarray/Uint8Array#__set
        end
        local.get $3
        i32.const 66
        i32.const 0
        call $~lib/typedarray/Uint8Array#__set
        local.get $2
        local.get $4
        i32.sub
        i32.const 255
        i32.and
        i32.const 16
        i32.eq
        if
         local.get $3
         i32.const 66
         local.get $2
         i32.const 8
         i32.sub
         i32.const 255
         i32.and
         call $~lib/typedarray/Uint8Array#__set
        end
        local.get $4
        local.get $2
        i32.sub
        i32.const 255
        i32.and
        i32.const 16
        i32.eq
        if
         local.get $3
         i32.const 66
         local.get $2
         i32.const 8
         i32.add
         call $~lib/typedarray/Uint8Array#__set
        end
        local.get $2
        i32.const 3
        i32.shr_u
        i32.eqz
        if
         local.get $3
         local.get $2
         local.get $0
         i32.const 65535
         i32.and
         i32.const 6
         i32.shr_u
         i32.const 15
         i32.and
         call $~lib/typedarray/Uint8Array#__set
        end
        local.get $2
        i32.const 3
        i32.shr_u
        i32.const 7
        i32.eq
        if
         local.get $3
         local.get $2
         local.get $0
         i32.const 65535
         i32.and
         i32.const 6
         i32.shr_u
         i32.const 15
         i32.and
         call $~lib/typedarray/Uint8Array#__set
        end
        br $break|0
       end
       local.get $3
       i32.const 66
       i32.const 0
       call $~lib/typedarray/Uint8Array#__set
       local.get $1
       i32.const 65
       call $~lib/typedarray/Uint8Array#__get
       i32.eqz
       br_if $break|0
       local.get $4
       i32.const 63
       i32.eq
       if
        local.get $3
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Uint8Array#__get
        i32.const 7
        i32.and
        call $~lib/typedarray/Uint8Array#__set
       end
       local.get $4
       i32.const 56
       i32.eq
       if
        local.get $3
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Uint8Array#__get
        i32.const 11
        i32.and
        call $~lib/typedarray/Uint8Array#__set
       end
       local.get $4
       i32.const 7
       i32.eq
       if
        local.get $3
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Uint8Array#__get
        i32.const 13
        i32.and
        call $~lib/typedarray/Uint8Array#__set
       end
       local.get $4
       i32.eqz
       if
        local.get $3
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Uint8Array#__get
        i32.const 14
        i32.and
        call $~lib/typedarray/Uint8Array#__set
       end
       br $break|0
      end
      local.get $3
      i32.const 66
      i32.const 0
      call $~lib/typedarray/Uint8Array#__set
      local.get $1
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.eqz
      br_if $break|0
      local.get $4
      i32.const 4
      i32.eq
      if
       local.get $3
       i32.const 65
       local.get $1
       i32.const 65
       call $~lib/typedarray/Uint8Array#__get
       i32.const 12
       i32.and
       call $~lib/typedarray/Uint8Array#__set
       local.get $2
       i32.const 2
       i32.eq
       if
        local.get $3
        i32.const 3
        i32.const 4
        call $~lib/typedarray/Uint8Array#__set
        local.get $3
        i32.const 0
        i32.const 0
        call $~lib/typedarray/Uint8Array#__set
        br $break|0
       end
       local.get $2
       i32.const 6
       i32.eq
       if
        local.get $3
        i32.const 5
        i32.const 4
        call $~lib/typedarray/Uint8Array#__set
        local.get $3
        i32.const 7
        i32.const 0
        call $~lib/typedarray/Uint8Array#__set
        br $break|0
       end
      end
      local.get $4
      i32.const 60
      i32.eq
      if
       local.get $3
       i32.const 65
       local.get $1
       i32.const 65
       call $~lib/typedarray/Uint8Array#__get
       i32.const 3
       i32.and
       call $~lib/typedarray/Uint8Array#__set
       local.get $2
       i32.const 58
       i32.eq
       if
        local.get $3
        i32.const 59
        i32.const 12
        call $~lib/typedarray/Uint8Array#__set
        local.get $3
        i32.const 56
        i32.const 0
        call $~lib/typedarray/Uint8Array#__set
        br $break|0
       end
       local.get $2
       i32.const 62
       i32.eq
       if
        local.get $3
        i32.const 61
        i32.const 12
        call $~lib/typedarray/Uint8Array#__set
        local.get $3
        i32.const 63
        i32.const 0
        call $~lib/typedarray/Uint8Array#__set
        br $break|0
       end
      end
      br $break|0
     end
     local.get $3
     i32.const 66
     i32.const 0
     call $~lib/typedarray/Uint8Array#__set
    end
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.const 4
    i32.eq
    if
     local.get $3
     i32.const 0
     call $~lib/typedarray/Uint8Array#__get
     i32.const 4
     i32.ne
     if
      local.get $3
      i32.const 65
      local.get $3
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 14
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
     local.get $3
     i32.const 7
     call $~lib/typedarray/Uint8Array#__get
     i32.const 4
     i32.ne
     if
      local.get $3
      i32.const 65
      local.get $3
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 13
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
    end
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.const 12
    i32.eq
    if
     local.get $3
     i32.const 56
     call $~lib/typedarray/Uint8Array#__get
     i32.const 12
     i32.ne
     if
      local.get $3
      i32.const 65
      local.get $3
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 11
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
     local.get $3
     i32.const 63
     call $~lib/typedarray/Uint8Array#__get
     i32.const 12
     i32.ne
     if
      local.get $3
      i32.const 65
      local.get $3
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   end
  end
  i32.const 20560
  i32.const 20608
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   i32.const 1280
   i32.const 1616
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store
  local.get $0
  i32.eqz
  if
   i32.const 3344
   i32.const 1616
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $src/assembly/generateLegalMoves/generateLegalMoves (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 3472
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/assembly/generatePseudoMoves/generatePseudoMoves
  local.tee $5
  i32.store offset=4
  local.get $5
  if
   local.get $5
   i32.load offset=12
   local.set $8
   loop $for-loop|0
    local.get $6
    local.get $8
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     local.get $6
     call $~lib/array/Array<u16>#__get
     local.get $0
     call $src/assembly/getMovedBoard/getMovedBoard
     local.tee $3
     i32.store offset=8
     local.get $3
     local.get $0
     i32.const 64
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.shl
     i32.const 6
     i32.add
     local.set $9
     i32.const 0
     local.set $2
     i32.const -1
     local.set $1
     block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
      local.get $3
      i32.load offset=8
      local.tee $7
      i32.const 0
      i32.le_s
      i32.const 1
      local.get $7
      select
      br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
      local.get $3
      i32.load offset=4
      local.set $3
      loop $while-continue|0
       local.get $2
       local.get $7
       i32.lt_s
       if
        local.get $2
        local.tee $1
        local.get $3
        i32.add
        i32.load8_u
        local.get $9
        i32.const 255
        i32.and
        i32.eq
        br_if $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
        local.get $1
        i32.const 1
        i32.add
        local.set $2
        br $while-continue|0
       end
      end
      i32.const -1
      local.set $1
     end
     local.get $1
     local.get $0
     i32.const 64
     call $~lib/typedarray/Uint8Array#__get
     call $src/assembly/isCaptured/isCaptured
     i32.eqz
     if
      local.get $5
      local.get $6
      call $~lib/array/Array<u16>#__get
      local.set $3
      local.get $4
      local.get $4
      i32.load offset=12
      local.tee $2
      i32.const 1
      i32.add
      local.tee $1
      i32.const 1
      i32.const 1
      call $~lib/array/ensureCapacity
      local.get $4
      i32.load offset=4
      local.get $2
      i32.const 1
      i32.shl
      i32.add
      local.get $3
      i32.store16
      local.get $4
      local.get $1
      i32.store offset=12
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $src/assembly/typeTest/typeTest (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store
  local.get $1
  i32.const 5
  i32.const 1
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  i32.store offset=4
  local.get $3
  i32.load offset=4
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $2
  i32.extend8_s
  i32.store16
  local.get $3
  i32.load offset=4
  local.get $0
  i32.const 7
  i32.and
  local.tee $1
  i32.store16 offset=2
  local.get $3
  i32.load offset=4
  i32.const 7
  local.get $2
  i32.sub
  i32.extend8_s
  i32.store16 offset=4
  local.get $3
  i32.load offset=4
  i32.const 7
  local.get $1
  i32.sub
  i32.extend8_s
  i32.store16 offset=6
  local.get $3
  i32.load offset=4
  local.get $0
  local.get $2
  i32.const 3
  i32.shl
  i32.sub
  i32.extend8_s
  i32.store16 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/assembly/getDefenderValues/getDefenderValues (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store
  local.get $5
  i32.const 0
  i32.const 2
  i32.const 13
  i32.const 3648
  call $~lib/rt/__newArray
  local.tee $9
  i32.store
  local.get $1
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.set $5
  local.get $2
  i32.const 255
  i32.and
  if
   local.get $5
   i32.const 255
   i32.and
   i32.const 1
   i32.gt_u
   if
    local.get $0
    local.get $1
    i32.const 7
    i32.sub
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    i32.eq
    if
     local.get $9
     local.get $9
     i32.load offset=12
     f32.const 1
     call $~lib/array/Array<f32>#__set
    end
    local.get $0
    local.get $1
    i32.const 9
    i32.sub
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    i32.eq
    if
     local.get $9
     local.get $9
     i32.load offset=12
     f32.const 1
     call $~lib/array/Array<f32>#__set
    end
   end
  else
   local.get $5
   i32.const 255
   i32.and
   i32.const 6
   i32.lt_u
   if
    local.get $0
    local.get $1
    i32.const 7
    i32.add
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 9
    i32.eq
    if
     local.get $9
     local.get $9
     i32.load offset=12
     f32.const 1
     call $~lib/array/Array<f32>#__set
    end
    local.get $0
    local.get $1
    i32.const 9
    i32.add
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 9
    i32.eq
    if
     local.get $9
     local.get $9
     i32.load offset=12
     f32.const 1
     call $~lib/array/Array<f32>#__set
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  local.get $2
  call $src/assembly/getKnightMoves/getKnightMoves
  local.tee $6
  i32.store offset=4
  local.get $6
  i32.load offset=12
  local.set $7
  loop $for-loop|1
   local.get $3
   i32.const 255
   i32.and
   local.get $7
   i32.const 255
   i32.and
   i32.lt_u
   if
    local.get $0
    local.get $6
    local.get $3
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__get
    call $~lib/typedarray/Uint8Array#__get
    i32.const 7
    i32.and
    i32.const 3
    i32.eq
    if
     local.get $9
     local.get $9
     i32.load offset=12
     f32.const 3.049999952316284
     call $~lib/array/Array<f32>#__set
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|1
   end
  end
  i32.const 7
  local.get $5
  i32.sub
  local.set $10
  i32.const 7
  local.get $1
  i32.const 7
  i32.and
  local.tee $6
  i32.sub
  local.set $3
  local.get $2
  i32.const 1
  i32.xor
  i32.const 3
  i32.shl
  local.tee $2
  i32.const 2
  i32.add
  local.set $11
  local.get $2
  i32.const 4
  i32.add
  local.set $12
  local.get $2
  i32.const 5
  i32.add
  local.set $7
  local.get $2
  i32.const 6
  i32.add
  local.set $8
  local.get $1
  f64.convert_i32_s
  local.get $5
  f64.convert_i32_u
  local.get $6
  f64.convert_i32_u
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $4
  local.get $1
  i32.const 9
  i32.sub
  local.set $2
  loop $for-loop|2
   local.get $4
   local.get $2
   f64.convert_i32_s
   f64.le
   if
    block $for-break2
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 3.3299999237060547
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 9
       i32.sub
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break2
     end
     local.get $2
     i32.const 9
     i32.sub
     local.set $2
     br $for-loop|2
    end
   end
  end
  local.get $1
  f64.convert_i32_s
  local.get $5
  f64.convert_i32_u
  local.get $3
  f64.convert_i32_u
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $4
  local.get $1
  i32.const 7
  i32.sub
  local.set $2
  loop $for-loop|3
   local.get $4
   local.get $2
   f64.convert_i32_s
   f64.le
   if
    block $for-break3
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 3.3299999237060547
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 7
       i32.sub
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break3
     end
     local.get $2
     i32.const 7
     i32.sub
     local.set $2
     br $for-loop|3
    end
   end
  end
  local.get $1
  f64.convert_i32_s
  local.get $10
  f64.convert_i32_u
  local.get $6
  f64.convert_i32_u
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $4
  local.get $1
  i32.const 7
  i32.add
  local.set $2
  loop $for-loop|4
   local.get $4
   local.get $2
   f64.convert_i32_s
   f64.ge
   if
    block $for-break4
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 3.3299999237060547
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 7
       i32.add
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break4
     end
     local.get $2
     i32.const 7
     i32.add
     local.set $2
     br $for-loop|4
    end
   end
  end
  local.get $1
  f64.convert_i32_s
  local.get $10
  f64.convert_i32_u
  local.get $3
  f64.convert_i32_u
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $4
  local.get $1
  i32.const 9
  i32.add
  local.set $2
  loop $for-loop|5
   local.get $4
   local.get $2
   f64.convert_i32_s
   f64.ge
   if
    block $for-break5
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 3.3299999237060547
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 9
       i32.add
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break5
     end
     local.get $2
     i32.const 9
     i32.add
     local.set $2
     br $for-loop|5
    end
   end
  end
  local.get $1
  local.get $5
  i32.const 3
  i32.shl
  i32.sub
  local.set $5
  local.get $1
  i32.const 8
  i32.sub
  local.set $2
  loop $for-loop|6
   local.get $2
   i32.extend8_s
   local.get $5
   i32.extend8_s
   i32.ge_s
   if
    block $for-break6
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 5.630000114440918
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 8
       i32.sub
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break6
     end
     local.get $2
     i32.const 8
     i32.sub
     local.set $2
     br $for-loop|6
    end
   end
  end
  local.get $1
  local.get $3
  i32.add
  local.set $3
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  loop $for-loop|7
   local.get $2
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.le_s
   if
    block $for-break7
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 5.630000114440918
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 1
       i32.add
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break7
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|7
    end
   end
  end
  local.get $10
  i32.const 3
  i32.shl
  local.get $1
  i32.add
  local.set $3
  local.get $1
  i32.const 8
  i32.add
  local.set $2
  loop $for-loop|8
   local.get $2
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.le_s
   if
    block $for-break8
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 5.630000114440918
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 8
       i32.add
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break8
     end
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     br $for-loop|8
    end
   end
  end
  local.get $1
  local.get $6
  i32.sub
  local.set $3
  local.get $1
  i32.const 1
  i32.sub
  local.set $2
  loop $for-loop|9
   local.get $2
   i32.extend8_s
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break9
     local.get $0
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     if
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 5.630000114440918
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $7
      i32.const 255
      i32.and
      i32.eq
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 9.5
       call $~lib/array/Array<f32>#__set
      end
      local.get $0
      local.get $2
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $2
       i32.const 255
       i32.and
       local.get $1
       i32.const 1
       i32.sub
       i32.const 255
       i32.and
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $9
       local.get $9
       i32.load offset=12
       f32.const 15
       call $~lib/array/Array<f32>#__set
      end
      br $for-break9
     end
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $for-loop|9
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1664
   i32.const 3216
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<u8,~lib/array/Array<f32>>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 24
  i32.const 14
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  local.get $0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $1
  i32.store offset=8
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/map/Map<u8,~lib/array/Array<f32>>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4156
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   i32.load
   local.get $1
   i32.const 255
   i32.and
   i32.const -1028477379
   i32.mul
   i32.const 374761394
   i32.add
   i32.const 17
   i32.rotl
   i32.const 668265263
   i32.mul
   local.tee $3
   i32.const 15
   i32.shr_u
   local.get $3
   i32.xor
   i32.const -2048144777
   i32.mul
   local.tee $3
   i32.const 13
   i32.shr_u
   local.get $3
   i32.xor
   i32.const -1028477379
   i32.mul
   local.tee $3
   i32.const 16
   i32.shr_u
   local.get $3
   i32.xor
   local.tee $8
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $3
   block $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find
    loop $while-continue|0
     local.get $3
     if
      local.get $3
      i32.load offset=8
      local.tee $4
      i32.const 1
      i32.and
      if (result i32)
       i32.const 0
      else
       local.get $3
       i32.load8_u
       local.get $1
       i32.const 255
       i32.and
       i32.eq
      end
      br_if $__inlined_func$~lib/map/Map<u8,~lib/array/Array<f32>>#find
      local.get $4
      i32.const -2
      i32.and
      local.set $3
      br $while-continue|0
     end
    end
    i32.const 0
    local.set $3
   end
   local.get $3
   if
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   else
    local.get $0
    i32.load offset=16
    local.get $0
    i32.load offset=12
    i32.eq
    if
     local.get $0
     i32.load offset=20
     local.get $0
     i32.load offset=12
     i32.const 3
     i32.mul
     i32.const 4
     i32.div_s
     i32.lt_s
     if (result i32)
      local.get $0
      i32.load offset=4
     else
      local.get $0
      i32.load offset=4
      i32.const 1
      i32.shl
      i32.const 1
      i32.or
     end
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4156
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     i64.const 0
     i64.store
     local.get $3
     local.get $5
     i32.const 1
     i32.add
     local.tee $3
     i32.const 2
     i32.shl
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $9
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.const 3
     i32.shl
     i32.const 3
     i32.div_s
     local.tee $7
     i32.const 12
     i32.mul
     call $~lib/arraybuffer/ArrayBuffer#constructor
     local.tee $4
     i32.store offset=4
     local.get $0
     i32.load offset=8
     local.tee $10
     local.get $0
     i32.load offset=16
     i32.const 12
     i32.mul
     i32.add
     local.set $6
     local.get $4
     local.set $3
     loop $while-continue|00
      local.get $6
      local.get $10
      i32.ne
      if
       local.get $10
       i32.load offset=8
       i32.const 1
       i32.and
       i32.eqz
       if
        local.get $3
        local.get $10
        i32.load8_u
        local.tee $11
        i32.store8
        local.get $3
        local.get $10
        i32.load offset=4
        i32.store offset=4
        local.get $3
        local.get $11
        i32.const -1028477379
        i32.mul
        i32.const 374761394
        i32.add
        i32.const 17
        i32.rotl
        i32.const 668265263
        i32.mul
        local.tee $11
        i32.const 15
        i32.shr_u
        local.get $11
        i32.xor
        i32.const -2048144777
        i32.mul
        local.tee $11
        i32.const 13
        i32.shr_u
        local.get $11
        i32.xor
        i32.const -1028477379
        i32.mul
        local.tee $11
        i32.const 16
        i32.shr_u
        local.get $11
        i32.xor
        local.get $5
        i32.and
        i32.const 2
        i32.shl
        local.get $9
        i32.add
        local.tee $11
        i32.load
        i32.store offset=8
        local.get $11
        local.get $3
        i32.store
        local.get $3
        i32.const 12
        i32.add
        local.set $3
       end
       local.get $10
       i32.const 12
       i32.add
       local.set $10
       br $while-continue|00
      end
     end
     local.get $0
     local.get $9
     i32.store
     local.get $9
     if
      local.get $0
      local.get $9
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $0
     local.get $5
     i32.store offset=4
     local.get $0
     local.get $4
     i32.store offset=8
     local.get $4
     if
      local.get $0
      local.get $4
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     local.get $0
     local.get $7
     i32.store offset=12
     local.get $0
     local.get $0
     i32.load offset=20
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $3
    i32.store
    local.get $0
    local.get $0
    i32.load offset=16
    local.tee $4
    i32.const 1
    i32.add
    i32.store offset=16
    local.get $4
    i32.const 12
    i32.mul
    local.get $3
    i32.add
    local.tee $3
    local.get $1
    i32.store8
    local.get $3
    local.get $2
    i32.store offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 1
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $0
    local.get $0
    i32.load offset=20
    i32.const 1
    i32.add
    i32.store offset=20
    local.get $3
    local.get $0
    i32.load
    local.get $0
    i32.load offset=4
    local.get $8
    i32.and
    i32.const 2
    i32.shl
    i32.add
    local.tee $0
    i32.load
    i32.store offset=8
    local.get $0
    local.get $3
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 20560
  i32.const 20608
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:src/assembly/getMovedBoard/getMovedBoard (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $src/assembly/getMovedBoard/getMovedBoard
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getPawnMoves/getPawnMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getPawnMoves/getPawnMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getKnightMoves/getKnightMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKnightMoves/getKnightMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getKnightHitMoves/getKnightHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKnightHitMoves/getKnightHitMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getKingMoves/getKingMoves@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingMoves/getKingMoves@varargs
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getKingHitMoves/getKingHitMoves@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingHitMoves/getKingHitMoves@varargs
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getQueenMoves/getQueenMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getQueenMoves/getQueenMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getQueenHitMoves/getQueenHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getQueenHitMoves/getQueenHitMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getBishopMoves/getBishopMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getBishopMoves/getBishopMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getBishopHitMoves/getBishopHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getBishopHitMoves/getBishopHitMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getRookMoves/getRookMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getRookMoves/getRookMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getRookHitMoves/getRookHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getRookHitMoves/getRookHitMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/isCaptured/isCaptured (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/isCaptured/isCaptured
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/generatePseudoMoves/generatePseudoMoves (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/assembly/generatePseudoMoves/generatePseudoMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/perft/perft (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $src/assembly/perft/perft
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/generateLegalMoves/generateLegalMoves (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/assembly/generateLegalMoves/generateLegalMoves
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getHitMovesNoPromotion/getHitMovesNoPromotion (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/assembly/getHitMovesNoPromotion/getHitMovesNoPromotion
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/getDefenderValues/getDefenderValues (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getDefenderValues/getDefenderValues
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/assembly/evaluateBoard/evaluateBoard (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4156
  i32.lt_s
  if
   i32.const 20560
   i32.const 20608
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/assembly/evaluateBoard/evaluateBoard
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1152
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
