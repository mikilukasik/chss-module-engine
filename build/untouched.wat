(module
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
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
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $src/assembly/generatePseudoMoves/moveGenerators i32 (i32.const 1088))
 (global $src/assembly/index/Uint8Array_ID i32 (i32.const 3))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1872))
 (global $~lib/memory/__data_end i32 (i32.const 1948))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18332))
 (global $~lib/memory/__heap_base i32 (i32.const 18332))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 44) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 208) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 236) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 300) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 352) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 380) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 508) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 572) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 620) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 732) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 764) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 796) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 828) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 860) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 892) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 924) "\1c\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\08\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 956) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 988) "\1c\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\08\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1020) ",\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1c\00\00\00\d0\01\00\00\b0\02\00\00\f0\02\00\000\03\00\00p\03\00\00\b0\03\00\00\f0\03\00\00")
 (data (i32.const 1068) ",\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\10\00\00\00\10\04\00\00\10\04\00\00\1c\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1116) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1244) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1276) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1308) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1340) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1372) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1404) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1436) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1564) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1596) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00|\00\00\00S\00o\00m\00t\00h\00i\00n\00g\00\'\00s\00 \00w\00r\00o\00n\00g\00,\00 \00i\00l\00l\00e\00g\00a\00l\00 \00b\00o\00a\00r\00d\00 \00w\00h\00i\00l\00e\00 \00u\00s\00i\00n\00g\00 \00g\00e\00n\00e\00r\00a\00t\00e\00L\00e\00g\00a\00l\00M\00o\00v\00e\00s\00")
 (data (i32.const 1740) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data (i32.const 1804) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data (i32.const 1872) "\t\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\00\00\00\02\00\00\00\82\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 8 8 funcref)
 (elem $0 (i32.const 1) $start:src/assembly/generatePseudoMoves~anonymous|0 $src/assembly/getPawnMoves/getPawnMoves $src/assembly/getBishopMoves/getBishopMoves $src/assembly/getKnightMoves/getKnightMoves $src/assembly/getRookMoves/getRookMoves $src/assembly/getQueenMoves/getQueenMoves $src/assembly/getKingMoves/getKingMoves@varargs)
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
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 128
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 256
   i32.const 320
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 128
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   local.get $3
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $6
   i32.const 31
   local.get $6
   i32.clz
   i32.sub
   local.set $4
   local.get $6
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $8
  local.get $1
  i32.load offset=8
  local.set $9
  local.get $8
  if
   local.get $8
   local.get $9
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $9
  if
   local.get $9
   local.get $8
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $6
  local.get $5
  local.set $7
  local.get $10
  local.get $6
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $6
   local.get $9
   local.set $7
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
   local.get $9
   i32.eqz
   if
    local.get $0
    local.set $6
    local.get $4
    local.set $7
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $0
    local.set $7
    local.get $4
    local.set $11
    local.get $6
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $6
    local.set $10
    local.get $7
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
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
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $4
   local.get $4
   i32.load
   local.set $5
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.sub
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $6
   i32.const 1
   drop
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 400
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   local.set $1
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 400
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
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   local.get $7
   local.tee $3
   i32.const 1073741820
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_u
   select
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $8
   local.get $3
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $10
  local.get $8
  local.set $3
  local.get $9
  local.set $6
  local.get $10
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $8
  local.set $10
  local.get $9
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $10
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $8
  local.set $12
  local.get $0
  local.set $3
  local.get $8
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $10
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $10
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 400
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 400
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
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
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
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
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 128
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-loop|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 64
   i32.const 400
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 400
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 400
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 400
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 64
   i32.const 128
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  memory.fill
  local.get $3
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   memory.copy
  end
  local.get $3
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $start:src/assembly/generatePseudoMoves~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 32
  call $~lib/rt/__newArray
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 256
   i32.const 528
   i32.const 166
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/array/Array<u16>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $3
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $1
  local.get $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 640
    i32.const 592
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $1
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $6
   local.get $3
   if
    local.get $4
    i32.const 1
    i32.shl
    local.tee $7
    i32.const 1073741820
    local.tee $8
    local.get $7
    local.get $8
    i32.lt_u
    select
    local.tee $8
    local.get $6
    local.tee $7
    local.get $8
    local.get $7
    i32.gt_u
    select
    local.set $6
   end
   local.get $5
   local.get $6
   call $~lib/rt/itcms/__renew
   local.set $8
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $8
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $8
    i32.store offset=4
    local.get $0
    local.get $8
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<u16>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<u16>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
  i32.const 0
  drop
 )
 (func $~lib/array/Array<u16>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 256
    i32.const 592
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 1
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<u16>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<u16>#__uset
 )
 (func $~lib/array/Array<u16>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 256
   i32.const 592
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
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $start:src/assembly/generatePseudoMoves
  (local $0 i32)
  (local $1 i32)
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 208
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 352
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
 )
 (func $start:src/assembly/index
  call $start:src/assembly/generatePseudoMoves
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 256
   i32.const 528
   i32.const 177
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
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
   i32.const 7
   i32.and
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
   i32.const 7
   i32.and
   i32.shr_u
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingHitMoves/getKingHitMoves
 )
 (func $~lib/typedarray/Uint8Array#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   loop $while-continue|0
    local.get $6
    local.get $7
    i32.lt_s
    local.set $9
    local.get $9
    if
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $4
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $6
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $while-continue|0
    end
   end
   i32.const -1
  end
 )
 (func $~lib/array/Array<u16>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 1
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  local.get $1
  i32.store16
  local.get $0
  local.get $3
  call $~lib/array/Array<u16>#set:length_
  local.get $3
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $1
   local.get $1
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 1760
    i32.const 128
    i32.const 337
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   local.get $1
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 1824
   i32.const 128
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
   local.get $1
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  (local $0 i32)
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    local.set $0
    local.get $0
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
   i32.const 0
   i32.ne
   local.set $0
   local.get $0
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 256
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 640
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1456
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 64
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1760
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1824
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $src/assembly/generatePseudoMoves/moveGenerators
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Uint8Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/array/Array<u16>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<u16>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<u16>#__visit
 )
 (func $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/function/Function<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__visit
 )
 (func $~lib/function/Function<%28u8%2C~lib/typedarray/Uint8Array%2Cu8?%29=>~lib/array/Array<u16>>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28u8%2C~lib/typedarray/Uint8Array%2Cu8?%29=>~lib/array/Array<u16>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28u8%2C~lib/typedarray/Uint8Array%2Cu8?%29=>~lib/array/Array<u16>>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28u8%2C~lib/typedarray/Uint8Array%2Cu8?%29=>~lib/array/Array<u16>>
    block $~lib/function/Function<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>
     block $~lib/array/Array<i32>
      block $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>
       block $~lib/array/Array<u16>
        block $~lib/typedarray/Uint8Array
         block $~lib/arraybuffer/ArrayBufferView
          block $~lib/string/String
           block $~lib/arraybuffer/ArrayBuffer
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/typedarray/Uint8Array $~lib/array/Array<u16> $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>> $~lib/array/Array<i32> $~lib/function/Function<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>> $~lib/function/Function<%28u8%2C~lib/typedarray/Uint8Array%2Cu8?%29=>~lib/array/Array<u16>> $invalid
           end
           return
          end
          return
         end
         local.get $0
         local.get $1
         call $~lib/arraybuffer/ArrayBufferView~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/typedarray/Uint8Array~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<u16>~visit
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<i32>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/function/Function<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28u8%2C~lib/typedarray/Uint8Array%2Cu8?%29=>~lib/array/Array<u16>>~visit
   return
  end
  unreachable
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  call $start:src/assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 18352
   i32.const 18400
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
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
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1392
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1424
  call $~lib/rt/__newArray
  local.tee $3
  i32.store offset=4
  local.get $0
  i32.const 6
  local.get $0
  i32.const 64
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.xor
  i32.const 3
  i32.const 7
  i32.and
  i32.shl
  i32.add
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  local.set $1
  i32.const 0
  local.set $4
  loop $for-loop|2
   local.get $4
   i32.const 255
   i32.and
   i32.const 64
   i32.lt_u
   local.set $8
   local.get $8
   if
    block $for-continue|2
     local.get $0
     local.get $4
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 0
     i32.eq
     if (result i32)
      i32.const 1
     else
      local.get $0
      local.get $4
      i32.const 255
      i32.and
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $0
      i32.const 64
      call $~lib/typedarray/Uint8Array#__get
      i32.ne
     end
     if
      br $for-continue|2
     end
     global.get $~lib/memory/__stack_pointer
     global.get $src/assembly/generatePseudoMoves/moveGenerators
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     local.get $0
     local.get $4
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 7
     i32.and
     call $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__get
     local.tee $7
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $4
     local.get $0
     local.get $0
     i32.const 64
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     global.set $~argumentsLength
     local.get $7
     i32.load
     call_indirect $0 (type $i32_i32_i32_=>_i32)
     local.tee $6
     i32.store offset=16
     local.get $6
     call $~lib/array/Array<u16>#get:length
     i32.eqz
     if
      br $for-continue|2
     end
     local.get $4
     i32.const 255
     i32.and
     i32.const 10
     i32.const 15
     i32.and
     i32.shl
     local.set $10
     i32.const 0
     local.set $9
     local.get $6
     call $~lib/array/Array<u16>#get:length
     local.set $11
     loop $for-loop|3
      local.get $9
      local.get $11
      i32.lt_s
      local.set $12
      local.get $12
      if
       block $for-continue|3
        local.get $0
        local.get $6
        local.get $9
        call $~lib/array/Array<u16>#__get
        i32.const 63
        i32.and
        call $~lib/typedarray/Uint8Array#__get
        i32.const 0
        i32.gt_u
        if
         local.get $6
         local.get $9
         call $~lib/array/Array<u16>#__get
         local.get $1
         i32.eq
         if
          i32.const 0
          local.set $13
          global.get $~lib/memory/__stack_pointer
          i32.const 20
          i32.add
          global.set $~lib/memory/__stack_pointer
          local.get $13
          return
         end
         local.get $3
         local.get $3
         call $~lib/array/Array<u16>#get:length
         local.get $10
         local.get $6
         local.get $9
         call $~lib/array/Array<u16>#__get
         i32.add
         call $~lib/array/Array<u16>#__set
         br $for-continue|3
        end
        local.get $2
        local.get $2
        call $~lib/array/Array<u16>#get:length
        local.get $10
        local.get $6
        local.get $9
        call $~lib/array/Array<u16>#__get
        i32.add
        call $~lib/array/Array<u16>#__set
       end
       local.get $9
       i32.const 1
       i32.add
       local.set $9
       br $for-loop|3
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|2
   end
  end
  local.get $3
  call $~lib/array/Array<u16>#get:length
  i32.const 0
  i32.eq
  if
   local.get $2
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $3
  local.get $2
  call $~lib/array/Array<u16>#concat
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
 )
 (func $src/assembly/perft/perft (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  call $src/assembly/generateLegalMoves/generateLegalMoves
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $0
   i32.extend8_s
   i32.const 1
   i32.eq
   if
    local.get $2
    call $~lib/array/Array<u16>#get:length
    local.set $7
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $7
    return
   end
   i32.const 0
   local.set $3
   i32.const 0
   local.set $4
   local.get $2
   call $~lib/array/Array<u16>#get:length
   local.set $5
   loop $for-loop|0
    local.get $4
    local.get $5
    i32.lt_s
    local.set $6
    local.get $6
    if
     local.get $3
     local.get $0
     i32.const 1
     i32.sub
     local.get $2
     local.get $4
     call $~lib/array/Array<u16>#__get
     local.get $1
     call $src/assembly/getMovedBoard/getMovedBoard
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store offset=4
     local.get $7
     call $src/assembly/perft/perft
     i32.add
     local.set $3
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $for-loop|0
    end
   end
   local.get $3
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 1616
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/builtins/abort
  i32.const 0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $5
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $6
  local.get $5
  i32.store offset=4
  local.get $6
  local.get $4
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $6
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/assembly/getPawnMoves/getPawnMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 496
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  local.get $5
  i32.const 7
  i32.lt_s
  local.set $6
  local.get $5
  i32.const 0
  i32.gt_s
  local.set $7
  local.get $2
  i32.const 255
  i32.and
  if
   local.get $0
   i32.const 8
   i32.sub
   i32.extend8_s
   local.set $8
   local.get $1
   local.get $8
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if
    local.get $3
    i32.extend8_s
    i32.const 1
    i32.eq
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     i32.const 13
     i32.const 6
     i32.const 15
     i32.and
     i32.shl
     i32.add
     call $~lib/array/Array<u16>#__set
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     i32.const 12
     i32.const 6
     i32.const 15
     i32.and
     i32.shl
     i32.add
     call $~lib/array/Array<u16>#__set
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     i32.const 11
     i32.const 6
     i32.const 15
     i32.and
     i32.shl
     i32.add
     call $~lib/array/Array<u16>#__set
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     i32.const 10
     i32.const 6
     i32.const 15
     i32.and
     i32.shl
     i32.add
     call $~lib/array/Array<u16>#__set
    else
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     call $~lib/array/Array<u16>#__set
    end
    local.get $3
    i32.extend8_s
    i32.const 6
    i32.eq
    if
     local.get $0
     i32.const 16
     i32.sub
     i32.extend8_s
     local.set $9
     local.get $1
     local.get $9
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 0
     i32.eq
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      call $~lib/array/Array<u16>#__set
     end
    end
   end
   local.get $6
   if
    local.get $0
    i32.const 7
    i32.sub
    i32.extend8_s
    local.set $9
    local.get $1
    local.get $9
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if
     local.get $3
     i32.extend8_s
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $9
      i32.const 65535
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      call $~lib/array/Array<u16>#__set
     end
    else
     local.get $1
     local.get $9
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     i32.const 0
     i32.eq
     if
      local.get $3
      i32.extend8_s
      i32.const 1
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 13
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 12
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 11
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 10
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
      else
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       call $~lib/array/Array<u16>#__set
      end
     end
    end
   end
   local.get $7
   if
    local.get $0
    i32.const 9
    i32.sub
    i32.extend8_s
    local.set $9
    local.get $1
    local.get $9
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if
     local.get $3
     i32.extend8_s
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $9
      i32.const 65535
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      call $~lib/array/Array<u16>#__set
     end
    else
     local.get $1
     local.get $9
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     i32.const 0
     i32.eq
     if
      local.get $3
      i32.extend8_s
      i32.const 1
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 13
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 12
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 11
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.const 10
       i32.const 6
       i32.const 15
       i32.and
       i32.shl
       i32.add
       call $~lib/array/Array<u16>#__set
      else
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       call $~lib/array/Array<u16>#__set
      end
     end
    end
   end
   local.get $4
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $0
  i32.const 8
  i32.add
  i32.extend8_s
  local.set $8
  local.get $1
  local.get $8
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint8Array#__get
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.extend8_s
   i32.const 6
   i32.eq
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $8
    i32.const 5
    i32.const 6
    i32.const 15
    i32.and
    i32.shl
    i32.add
    call $~lib/array/Array<u16>#__set
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $8
    i32.const 4
    i32.const 6
    i32.const 15
    i32.and
    i32.shl
    i32.add
    call $~lib/array/Array<u16>#__set
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $8
    i32.const 3
    i32.const 6
    i32.const 15
    i32.and
    i32.shl
    i32.add
    call $~lib/array/Array<u16>#__set
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $8
    i32.const 2
    i32.const 6
    i32.const 15
    i32.and
    i32.shl
    i32.add
    call $~lib/array/Array<u16>#__set
   else
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $8
    call $~lib/array/Array<u16>#__set
   end
   local.get $3
   i32.extend8_s
   i32.const 1
   i32.eq
   if
    local.get $0
    i32.const 16
    i32.add
    i32.extend8_s
    local.set $9
    local.get $1
    local.get $9
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $9
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $6
  if
   local.get $0
   i32.const 9
   i32.add
   i32.extend8_s
   local.set $9
   local.get $1
   local.get $9
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if
    local.get $3
    i32.extend8_s
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $9
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $9
     call $~lib/array/Array<u16>#__set
    end
   else
    local.get $1
    local.get $9
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $3
     i32.extend8_s
     i32.const 6
     i32.eq
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 5
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 4
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 3
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 2
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
     else
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      call $~lib/array/Array<u16>#__set
     end
    end
   end
  end
  local.get $7
  if
   local.get $0
   i32.const 7
   i32.add
   i32.extend8_s
   local.set $9
   local.get $1
   local.get $9
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if
    local.get $3
    i32.extend8_s
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $9
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $9
     call $~lib/array/Array<u16>#__set
    end
   else
    local.get $1
    local.get $9
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $3
     i32.extend8_s
     i32.const 6
     i32.eq
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 5
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 4
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 3
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      i32.const 2
      i32.const 6
      i32.const 15
      i32.and
      i32.shl
      i32.add
      call $~lib/array/Array<u16>#__set
     else
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $9
      call $~lib/array/Array<u16>#__set
     end
    end
   end
  end
  local.get $4
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $src/assembly/getBishopMoves/getBishopMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 720
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  i32.const 7
  local.get $3
  i32.extend8_s
  i32.sub
  local.set $6
  i32.const 7
  local.get $5
  i32.sub
  local.set $7
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $9
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $9
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $9
  local.get $0
  i32.const 9
  i32.sub
  local.set $10
  block $for-break0
   loop $for-loop|0
    local.get $10
    f64.convert_i32_s
    local.get $9
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|0
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|0
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $10
     i32.const 9
     i32.sub
     local.set $10
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $12
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $12
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $12
  local.get $0
  i32.const 7
  i32.sub
  local.set $10
  block $for-break1
   loop $for-loop|1
    local.get $10
    f64.convert_i32_s
    local.get $12
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|1
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|1
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $10
     i32.const 7
     i32.sub
     local.set $10
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $13
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $13
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $13
  local.get $0
  i32.const 7
  i32.add
  local.set $10
  block $for-break2
   loop $for-loop|2
    local.get $10
    f64.convert_i32_s
    local.get $13
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|2
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|2
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $10
     i32.const 7
     i32.add
     local.set $10
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $14
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $14
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $14
  local.get $0
  i32.const 9
  i32.add
  local.set $10
  block $for-break3
   loop $for-loop|3
    local.get $10
    f64.convert_i32_s
    local.get $14
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|3
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|3
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $10
     i32.const 9
     i32.add
     local.set $10
     br $for-loop|3
    end
   end
  end
  local.get $4
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 784
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  local.get $5
  i32.const 1
  i32.gt_s
  local.set $6
  local.get $6
  if (result i32)
   local.get $6
  else
   local.get $5
   i32.const 0
   i32.gt_s
  end
  local.set $7
  local.get $5
  i32.const 6
  i32.lt_s
  local.set $8
  local.get $8
  if (result i32)
   local.get $8
  else
   local.get $5
   i32.const 7
   i32.lt_s
  end
  local.set $9
  local.get $3
  i32.extend8_s
  i32.const 1
  i32.gt_s
  local.set $10
  local.get $10
  if (result i32)
   local.get $10
  else
   local.get $3
   i32.extend8_s
   i32.const 0
   i32.gt_s
  end
  local.set $11
  local.get $3
  i32.extend8_s
  i32.const 6
  i32.lt_s
  local.set $12
  local.get $12
  if (result i32)
   local.get $12
  else
   local.get $3
   i32.extend8_s
   i32.const 7
   i32.lt_s
  end
  local.set $13
  local.get $10
  if
   local.get $7
   if
    local.get $0
    i32.const 17
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 15
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $12
  if
   local.get $7
   if
    local.get $0
    i32.const 15
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 17
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $6
  if
   local.get $11
   if
    local.get $0
    i32.const 10
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $13
   if
    local.get $0
    i32.const 6
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $8
  if
   local.get $11
   if
    local.get $0
    i32.const 6
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $13
   if
    local.get $0
    i32.const 10
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $4
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
 )
 (func $src/assembly/getRookMoves/getRookMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 848
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  i32.const 7
  local.get $3
  i32.sub
  local.set $6
  i32.const 7
  local.get $5
  i32.sub
  local.set $7
  local.get $0
  local.get $3
  i32.const 8
  i32.mul
  i32.sub
  local.set $8
  local.get $0
  i32.const 8
  i32.sub
  local.set $9
  block $for-break0
   loop $for-loop|0
    local.get $9
    i32.extend8_s
    local.get $8
    i32.extend8_s
    i32.ge_s
    local.set $10
    local.get $10
    if
     block $for-continue|0
      local.get $1
      local.get $9
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|0
      end
      local.get $1
      local.get $9
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $9
     i32.const 8
     i32.sub
     local.set $9
     br $for-loop|0
    end
   end
  end
  local.get $0
  local.get $7
  i32.add
  local.set $9
  local.get $0
  i32.const 1
  i32.add
  local.set $10
  block $for-break1
   loop $for-loop|1
    local.get $10
    i32.extend8_s
    local.get $9
    i32.extend8_s
    i32.le_s
    local.set $11
    local.get $11
    if
     block $for-continue|1
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|1
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     br $for-loop|1
    end
   end
  end
  local.get $0
  local.get $6
  i32.const 8
  i32.mul
  i32.add
  local.set $10
  local.get $0
  i32.const 8
  i32.add
  local.set $11
  block $for-break2
   loop $for-loop|2
    local.get $11
    i32.extend8_s
    local.get $10
    i32.extend8_s
    i32.le_s
    local.set $12
    local.get $12
    if
     block $for-continue|2
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $11
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|2
      end
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $11
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $11
     i32.const 8
     i32.add
     local.set $11
     br $for-loop|2
    end
   end
  end
  local.get $0
  local.get $5
  i32.sub
  local.set $11
  local.get $0
  i32.const 1
  i32.sub
  local.set $12
  block $for-break3
   loop $for-loop|3
    local.get $12
    i32.extend8_s
    local.get $11
    i32.extend8_s
    i32.ge_s
    local.set $13
    local.get $13
    if
     block $for-continue|3
      local.get $1
      local.get $12
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $12
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|3
      end
      local.get $1
      local.get $12
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $12
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $12
     i32.const 1
     i32.sub
     local.set $12
     br $for-loop|3
    end
   end
  end
  local.get $4
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $src/assembly/getQueenMoves/getQueenMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 912
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  i32.const 7
  local.get $3
  i32.sub
  local.set $6
  i32.const 7
  local.get $5
  i32.sub
  local.set $7
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $9
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $9
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $9
  local.get $0
  i32.const 9
  i32.sub
  local.set $10
  block $for-break0
   loop $for-loop|0
    local.get $10
    f64.convert_i32_s
    local.get $9
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|0
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|0
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $10
     i32.const 9
     i32.sub
     local.set $10
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $12
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $12
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $12
  local.get $0
  i32.const 7
  i32.sub
  local.set $10
  block $for-break1
   loop $for-loop|1
    local.get $10
    f64.convert_i32_s
    local.get $12
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|1
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|1
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $10
     i32.const 7
     i32.sub
     local.set $10
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $13
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $13
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $13
  local.get $0
  i32.const 7
  i32.add
  local.set $10
  block $for-break2
   loop $for-loop|2
    local.get $10
    f64.convert_i32_s
    local.get $13
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|2
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|2
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $10
     i32.const 7
     i32.add
     local.set $10
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $14
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $14
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $14
  local.get $0
  i32.const 9
  i32.add
  local.set $10
  block $for-break3
   loop $for-loop|3
    local.get $10
    f64.convert_i32_s
    local.get $14
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|3
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|3
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $10
     i32.const 9
     i32.add
     local.set $10
     br $for-loop|3
    end
   end
  end
  local.get $0
  local.get $3
  i32.const 8
  i32.mul
  i32.sub
  local.set $10
  local.get $0
  i32.const 8
  i32.sub
  local.set $11
  block $for-break4
   loop $for-loop|4
    local.get $11
    i32.extend8_s
    local.get $10
    i32.extend8_s
    i32.ge_s
    local.set $15
    local.get $15
    if
     block $for-continue|4
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $11
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|4
      end
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $11
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break4
     end
     local.get $11
     i32.const 8
     i32.sub
     local.set $11
     br $for-loop|4
    end
   end
  end
  local.get $0
  local.get $7
  i32.add
  local.set $11
  local.get $0
  i32.const 1
  i32.add
  local.set $15
  block $for-break5
   loop $for-loop|5
    local.get $15
    i32.extend8_s
    local.get $11
    i32.extend8_s
    i32.le_s
    local.set $16
    local.get $16
    if
     block $for-continue|5
      local.get $1
      local.get $15
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $15
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|5
      end
      local.get $1
      local.get $15
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $15
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break5
     end
     local.get $15
     i32.const 1
     i32.add
     local.set $15
     br $for-loop|5
    end
   end
  end
  local.get $0
  local.get $6
  i32.const 8
  i32.mul
  i32.add
  local.set $15
  local.get $0
  i32.const 8
  i32.add
  local.set $16
  block $for-break6
   loop $for-loop|6
    local.get $16
    i32.extend8_s
    local.get $15
    i32.extend8_s
    i32.le_s
    local.set $17
    local.get $17
    if
     block $for-continue|6
      local.get $1
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $16
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|6
      end
      local.get $1
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $16
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break6
     end
     local.get $16
     i32.const 8
     i32.add
     local.set $16
     br $for-loop|6
    end
   end
  end
  local.get $0
  local.get $5
  i32.sub
  local.set $16
  local.get $0
  i32.const 1
  i32.sub
  local.set $17
  block $for-break7
   loop $for-loop|7
    local.get $17
    i32.extend8_s
    local.get $16
    i32.extend8_s
    i32.ge_s
    local.set $18
    local.get $18
    if
     block $for-continue|7
      local.get $1
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $17
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
       br $for-continue|7
      end
      local.get $1
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $17
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break7
     end
     local.get $17
     i32.const 1
     i32.sub
     local.set $17
     br $for-loop|7
    end
   end
  end
  local.get $4
  local.set $19
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $19
 )
 (func $src/assembly/isCaptured/isCaptured (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 f64)
  (local $15 f64)
  (local $16 i32)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 7
  i32.and
  local.set $4
  local.get $2
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.extend8_s
   i32.const 6
   i32.lt_s
   if
    local.get $4
    i32.const 0
    i32.gt_s
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
    if
     i32.const 1
     local.set $25
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $25
     return
    end
    local.get $4
    i32.const 7
    i32.lt_s
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
    if
     i32.const 1
     local.set $25
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $25
     return
    end
   end
  else
   local.get $3
   i32.extend8_s
   i32.const 1
   i32.gt_s
   if
    local.get $4
    i32.const 7
    i32.lt_s
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
    if
     i32.const 1
     local.set $25
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $25
     return
    end
    local.get $4
    i32.const 0
    i32.gt_s
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
    if
     i32.const 1
     local.set $25
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $25
     return
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $0
  local.get $2
  call $src/assembly/getKnightMoves/getKnightMoves
  local.tee $5
  i32.store
  i32.const 0
  local.set $6
  local.get $5
  call $~lib/array/Array<u16>#get:length
  local.set $7
  loop $for-loop|0
   local.get $6
   local.get $7
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $0
    local.get $5
    local.get $6
    call $~lib/array/Array<u16>#__get
    call $~lib/typedarray/Uint8Array#__get
    i32.const 7
    i32.and
    i32.const 3
    i32.eq
    if
     i32.const 1
     local.set $25
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $25
     return
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $for-loop|0
   end
  end
  local.get $1
  i32.const 7
  i32.and
  local.set $7
  i32.const 7
  local.get $3
  i32.extend8_s
  i32.sub
  local.set $6
  i32.const 7
  local.get $7
  i32.sub
  local.set $8
  local.get $2
  i32.const 1
  i32.xor
  i32.const 3
  i32.const 7
  i32.and
  i32.shl
  local.set $9
  local.get $9
  i32.const 2
  i32.add
  local.set $10
  local.get $9
  i32.const 4
  i32.add
  local.set $11
  local.get $9
  i32.const 5
  i32.add
  local.set $12
  local.get $9
  i32.const 6
  i32.add
  local.set $13
  local.get $1
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $15
  local.get $7
  f64.convert_i32_s
  local.set $14
  local.get $15
  local.get $14
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $15
  local.get $1
  i32.const 9
  i32.sub
  local.set $16
  block $for-break1
   loop $for-loop|1
    local.get $16
    f64.convert_i32_s
    local.get $15
    f64.ge
    local.set $17
    local.get $17
    if
     block $for-continue|1
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|1
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $10
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $16
       i32.extend8_s
       local.get $1
       i32.const 9
       i32.sub
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break1
     end
     local.get $16
     i32.const 9
     i32.sub
     local.set $16
     br $for-loop|1
    end
   end
  end
  local.get $1
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $18
  local.get $8
  f64.convert_i32_s
  local.set $14
  local.get $18
  local.get $14
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $18
  local.get $1
  i32.const 7
  i32.sub
  local.set $16
  block $for-break2
   loop $for-loop|2
    local.get $16
    f64.convert_i32_s
    local.get $18
    f64.ge
    local.set $17
    local.get $17
    if
     block $for-continue|2
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|2
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $10
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $16
       i32.extend8_s
       local.get $1
       i32.const 7
       i32.sub
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break2
     end
     local.get $16
     i32.const 7
     i32.sub
     local.set $16
     br $for-loop|2
    end
   end
  end
  local.get $1
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $19
  local.get $7
  f64.convert_i32_s
  local.set $14
  local.get $19
  local.get $14
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $19
  local.get $1
  i32.const 7
  i32.add
  local.set $16
  block $for-break3
   loop $for-loop|3
    local.get $16
    f64.convert_i32_s
    local.get $19
    f64.le
    local.set $17
    local.get $17
    if
     block $for-continue|3
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|3
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $10
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $16
       i32.extend8_s
       local.get $1
       i32.const 7
       i32.add
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break3
     end
     local.get $16
     i32.const 7
     i32.add
     local.set $16
     br $for-loop|3
    end
   end
  end
  local.get $1
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $20
  local.get $8
  f64.convert_i32_s
  local.set $14
  local.get $20
  local.get $14
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $20
  local.get $1
  i32.const 9
  i32.add
  local.set $16
  block $for-break4
   loop $for-loop|4
    local.get $16
    f64.convert_i32_s
    local.get $20
    f64.le
    local.set $17
    local.get $17
    if
     block $for-continue|4
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|4
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $10
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $16
       i32.extend8_s
       local.get $1
       i32.const 9
       i32.add
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break4
     end
     local.get $16
     i32.const 9
     i32.add
     local.set $16
     br $for-loop|4
    end
   end
  end
  local.get $1
  local.get $3
  i32.const 8
  i32.mul
  i32.sub
  local.set $16
  local.get $1
  i32.const 8
  i32.sub
  local.set $17
  block $for-break5
   loop $for-loop|5
    local.get $17
    i32.extend8_s
    local.get $16
    i32.extend8_s
    i32.ge_s
    local.set $21
    local.get $21
    if
     block $for-continue|5
      local.get $0
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|5
      end
      local.get $0
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $17
       i32.extend8_s
       local.get $1
       i32.const 8
       i32.sub
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break5
     end
     local.get $17
     i32.const 8
     i32.sub
     local.set $17
     br $for-loop|5
    end
   end
  end
  local.get $1
  i32.extend8_s
  local.get $8
  i32.add
  local.set $17
  local.get $1
  i32.const 1
  i32.add
  local.set $21
  block $for-break6
   loop $for-loop|6
    local.get $21
    i32.extend8_s
    local.get $17
    i32.le_s
    local.set $22
    local.get $22
    if
     block $for-continue|6
      local.get $0
      local.get $21
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|6
      end
      local.get $0
      local.get $21
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $21
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $21
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $21
       i32.extend8_s
       local.get $1
       i32.const 1
       i32.add
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break6
     end
     local.get $21
     i32.const 1
     i32.add
     local.set $21
     br $for-loop|6
    end
   end
  end
  local.get $1
  i32.extend8_s
  local.get $6
  i32.const 8
  i32.mul
  i32.add
  local.set $21
  local.get $1
  i32.const 8
  i32.add
  local.set $22
  block $for-break7
   loop $for-loop|7
    local.get $22
    i32.extend8_s
    local.get $21
    i32.le_s
    local.set $23
    local.get $23
    if
     block $for-continue|7
      local.get $0
      local.get $22
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|7
      end
      local.get $0
      local.get $22
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $22
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $22
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $22
       i32.extend8_s
       local.get $1
       i32.const 8
       i32.add
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break7
     end
     local.get $22
     i32.const 8
     i32.add
     local.set $22
     br $for-loop|7
    end
   end
  end
  local.get $1
  local.get $7
  i32.sub
  local.set $22
  local.get $1
  i32.const 1
  i32.sub
  local.set $23
  block $for-break8
   loop $for-loop|8
    local.get $23
    i32.extend8_s
    local.get $22
    i32.extend8_s
    i32.ge_s
    local.set $24
    local.get $24
    if
     block $for-continue|8
      local.get $0
      local.get $23
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|8
      end
      local.get $0
      local.get $23
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $11
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $23
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $12
      i32.const 255
      i32.and
      i32.eq
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      local.get $0
      local.get $23
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      local.get $13
      i32.const 255
      i32.and
      i32.eq
      if (result i32)
       local.get $23
       i32.extend8_s
       local.get $1
       i32.const 1
       i32.sub
       i32.extend8_s
       i32.eq
      else
       i32.const 0
      end
      if
       i32.const 1
       local.set $25
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $25
       return
      end
      br $for-break8
     end
     local.get $23
     i32.const 1
     i32.sub
     local.set $23
     br $for-loop|8
    end
   end
  end
  i32.const 0
  local.set $25
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $25
 )
 (func $src/assembly/getKingMoves/getKingMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 976
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.const 255
  i32.and
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  local.get $3
  i32.const 0
  i32.gt_u
  local.set $6
  local.get $3
  i32.const 7
  i32.lt_u
  local.set $7
  local.get $5
  i32.const 0
  i32.gt_u
  local.set $8
  local.get $5
  i32.const 7
  i32.lt_u
  local.set $9
  local.get $6
  if
   local.get $0
   i32.const 8
   i32.sub
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
   local.get $8
   if
    local.get $0
    i32.const 9
    i32.sub
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 7
    i32.sub
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $7
  if
   local.get $0
   i32.const 8
   i32.add
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
   local.get $8
   if
    local.get $0
    i32.const 7
    i32.add
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 9
    i32.add
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $8
  if
   local.get $0
   i32.const 1
   i32.sub
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
  end
  local.get $9
  if
   local.get $0
   i32.const 1
   i32.add
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
  end
  local.get $1
  i32.const 65
  call $~lib/typedarray/Uint8Array#__get
  i32.const 0
  i32.eq
  if
   local.get $4
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $2
  i32.const 255
  i32.and
  if
   local.get $1
   i32.const 60
   i32.const 1
   call $src/assembly/isCaptured/isCaptured
   if
    local.get $4
    local.set $12
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $12
    return
   end
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
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 62
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 61
    i32.const 1
    call $src/assembly/isCaptured/isCaptured
    i32.eqz
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
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
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 58
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 57
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 59
    i32.const 1
    call $src/assembly/isCaptured/isCaptured
    i32.eqz
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    i32.const 58
    call $~lib/array/Array<u16>#__set
   end
  else
   local.get $1
   i32.const 4
   i32.const 0
   call $src/assembly/isCaptured/isCaptured
   if
    local.get $4
    local.set $12
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $12
    return
   end
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
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 6
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 5
    i32.const 0
    call $src/assembly/isCaptured/isCaptured
    i32.eqz
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    i32.const 6
    call $~lib/array/Array<u16>#__set
   end
   local.get $1
   i32.const 65
   call $~lib/typedarray/Uint8Array#__get
   i32.const 1
   i32.and
   i32.const 1
   i32.eq
   if (result i32)
    local.get $1
    i32.const 3
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 1
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 2
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.const 3
    i32.const 0
    call $src/assembly/isCaptured/isCaptured
    i32.eqz
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    i32.const 2
    call $~lib/array/Array<u16>#__set
   end
  end
  local.get $4
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $1
  i32.const 1073741820
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 640
   i32.const 1136
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.store
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint8Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $4
   local.get $6
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else
   local.get $4
   local.tee $8
   local.get $6
   local.tee $7
   local.get $8
   local.get $7
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $6
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else
   local.get $3
   local.tee $8
   local.get $6
   local.tee $7
   local.get $8
   local.get $7
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.get $4
  i32.sub
  local.tee $7
  i32.const 0
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $6
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $7
  i32.store
  local.get $7
  i32.load offset=4
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 0
  i32.shl
  i32.add
  local.get $6
  i32.const 0
  i32.shl
  memory.copy
  local.get $7
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $src/assembly/getMovedBoard/getMovedBoard (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.const 65535
  i32.and
  i32.const 10
  i32.const 15
  i32.and
  i32.shr_u
  local.set $2
  local.get $0
  i32.const 63
  i32.and
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Uint8Array#slice
  local.tee $4
  i32.store
  local.get $4
  local.get $3
  local.get $4
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__get
  call $~lib/typedarray/Uint8Array#__set
  local.get $4
  local.get $2
  i32.const 255
  i32.and
  i32.const 0
  call $~lib/typedarray/Uint8Array#__set
  local.get $4
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
       local.get $2
       i32.const 255
       i32.and
       call $~lib/typedarray/Uint8Array#__get
       i32.const 7
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|0
       local.get $5
       i32.const 4
       i32.eq
       br_if $case1|0
       local.get $5
       i32.const 6
       i32.eq
       br_if $case2|0
       br $case3|0
      end
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $3
      i32.eq
      if
       local.get $4
       local.get $1
       i32.const 64
       call $~lib/typedarray/Uint8Array#__get
       if (result i32)
        local.get $3
        i32.const 8
        i32.add
       else
        local.get $3
        i32.const 8
        i32.sub
       end
       i32.const 255
       i32.and
       i32.const 0
       call $~lib/typedarray/Uint8Array#__set
      end
      local.get $4
      i32.const 66
      i32.const 0
      call $~lib/typedarray/Uint8Array#__set
      local.get $3
      local.get $2
      i32.sub
      i32.const 255
      i32.and
      i32.const 16
      i32.eq
      if
       local.get $4
       i32.const 66
       local.get $3
       i32.const 8
       i32.sub
       i32.const 255
       i32.and
       call $~lib/typedarray/Uint8Array#__set
      end
      local.get $2
      local.get $3
      i32.sub
      i32.const 255
      i32.and
      i32.const 16
      i32.eq
      if
       local.get $4
       i32.const 66
       local.get $3
       i32.const 8
       i32.add
       i32.const 255
       i32.and
       call $~lib/typedarray/Uint8Array#__set
      end
      local.get $3
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      i32.const 0
      i32.eq
      if
       local.get $4
       local.get $3
       local.get $0
       i32.const 65535
       i32.and
       i32.const 6
       i32.const 15
       i32.and
       i32.shr_u
       i32.const 15
       i32.and
       call $~lib/typedarray/Uint8Array#__set
      end
      local.get $3
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      i32.const 7
      i32.eq
      if
       local.get $4
       local.get $3
       local.get $0
       i32.const 65535
       i32.and
       i32.const 6
       i32.const 15
       i32.and
       i32.shr_u
       i32.const 15
       i32.and
       call $~lib/typedarray/Uint8Array#__set
      end
      br $break|0
     end
     local.get $4
     i32.const 66
     i32.const 0
     call $~lib/typedarray/Uint8Array#__set
     local.get $1
     i32.const 65
     call $~lib/typedarray/Uint8Array#__get
     i32.const 0
     i32.eq
     if
      br $break|0
     end
     local.get $2
     i32.const 255
     i32.and
     i32.const 63
     i32.eq
     if
      local.get $4
      i32.const 65
      local.get $1
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 7
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
     local.get $2
     i32.const 255
     i32.and
     i32.const 56
     i32.eq
     if
      local.get $4
      i32.const 65
      local.get $1
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 11
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
     local.get $2
     i32.const 255
     i32.and
     i32.const 7
     i32.eq
     if
      local.get $4
      i32.const 65
      local.get $1
      i32.const 65
      call $~lib/typedarray/Uint8Array#__get
      i32.const 13
      i32.and
      call $~lib/typedarray/Uint8Array#__set
     end
     local.get $2
     i32.const 255
     i32.and
     i32.const 0
     i32.eq
     if
      local.get $4
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
    local.get $4
    i32.const 66
    i32.const 0
    call $~lib/typedarray/Uint8Array#__set
    local.get $1
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if
     br $break|0
    end
    local.get $2
    i32.const 255
    i32.and
    i32.const 4
    i32.eq
    if
     local.get $4
     i32.const 65
     local.get $1
     i32.const 65
     call $~lib/typedarray/Uint8Array#__get
     i32.const 12
     i32.and
     call $~lib/typedarray/Uint8Array#__set
     local.get $3
     i32.const 2
     i32.eq
     if
      local.get $4
      i32.const 3
      i32.const 4
      call $~lib/typedarray/Uint8Array#__set
      local.get $4
      i32.const 0
      i32.const 0
      call $~lib/typedarray/Uint8Array#__set
      br $break|0
     end
     local.get $3
     i32.const 6
     i32.eq
     if
      local.get $4
      i32.const 5
      i32.const 4
      call $~lib/typedarray/Uint8Array#__set
      local.get $4
      i32.const 7
      i32.const 0
      call $~lib/typedarray/Uint8Array#__set
      br $break|0
     end
    end
    local.get $2
    i32.const 255
    i32.and
    i32.const 60
    i32.eq
    if
     local.get $4
     i32.const 65
     local.get $1
     i32.const 65
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.and
     call $~lib/typedarray/Uint8Array#__set
     local.get $3
     i32.const 58
     i32.eq
     if
      local.get $4
      i32.const 59
      i32.const 12
      call $~lib/typedarray/Uint8Array#__set
      local.get $4
      i32.const 56
      i32.const 0
      call $~lib/typedarray/Uint8Array#__set
      br $break|0
     end
     local.get $3
     i32.const 62
     i32.eq
     if
      local.get $4
      i32.const 61
      i32.const 12
      call $~lib/typedarray/Uint8Array#__set
      local.get $4
      i32.const 63
      i32.const 0
      call $~lib/typedarray/Uint8Array#__set
      br $break|0
     end
    end
    br $break|0
   end
   local.get $4
   i32.const 66
   i32.const 0
   call $~lib/typedarray/Uint8Array#__set
  end
  local.get $1
  local.get $3
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.eq
  if
   local.get $4
   i32.const 0
   call $~lib/typedarray/Uint8Array#__get
   i32.const 4
   i32.ne
   if
    local.get $4
    i32.const 65
    local.get $4
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 14
    i32.and
    call $~lib/typedarray/Uint8Array#__set
   end
   local.get $4
   i32.const 7
   call $~lib/typedarray/Uint8Array#__get
   i32.const 4
   i32.ne
   if
    local.get $4
    i32.const 65
    local.get $4
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 13
    i32.and
    call $~lib/typedarray/Uint8Array#__set
   end
  end
  local.get $1
  local.get $3
  call $~lib/typedarray/Uint8Array#__get
  i32.const 12
  i32.eq
  if
   local.get $4
   i32.const 56
   call $~lib/typedarray/Uint8Array#__get
   i32.const 12
   i32.ne
   if
    local.get $4
    i32.const 65
    local.get $4
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 11
    i32.and
    call $~lib/typedarray/Uint8Array#__set
   end
   local.get $4
   i32.const 63
   call $~lib/typedarray/Uint8Array#__get
   i32.const 12
   i32.ne
   if
    local.get $4
    i32.const 65
    local.get $4
    i32.const 65
    call $~lib/typedarray/Uint8Array#__get
    i32.const 7
    i32.and
    call $~lib/typedarray/Uint8Array#__set
   end
  end
  local.get $4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1200
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  local.get $5
  i32.const 7
  i32.lt_s
  local.set $6
  local.get $5
  i32.const 0
  i32.gt_s
  local.set $7
  local.get $2
  i32.const 255
  i32.and
  if
   local.get $6
   if
    local.get $0
    i32.const 7
    i32.sub
    i32.extend8_s
    local.set $8
    local.get $1
    local.get $8
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if
     local.get $3
     i32.extend8_s
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 65535
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $8
      call $~lib/array/Array<u16>#__set
     end
    else
     local.get $1
     local.get $8
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     i32.const 0
     i32.eq
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $8
      call $~lib/array/Array<u16>#__set
     end
    end
   end
   local.get $7
   if
    local.get $0
    i32.const 9
    i32.sub
    i32.extend8_s
    local.set $8
    local.get $1
    local.get $8
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.eq
    if
     local.get $3
     i32.extend8_s
     i32.const 3
     i32.eq
     if (result i32)
      local.get $1
      i32.const 66
      call $~lib/typedarray/Uint8Array#__get
      local.get $8
      i32.const 65535
      i32.and
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $8
      call $~lib/array/Array<u16>#__set
     end
    else
     local.get $1
     local.get $8
     i32.const 65535
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     i32.const 0
     i32.eq
     if
      local.get $4
      local.get $4
      call $~lib/array/Array<u16>#get:length
      local.get $8
      call $~lib/array/Array<u16>#__set
     end
    end
   end
   local.get $4
   local.set $9
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  local.get $6
  if
   local.get $0
   i32.const 9
   i32.add
   i32.extend8_s
   local.set $8
   local.get $1
   local.get $8
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if
    local.get $3
    i32.extend8_s
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $8
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     call $~lib/array/Array<u16>#__set
    end
   else
    local.get $1
    local.get $8
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $7
  if
   local.get $0
   i32.const 7
   i32.add
   i32.extend8_s
   local.set $8
   local.get $1
   local.get $8
   i32.const 65535
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.eq
   if
    local.get $3
    i32.extend8_s
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 66
     call $~lib/typedarray/Uint8Array#__get
     local.get $8
     i32.const 65535
     i32.and
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     call $~lib/array/Array<u16>#__set
    end
   else
    local.get $1
    local.get $8
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    i32.const 1
    i32.eq
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $8
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $4
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1232
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  local.get $5
  i32.const 1
  i32.gt_s
  local.set $6
  local.get $6
  if (result i32)
   local.get $6
  else
   local.get $5
   i32.const 0
   i32.gt_s
  end
  local.set $7
  local.get $5
  i32.const 6
  i32.lt_s
  local.set $8
  local.get $8
  if (result i32)
   local.get $8
  else
   local.get $5
   i32.const 7
   i32.lt_s
  end
  local.set $9
  local.get $3
  i32.extend8_s
  i32.const 1
  i32.gt_s
  local.set $10
  local.get $10
  if (result i32)
   local.get $10
  else
   local.get $3
   i32.extend8_s
   i32.const 0
   i32.gt_s
  end
  local.set $11
  local.get $3
  i32.extend8_s
  i32.const 6
  i32.lt_s
  local.set $12
  local.get $12
  if (result i32)
   local.get $12
  else
   local.get $3
   i32.extend8_s
   i32.const 7
   i32.lt_s
  end
  local.set $13
  local.get $10
  if
   local.get $7
   if
    local.get $0
    i32.const 17
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 15
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $12
  if
   local.get $7
   if
    local.get $0
    i32.const 15
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 17
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $6
  if
   local.get $11
   if
    local.get $0
    i32.const 10
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $13
   if
    local.get $0
    i32.const 6
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $8
  if
   local.get $11
   if
    local.get $0
    i32.const 6
    i32.sub
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $13
   if
    local.get $0
    i32.const 10
    i32.add
    local.set $14
    local.get $1
    local.get $14
    i32.extend8_s
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $14
     i32.extend8_s
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $14
     i32.extend8_s
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $4
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
 )
 (func $src/assembly/getKingHitMoves/getKingHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1264
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.const 255
  i32.and
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  local.get $3
  i32.const 0
  i32.gt_u
  local.set $6
  local.get $3
  i32.const 7
  i32.lt_u
  local.set $7
  local.get $5
  i32.const 0
  i32.gt_u
  local.set $8
  local.get $5
  i32.const 7
  i32.lt_u
  local.set $9
  local.get $6
  if
   local.get $0
   i32.const 8
   i32.sub
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.ne
   if (result i32)
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
   local.get $8
   if
    local.get $0
    i32.const 9
    i32.sub
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 7
    i32.sub
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $7
  if
   local.get $0
   i32.const 8
   i32.add
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.ne
   if (result i32)
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
   local.get $8
   if
    local.get $0
    i32.const 7
    i32.add
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
   local.get $9
   if
    local.get $0
    i32.const 9
    i32.add
    local.set $11
    local.get $1
    local.get $11
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 0
    i32.ne
    if (result i32)
     local.get $1
     local.get $11
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shr_u
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 0
    end
    if
     local.get $4
     local.get $4
     call $~lib/array/Array<u16>#get:length
     local.get $11
     i32.const 255
     i32.and
     call $~lib/array/Array<u16>#__set
    end
   end
  end
  local.get $8
  if
   local.get $0
   i32.const 1
   i32.sub
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.ne
   if (result i32)
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
  end
  local.get $9
  if
   local.get $0
   i32.const 1
   i32.add
   local.set $10
   local.get $1
   local.get $10
   i32.const 255
   i32.and
   call $~lib/typedarray/Uint8Array#__get
   i32.const 0
   i32.ne
   if (result i32)
    local.get $1
    local.get $10
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__get
    i32.const 3
    i32.const 7
    i32.and
    i32.shr_u
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 0
   end
   if
    local.get $4
    local.get $4
    call $~lib/array/Array<u16>#get:length
    local.get $10
    i32.const 255
    i32.and
    call $~lib/array/Array<u16>#__set
   end
  end
  local.get $4
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
 )
 (func $src/assembly/getQueenHitMoves/getQueenHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1296
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  i32.const 7
  local.get $3
  i32.sub
  local.set $6
  i32.const 7
  local.get $5
  i32.sub
  local.set $7
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $9
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $9
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $9
  local.get $0
  i32.const 9
  i32.sub
  local.set $10
  block $for-break0
   loop $for-loop|0
    local.get $10
    f64.convert_i32_s
    local.get $9
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|0
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|0
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $10
     i32.const 9
     i32.sub
     local.set $10
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $12
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $12
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $12
  local.get $0
  i32.const 7
  i32.sub
  local.set $10
  block $for-break1
   loop $for-loop|1
    local.get $10
    f64.convert_i32_s
    local.get $12
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|1
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|1
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $10
     i32.const 7
     i32.sub
     local.set $10
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $13
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $13
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $13
  local.get $0
  i32.const 7
  i32.add
  local.set $10
  block $for-break2
   loop $for-loop|2
    local.get $10
    f64.convert_i32_s
    local.get $13
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|2
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|2
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $10
     i32.const 7
     i32.add
     local.set $10
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $14
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $14
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $14
  local.get $0
  i32.const 9
  i32.add
  local.set $10
  block $for-break3
   loop $for-loop|3
    local.get $10
    f64.convert_i32_s
    local.get $14
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|3
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|3
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $10
     i32.const 9
     i32.add
     local.set $10
     br $for-loop|3
    end
   end
  end
  local.get $0
  local.get $3
  i32.const 8
  i32.mul
  i32.sub
  local.set $10
  local.get $0
  i32.const 8
  i32.sub
  local.set $11
  block $for-break4
   loop $for-loop|4
    local.get $11
    i32.extend8_s
    local.get $10
    i32.extend8_s
    i32.ge_s
    local.set $15
    local.get $15
    if
     block $for-continue|4
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|4
      end
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $11
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break4
     end
     local.get $11
     i32.const 8
     i32.sub
     local.set $11
     br $for-loop|4
    end
   end
  end
  local.get $0
  local.get $7
  i32.add
  local.set $11
  local.get $0
  i32.const 1
  i32.add
  local.set $15
  block $for-break5
   loop $for-loop|5
    local.get $15
    i32.extend8_s
    local.get $11
    i32.extend8_s
    i32.le_s
    local.set $16
    local.get $16
    if
     block $for-continue|5
      local.get $1
      local.get $15
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|5
      end
      local.get $1
      local.get $15
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $15
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break5
     end
     local.get $15
     i32.const 1
     i32.add
     local.set $15
     br $for-loop|5
    end
   end
  end
  local.get $0
  local.get $6
  i32.const 8
  i32.mul
  i32.add
  local.set $15
  local.get $0
  i32.const 8
  i32.add
  local.set $16
  block $for-break6
   loop $for-loop|6
    local.get $16
    i32.extend8_s
    local.get $15
    i32.extend8_s
    i32.le_s
    local.set $17
    local.get $17
    if
     block $for-continue|6
      local.get $1
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|6
      end
      local.get $1
      local.get $16
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $16
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break6
     end
     local.get $16
     i32.const 8
     i32.add
     local.set $16
     br $for-loop|6
    end
   end
  end
  local.get $0
  local.get $5
  i32.sub
  local.set $16
  local.get $0
  i32.const 1
  i32.sub
  local.set $17
  block $for-break7
   loop $for-loop|7
    local.get $17
    i32.extend8_s
    local.get $16
    i32.extend8_s
    i32.ge_s
    local.set $18
    local.get $18
    if
     block $for-continue|7
      local.get $1
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|7
      end
      local.get $1
      local.get $17
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $17
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break7
     end
     local.get $17
     i32.const 1
     i32.sub
     local.set $17
     br $for-loop|7
    end
   end
  end
  local.get $4
  local.set $19
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $19
 )
 (func $src/assembly/getBishopHitMoves/getBishopHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1328
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  i32.const 7
  local.get $3
  i32.extend8_s
  i32.sub
  local.set $6
  i32.const 7
  local.get $5
  i32.sub
  local.set $7
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $9
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $9
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.sub
  local.set $9
  local.get $0
  i32.const 9
  i32.sub
  local.set $10
  block $for-break0
   loop $for-loop|0
    local.get $10
    f64.convert_i32_s
    local.get $9
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|0
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|0
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $10
     i32.const 9
     i32.sub
     local.set $10
     br $for-loop|0
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $3
  f64.convert_i32_s
  local.set $12
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $12
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.sub
  local.set $12
  local.get $0
  i32.const 7
  i32.sub
  local.set $10
  block $for-break1
   loop $for-loop|1
    local.get $10
    f64.convert_i32_s
    local.get $12
    f64.ge
    local.set $11
    local.get $11
    if
     block $for-continue|1
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|1
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $10
     i32.const 7
     i32.sub
     local.set $10
     br $for-loop|1
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $13
  local.get $5
  f64.convert_i32_s
  local.set $8
  local.get $13
  local.get $8
  f64.min
  f64.const 7
  f64.mul
  f64.add
  local.set $13
  local.get $0
  i32.const 7
  i32.add
  local.set $10
  block $for-break2
   loop $for-loop|2
    local.get $10
    f64.convert_i32_s
    local.get $13
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|2
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|2
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $10
     i32.const 7
     i32.add
     local.set $10
     br $for-loop|2
    end
   end
  end
  local.get $0
  f64.convert_i32_s
  local.get $6
  f64.convert_i32_s
  local.set $14
  local.get $7
  f64.convert_i32_s
  local.set $8
  local.get $14
  local.get $8
  f64.min
  f64.const 9
  f64.mul
  f64.add
  local.set $14
  local.get $0
  i32.const 9
  i32.add
  local.set $10
  block $for-break3
   loop $for-loop|3
    local.get $10
    f64.convert_i32_s
    local.get $14
    f64.le
    local.set $11
    local.get $11
    if
     block $for-continue|3
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|3
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $10
     i32.const 9
     i32.add
     local.set $10
     br $for-loop|3
    end
   end
  end
  local.get $4
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
 )
 (func $src/assembly/getRookHitMoves/getRookHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1360
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $3
  local.get $0
  i32.const 7
  i32.and
  local.set $5
  i32.const 7
  local.get $3
  i32.sub
  local.set $6
  i32.const 7
  local.get $5
  i32.sub
  local.set $7
  local.get $0
  local.get $3
  i32.const 8
  i32.mul
  i32.sub
  local.set $8
  local.get $0
  i32.const 8
  i32.sub
  local.set $9
  block $for-break0
   loop $for-loop|0
    local.get $9
    i32.extend8_s
    local.get $8
    i32.extend8_s
    i32.ge_s
    local.set $10
    local.get $10
    if
     block $for-continue|0
      local.get $1
      local.get $9
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|0
      end
      local.get $1
      local.get $9
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $9
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break0
     end
     local.get $9
     i32.const 8
     i32.sub
     local.set $9
     br $for-loop|0
    end
   end
  end
  local.get $0
  local.get $7
  i32.add
  local.set $9
  local.get $0
  i32.const 1
  i32.add
  local.set $10
  block $for-break1
   loop $for-loop|1
    local.get $10
    i32.extend8_s
    local.get $9
    i32.extend8_s
    i32.le_s
    local.set $11
    local.get $11
    if
     block $for-continue|1
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|1
      end
      local.get $1
      local.get $10
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $10
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break1
     end
     local.get $10
     i32.const 1
     i32.add
     local.set $10
     br $for-loop|1
    end
   end
  end
  local.get $0
  local.get $6
  i32.const 8
  i32.mul
  i32.add
  local.set $10
  local.get $0
  i32.const 8
  i32.add
  local.set $11
  block $for-break2
   loop $for-loop|2
    local.get $11
    i32.extend8_s
    local.get $10
    i32.extend8_s
    i32.le_s
    local.set $12
    local.get $12
    if
     block $for-continue|2
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|2
      end
      local.get $1
      local.get $11
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $11
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break2
     end
     local.get $11
     i32.const 8
     i32.add
     local.set $11
     br $for-loop|2
    end
   end
  end
  local.get $0
  local.get $5
  i32.sub
  local.set $11
  local.get $0
  i32.const 1
  i32.sub
  local.set $12
  block $for-break3
   loop $for-loop|3
    local.get $12
    i32.extend8_s
    local.get $11
    i32.extend8_s
    i32.ge_s
    local.set $13
    local.get $13
    if
     block $for-continue|3
      local.get $1
      local.get $12
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 0
      i32.eq
      if
       br $for-continue|3
      end
      local.get $1
      local.get $12
      i32.extend8_s
      call $~lib/typedarray/Uint8Array#__get
      i32.const 3
      i32.const 7
      i32.and
      i32.shr_u
      local.get $2
      i32.const 255
      i32.and
      i32.ne
      if
       local.get $4
       local.get $4
       call $~lib/array/Array<u16>#get:length
       local.get $12
       i32.extend8_s
       call $~lib/array/Array<u16>#__set
      end
      br $for-break3
     end
     local.get $12
     i32.const 1
     i32.sub
     local.set $12
     br $for-loop|3
    end
   end
  end
  local.get $4
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
 )
 (func $~lib/array/Array<%28i8%2C~lib/typedarray/Uint8Array%2Cu8%29=>~lib/array/Array<u16>>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 256
   i32.const 592
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
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1456
   i32.const 592
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<u16>#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $1
  i32.load offset=12
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 1073741820
  i32.const 1
  i32.shr_u
  i32.gt_u
  if
   i32.const 640
   i32.const 592
   i32.const 244
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $5
  i32.store
  local.get $5
  i32.load offset=4
  local.set $6
  local.get $2
  i32.const 1
  i32.shl
  local.set $7
  i32.const 0
  drop
  local.get $6
  local.get $0
  i32.load offset=4
  local.get $7
  memory.copy
  local.get $6
  local.get $7
  i32.add
  local.get $1
  i32.load offset=4
  local.get $3
  i32.const 1
  i32.shl
  memory.copy
  local.get $5
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/assembly/generateLegalMoves/generateLegalMoves (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 4
  i32.const 1584
  call $~lib/rt/__newArray
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/assembly/generatePseudoMoves/generatePseudoMoves
  local.tee $1
  i32.store offset=4
  local.get $1
  if
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/array/Array<u16>#get:length
   local.set $4
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.lt_s
    local.set $5
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $1
     local.get $3
     call $~lib/array/Array<u16>#__get
     local.get $0
     call $src/assembly/getMovedBoard/getMovedBoard
     local.tee $6
     i32.store offset=8
     local.get $6
     local.get $6
     i32.const 6
     local.get $0
     i32.const 64
     call $~lib/typedarray/Uint8Array#__get
     i32.const 3
     i32.const 7
     i32.and
     i32.shl
     i32.add
     i32.const 0
     call $~lib/typedarray/Uint8Array#indexOf
     local.get $0
     i32.const 64
     call $~lib/typedarray/Uint8Array#__get
     call $src/assembly/isCaptured/isCaptured
     i32.eqz
     if
      local.get $2
      local.get $1
      local.get $3
      call $~lib/array/Array<u16>#__get
      call $~lib/array/Array<u16>#push
      drop
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   local.get $2
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/assembly/typeTest/typeTest (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.const 7
  i32.and
  i32.shr_u
  local.set $1
  local.get $0
  i32.const 7
  i32.and
  local.set $2
  i32.const 7
  local.get $1
  i32.sub
  local.set $3
  i32.const 7
  local.get $2
  i32.sub
  local.set $4
  local.get $0
  local.get $1
  i32.const 8
  i32.mul
  i32.sub
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 5
  i32.const 1
  i32.const 4
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $6
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.load offset=4
  local.tee $7
  i32.store offset=4
  local.get $6
  i32.const 0
  local.get $1
  i32.extend8_s
  call $~lib/array/Array<u16>#__uset
  local.get $6
  i32.const 1
  local.get $2
  call $~lib/array/Array<u16>#__uset
  local.get $6
  i32.const 2
  local.get $3
  i32.extend8_s
  call $~lib/array/Array<u16>#__uset
  local.get $6
  i32.const 3
  local.get $4
  i32.extend8_s
  call $~lib/array/Array<u16>#__uset
  local.get $6
  i32.const 4
  local.get $5
  i32.extend8_s
  call $~lib/array/Array<u16>#__uset
  local.get $6
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $export:src/assembly/getMovedBoard/getMovedBoard (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $src/assembly/getMovedBoard/getMovedBoard
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/assembly/getPawnMoves/getPawnMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getPawnMoves/getPawnMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getPawnHitMovesNoPromotion/getPawnHitMovesNoPromotion
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getKnightMoves/getKnightMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKnightMoves/getKnightMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getKnightHitMoves/getKnightHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKnightHitMoves/getKnightHitMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getKingMoves/getKingMoves@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingMoves/getKingMoves@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getKingHitMoves/getKingHitMoves@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getKingHitMoves/getKingHitMoves@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getQueenMoves/getQueenMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getQueenMoves/getQueenMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getQueenHitMoves/getQueenHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getQueenHitMoves/getQueenHitMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getBishopMoves/getBishopMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getBishopMoves/getBishopMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getBishopHitMoves/getBishopHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getBishopHitMoves/getBishopHitMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getRookMoves/getRookMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getRookMoves/getRookMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/getRookHitMoves/getRookHitMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/getRookHitMoves/getRookHitMoves
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/isCaptured/isCaptured (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  call $src/assembly/isCaptured/isCaptured
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/assembly/generatePseudoMoves/generatePseudoMoves (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/assembly/generatePseudoMoves/generatePseudoMoves
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/assembly/perft/perft (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $0
  local.get $1
  call $src/assembly/perft/perft
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/assembly/generateLegalMoves/generateLegalMoves (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/assembly/generateLegalMoves/generateLegalMoves
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
)
