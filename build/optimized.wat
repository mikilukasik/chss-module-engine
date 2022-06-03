(module
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $src/assembly/index/Int8Array_ID i32 (i32.const 3))
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
 (global $~lib/rt/__rtti_base i32 (i32.const 1984))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 18420))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 1084) "<")
 (data (i32.const 1096) "\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 1148) "<")
 (data (i32.const 1160) "\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 1212) "<")
 (data (i32.const 1224) "\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data (i32.const 1340) "<")
 (data (i32.const 1352) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1404) ",")
 (data (i32.const 1416) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1484) "<")
 (data (i32.const 1496) "\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 1548) "<")
 (data (i32.const 1560) "\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1612) "\1c")
 (data (i32.const 1644) ",")
 (data (i32.const 1656) "\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 1692) "\1c")
 (data (i32.const 1724) "\1c")
 (data (i32.const 1756) "\1c")
 (data (i32.const 1788) "\1c")
 (data (i32.const 1820) "\1c")
 (data (i32.const 1852) "<")
 (data (i32.const 1864) "\01\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1916) "<")
 (data (i32.const 1928) "\01\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data (i32.const 1984) "\06\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 2012) "A\08\00\00\02\00\00\00B\00\00\00\00\00\00\00\02\t")
 (export "Int8Array_ID" (global $src/assembly/index/Int8Array_ID))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "getMovedBoard" (func $export:src/assembly/getMovedBoard/getMovedBoard))
 (export "getPawnMoves" (func $export:src/assembly/getPawnMoves/getPawnMoves))
 (export "getKnightMoves" (func $export:src/assembly/getKnightMoves/getKnightMoves))
 (export "getKingMoves" (func $export:src/assembly/getKingMoves/getKingMoves))
 (export "getQueenMoves" (func $export:src/assembly/getQueenMoves/getQueenMoves))
 (export "getBishopMoves" (func $export:src/assembly/getBishopMoves/getBishopMoves))
 (export "getRookMoves" (func $export:src/assembly/getRookMoves/getRookMoves))
 (export "isCaptured" (func $export:src/assembly/isCaptured/isCaptured))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1360
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1168
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1872
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1936
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
     i32.const 1232
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
   i32.const 18420
   i32.lt_u
   local.get $0
   i32.load offset=8
   select
   i32.eqz
   if
    i32.const 0
    i32.const 1232
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
   i32.const 1232
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
    i32.const 1232
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
   i32.const 1984
   i32.load
   local.get $2
   i32.lt_u
   if
    i32.const 1360
    i32.const 1424
    i32.const 22
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 3
   i32.shl
   i32.const 1988
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
   i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
    i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
   i32.const 1504
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
    i32.const 1504
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
    i32.const 1504
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
  i32.const 18432
  i32.const 0
  i32.store
  i32.const 20000
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
    i32.const 18432
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
      i32.const 18432
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
  i32.const 18432
  i32.const 20004
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 18432
  global.set $~lib/rt/tlsf/ROOT
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
      i32.const 18420
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
     i32.const 1232
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 18420
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
     local.tee $0
     i32.const 18420
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1504
       i32.const 559
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
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
   i32.const 1504
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
     i32.const 1504
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
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1168
   i32.const 1232
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
    local.get $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
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
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1168
   i32.const 1504
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 12
  local.get $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $2
  i32.const 12
  i32.le_u
  select
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.const 1
   i32.const 27
   local.get $5
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   local.get $5
   i32.add
   local.get $5
   local.get $5
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
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1504
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $5
  i32.lt_u
  if
   i32.const 0
   i32.const 1504
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $3
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1504
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $6
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   local.get $5
   i32.or
   i32.store
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.add
   local.tee $3
   local.get $6
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
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
 (func $~lib/typedarray/Int8Array#__get (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1360
   i32.const 1568
   i32.const 25
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.load8_s
 )
 (func $~lib/typedarray/Int8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.le_u
  if
   i32.const 1360
   i32.const 1568
   i32.const 36
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
 (func $~lib/array/Array<u8>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.get $1
  i32.le_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 1360
    i32.const 1664
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 1
   i32.add
   local.tee $3
   local.get $0
   i32.load offset=8
   local.tee $4
   i32.gt_u
   if
    local.get $3
    i32.const 1073741820
    i32.gt_u
    if
     i32.const 1056
     i32.const 1664
     i32.const 19
     i32.const 48
     call $~lib/builtins/abort
     unreachable
    end
    block $__inlined_func$~lib/rt/itcms/__renew
     local.get $4
     i32.const 1
     i32.shl
     local.tee $4
     i32.const 1073741820
     local.get $4
     i32.const 1073741820
     i32.lt_u
     select
     local.tee $4
     local.get $3
     i32.const 8
     local.get $3
     i32.const 8
     i32.gt_u
     select
     local.tee $3
     local.get $3
     local.get $4
     i32.lt_u
     select
     local.tee $5
     local.get $0
     i32.load
     local.tee $4
     i32.const 20
     i32.sub
     local.tee $6
     i32.load
     i32.const -4
     i32.and
     i32.const 16
     i32.sub
     i32.le_u
     if
      local.get $6
      local.get $5
      i32.store offset=16
      local.get $4
      local.set $3
      br $__inlined_func$~lib/rt/itcms/__renew
     end
     local.get $5
     local.get $6
     i32.load offset=12
     call $~lib/rt/itcms/__new
     local.tee $3
     local.get $4
     local.get $5
     local.get $6
     i32.load offset=16
     local.tee $6
     local.get $5
     local.get $6
     i32.lt_u
     select
     memory.copy
    end
    local.get $3
    local.get $4
    i32.ne
    if
     local.get $0
     local.get $3
     i32.store
     local.get $0
     local.get $3
     i32.store offset=4
     local.get $3
     if
      local.get $0
      local.get $3
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
    end
    local.get $0
    local.get $5
    i32.store offset=8
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  local.get $2
  i32.store8
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
    i32.const 1872
    i32.const 1232
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
   i32.const 1936
   i32.const 1232
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
 (func $~lib/rt/__visit_members (param $0 i32)
  block $folding-inner1
   block $folding-inner0
    block $invalid
     block $~lib/string/String
      block $~lib/arraybuffer/ArrayBuffer
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $invalid
      end
      return
     end
     return
    end
    unreachable
   end
   local.get $0
   i32.load
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
 (func $~start
  memory.size
  i32.const 16
  i32.shl
  i32.const 18420
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1284
  i32.const 1280
  i32.store
  i32.const 1288
  i32.const 1280
  i32.store
  i32.const 1280
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1316
  i32.const 1312
  i32.store
  i32.const 1320
  i32.const 1312
  i32.store
  i32.const 1312
  global.set $~lib/rt/itcms/toSpace
  i32.const 1460
  i32.const 1456
  i32.store
  i32.const 1464
  i32.const 1456
  i32.store
  i32.const 1456
  global.set $~lib/rt/itcms/fromSpace
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
    i32.const 2036
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
    i32.const 2036
    i32.lt_s
    br_if $folding-inner0
    local.get $0
    i32.const 10
    i32.shr_u
    local.set $4
    local.get $0
    i32.const 63
    i32.and
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.tee $2
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
    local.get $2
    block $__inlined_func$~lib/typedarray/Int8Array#constructor (result i32)
     local.get $2
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     block $folding-inner00
      global.get $~lib/memory/__stack_pointer
      i32.const 2036
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      i32.const 0
      i32.store
      local.get $2
      i32.const 12
      i32.const 3
      call $~lib/rt/itcms/__new
      local.tee $2
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 2036
      i32.lt_s
      br_if $folding-inner00
      global.get $~lib/memory/__stack_pointer
      i64.const 0
      i64.store
      local.get $2
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.const 2
       call $~lib/rt/itcms/__new
       local.tee $2
       i32.store
      end
      local.get $2
      i32.const 0
      i32.store
      local.get $2
      i32.const 0
      i32.store offset=4
      local.get $2
      i32.const 0
      i32.store offset=8
      local.get $9
      i32.const 1073741820
      i32.gt_u
      if
       i32.const 1056
       i32.const 1104
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
      local.get $2
      local.get $8
      i32.store
      local.get $8
      if
       local.get $2
       local.get $8
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      local.get $2
      local.get $8
      i32.store offset=4
      local.get $2
      local.get $9
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $7
      local.get $2
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
      br $__inlined_func$~lib/typedarray/Int8Array#constructor
     end
     br $folding-inner1
    end
    local.tee $2
    i32.store
    local.get $2
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
    local.get $2
    i32.store
    local.get $2
    local.get $3
    local.get $2
    local.get $4
    i32.extend8_s
    local.tee $5
    call $~lib/typedarray/Int8Array#__get
    call $~lib/typedarray/Int8Array#__set
    local.get $2
    local.get $5
    i32.const 0
    call $~lib/typedarray/Int8Array#__set
    local.get $2
    i32.const 64
    local.get $1
    i32.const 64
    call $~lib/typedarray/Int8Array#__get
    i32.const 1
    i32.xor
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__set
    block $break|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.get $5
         call $~lib/typedarray/Int8Array#__get
         i32.const 7
         i32.and
         i32.const 1
         i32.sub
         br_table $case0|0 $case3|0 $case3|0 $case1|0 $case3|0 $case2|0 $case3|0
        end
        local.get $1
        i32.const 66
        call $~lib/typedarray/Int8Array#__get
        local.get $3
        i32.eq
        if
         local.get $2
         local.get $3
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.sub
         local.get $1
         i32.const 64
         call $~lib/typedarray/Int8Array#__get
         select
         i32.extend8_s
         i32.const 0
         call $~lib/typedarray/Int8Array#__set
        end
        local.get $2
        i32.const 66
        i32.const 0
        call $~lib/typedarray/Int8Array#__set
        local.get $3
        local.get $4
        i32.sub
        i32.const 255
        i32.and
        i32.const 16
        i32.eq
        if
         local.get $2
         i32.const 66
         local.get $3
         i32.const 8
         i32.sub
         i32.extend8_s
         call $~lib/typedarray/Int8Array#__set
        end
        local.get $4
        local.get $3
        i32.sub
        i32.const 255
        i32.and
        i32.const 16
        i32.eq
        if
         local.get $2
         i32.const 66
         local.get $3
         i32.const 8
         i32.add
         i32.extend8_s
         call $~lib/typedarray/Int8Array#__set
        end
        local.get $3
        i32.const 3
        i32.shr_u
        i32.eqz
        if
         local.get $2
         local.get $3
         local.get $0
         i32.const 6
         i32.shr_u
         i32.const 15
         i32.and
         call $~lib/typedarray/Int8Array#__set
        end
        local.get $3
        i32.const 3
        i32.shr_u
        i32.const 7
        i32.eq
        if
         local.get $2
         local.get $3
         local.get $0
         i32.const 6
         i32.shr_u
         i32.const 15
         i32.and
         call $~lib/typedarray/Int8Array#__set
        end
        br $break|0
       end
       local.get $2
       i32.const 66
       i32.const 0
       call $~lib/typedarray/Int8Array#__set
       local.get $1
       i32.const 65
       call $~lib/typedarray/Int8Array#__get
       i32.eqz
       br_if $break|0
       local.get $4
       i32.const 255
       i32.and
       i32.const 63
       i32.eq
       if
        local.get $2
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Int8Array#__get
        i32.const 7
        i32.and
        call $~lib/typedarray/Int8Array#__set
       end
       local.get $4
       i32.const 255
       i32.and
       i32.const 56
       i32.eq
       if
        local.get $2
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Int8Array#__get
        i32.const 11
        i32.and
        call $~lib/typedarray/Int8Array#__set
       end
       local.get $4
       i32.const 255
       i32.and
       i32.const 7
       i32.eq
       if
        local.get $2
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Int8Array#__get
        i32.const 13
        i32.and
        call $~lib/typedarray/Int8Array#__set
       end
       local.get $4
       i32.const 255
       i32.and
       i32.eqz
       if
        local.get $2
        i32.const 65
        local.get $1
        i32.const 65
        call $~lib/typedarray/Int8Array#__get
        i32.const 14
        i32.and
        call $~lib/typedarray/Int8Array#__set
       end
       br $break|0
      end
      local.get $2
      i32.const 66
      i32.const 0
      call $~lib/typedarray/Int8Array#__set
      local.get $1
      i32.const 65
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      br_if $break|0
      local.get $4
      i32.const 255
      i32.and
      i32.const 4
      i32.eq
      if
       local.get $2
       i32.const 65
       local.get $1
       i32.const 65
       call $~lib/typedarray/Int8Array#__get
       i32.const 12
       i32.and
       call $~lib/typedarray/Int8Array#__set
       local.get $3
       i32.const 2
       i32.eq
       if
        local.get $2
        i32.const 3
        i32.const 4
        call $~lib/typedarray/Int8Array#__set
        local.get $2
        i32.const 0
        i32.const 0
        call $~lib/typedarray/Int8Array#__set
        br $break|0
       end
       local.get $3
       i32.const 6
       i32.eq
       if
        local.get $2
        i32.const 5
        i32.const 4
        call $~lib/typedarray/Int8Array#__set
        local.get $2
        i32.const 7
        i32.const 0
        call $~lib/typedarray/Int8Array#__set
        br $break|0
       end
      end
      local.get $4
      i32.const 255
      i32.and
      i32.const 60
      i32.eq
      if
       local.get $2
       i32.const 65
       local.get $1
       i32.const 65
       call $~lib/typedarray/Int8Array#__get
       i32.const 3
       i32.and
       call $~lib/typedarray/Int8Array#__set
       local.get $3
       i32.const 58
       i32.eq
       if
        local.get $2
        i32.const 59
        i32.const 12
        call $~lib/typedarray/Int8Array#__set
        local.get $2
        i32.const 56
        i32.const 0
        call $~lib/typedarray/Int8Array#__set
        br $break|0
       end
       local.get $3
       i32.const 62
       i32.eq
       if
        local.get $2
        i32.const 61
        i32.const 12
        call $~lib/typedarray/Int8Array#__set
        local.get $2
        i32.const 63
        i32.const 0
        call $~lib/typedarray/Int8Array#__set
        br $break|0
       end
      end
      br $break|0
     end
     local.get $2
     i32.const 66
     i32.const 0
     call $~lib/typedarray/Int8Array#__set
    end
    local.get $1
    local.get $3
    call $~lib/typedarray/Int8Array#__get
    i32.const 4
    i32.eq
    if
     local.get $2
     i32.const 0
     call $~lib/typedarray/Int8Array#__get
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 65
      local.get $2
      i32.const 65
      call $~lib/typedarray/Int8Array#__get
      i32.const 14
      i32.and
      call $~lib/typedarray/Int8Array#__set
     end
     local.get $2
     i32.const 7
     call $~lib/typedarray/Int8Array#__get
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 65
      local.get $2
      i32.const 65
      call $~lib/typedarray/Int8Array#__get
      i32.const 13
      i32.and
      call $~lib/typedarray/Int8Array#__set
     end
    end
    local.get $1
    local.get $3
    call $~lib/typedarray/Int8Array#__get
    i32.const 12
    i32.eq
    if
     local.get $2
     i32.const 56
     call $~lib/typedarray/Int8Array#__get
     i32.const 12
     i32.ne
     if
      local.get $2
      i32.const 65
      local.get $2
      i32.const 65
      call $~lib/typedarray/Int8Array#__get
      i32.const 11
      i32.and
      call $~lib/typedarray/Int8Array#__set
     end
     local.get $2
     i32.const 63
     call $~lib/typedarray/Int8Array#__get
     i32.const 12
     i32.ne
     if
      local.get $2
      i32.const 65
      local.get $2
      i32.const 65
      call $~lib/typedarray/Int8Array#__get
      i32.const 7
      i32.and
      call $~lib/typedarray/Int8Array#__set
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   end
  end
  i32.const 18448
  i32.const 18496
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__new
  local.set $1
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   memory.copy
  end
  local.get $2
  local.get $1
  i32.store
  i32.const 16
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  local.get $1
  i32.store
  local.get $1
  if
   local.get $0
   local.get $1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  i32.const 1632
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
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.sub
   local.tee $2
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
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
     call $~lib/array/Array<u8>#__set
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 768
     i32.add
     call $~lib/array/Array<u8>#__set
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 704
     i32.add
     call $~lib/array/Array<u8>#__set
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     i32.const 640
     i32.add
     call $~lib/array/Array<u8>#__set
    else
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u8>#__set
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
     local.tee $2
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.eqz
     if
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u8>#__set
     end
    end
   end
   local.get $3
   if
    local.get $1
    local.get $0
    i32.const 7
    i32.sub
    local.tee $2
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    if
     local.get $1
     local.get $2
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
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
       call $~lib/array/Array<u8>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 768
       i32.add
       call $~lib/array/Array<u8>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 704
       i32.add
       call $~lib/array/Array<u8>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       i32.const 640
       i32.add
       call $~lib/array/Array<u8>#__set
      else
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $2
       call $~lib/array/Array<u8>#__set
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
      call $~lib/typedarray/Int8Array#__get
      local.get $2
      i32.extend8_s
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
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    if
     local.get $1
     local.get $0
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
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
       call $~lib/array/Array<u8>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 768
       i32.add
       call $~lib/array/Array<u8>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 704
       i32.add
       call $~lib/array/Array<u8>#__set
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       i32.const 640
       i32.add
       call $~lib/array/Array<u8>#__set
      else
       local.get $5
       local.get $5
       i32.load offset=12
       local.get $0
       call $~lib/array/Array<u8>#__set
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
      call $~lib/typedarray/Int8Array#__get
      local.get $0
      i32.extend8_s
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
  local.get $1
  local.get $0
  i32.const 8
  i32.add
  local.tee $2
  i32.extend8_s
  call $~lib/typedarray/Int8Array#__get
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
    call $~lib/array/Array<u8>#__set
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 256
    i32.add
    call $~lib/array/Array<u8>#__set
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 192
    i32.add
    call $~lib/array/Array<u8>#__set
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    i32.const 128
    i32.add
    call $~lib/array/Array<u8>#__set
   else
    local.get $5
    local.get $5
    i32.load offset=12
    local.get $2
    call $~lib/array/Array<u8>#__set
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
    local.tee $2
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.eqz
    if
     local.get $5
     local.get $5
     i32.load offset=12
     local.get $2
     call $~lib/array/Array<u8>#__set
    end
   end
  end
  local.get $3
  if
   local.get $1
   local.get $0
   i32.const 9
   i32.add
   local.tee $2
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
   if
    local.get $1
    local.get $2
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 255
    i32.and
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
      call $~lib/array/Array<u8>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 256
      i32.add
      call $~lib/array/Array<u8>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 192
      i32.add
      call $~lib/array/Array<u8>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      i32.const 128
      i32.add
      call $~lib/array/Array<u8>#__set
     else
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $2
      call $~lib/array/Array<u8>#__set
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
     call $~lib/typedarray/Int8Array#__get
     local.get $2
     i32.extend8_s
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
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
   if
    local.get $1
    local.get $0
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 255
    i32.and
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
      call $~lib/array/Array<u8>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 256
      i32.add
      call $~lib/array/Array<u8>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 192
      i32.add
      call $~lib/array/Array<u8>#__set
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      i32.const 128
      i32.add
      call $~lib/array/Array<u8>#__set
     else
      local.get $5
      local.get $5
      i32.load offset=12
      local.get $0
      call $~lib/array/Array<u8>#__set
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
     call $~lib/typedarray/Int8Array#__get
     local.get $0
     i32.extend8_s
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  i32.const 1712
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $10
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $10
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $4
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $3
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $0
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  local.set $8
  local.get $1
  i32.const 7
  i32.and
  local.set $5
  block $folding-inner0
   local.get $2
   i32.const 255
   i32.and
   if
    local.get $8
    i32.extend8_s
    i32.const 1
    i32.gt_s
    if
     local.get $5
     i32.const 7
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $1
      i32.const 7
      i32.sub
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
     local.get $5
     if (result i32)
      local.get $0
      local.get $1
      i32.const 9
      i32.sub
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
    end
   else
    local.get $8
    i32.extend8_s
    i32.const 6
    i32.lt_s
    if
     local.get $5
     if (result i32)
      local.get $0
      local.get $1
      i32.const 7
      i32.add
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 9
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner0
     local.get $5
     i32.const 7
     i32.lt_u
     if (result i32)
      local.get $0
      local.get $1
      i32.const 9
      i32.add
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
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
   local.tee $5
   i32.store
   local.get $5
   i32.load offset=12
   local.set $6
   loop $for-loop|0
    local.get $3
    local.get $6
    i32.lt_s
    if
     local.get $5
     i32.load offset=12
     local.get $3
     i32.le_u
     if
      i32.const 1360
      i32.const 1664
      i32.const 114
      i32.const 42
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $3
     local.get $5
     i32.load offset=4
     i32.add
     i32.load8_u
     call $~lib/typedarray/Int8Array#__get
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
   local.get $8
   i32.extend8_s
   i32.sub
   local.set $9
   i32.const 7
   local.get $1
   i32.const 7
   i32.and
   local.tee $10
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
   local.set $5
   local.get $2
   i32.const 4
   i32.add
   local.set $11
   local.get $2
   i32.const 5
   i32.add
   local.set $6
   local.get $2
   i32.const 6
   i32.add
   local.set $7
   local.get $1
   f64.convert_i32_s
   local.get $8
   f64.convert_i32_s
   local.get $10
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $5
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
   local.get $8
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $5
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
   local.get $10
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $5
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $5
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
   local.get $8
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $11
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $11
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
   local.set $2
   local.get $1
   i32.const 8
   i32.add
   local.set $3
   loop $for-loop|7
    local.get $2
    local.get $3
    i32.extend8_s
    i32.ge_s
    if
     block $for-break7
      local.get $0
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $3
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $11
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $3
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $3
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
       i32.eq
       if (result i32)
        local.get $3
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
      local.get $3
      i32.const 8
      i32.add
      local.set $3
      br $for-loop|7
     end
    end
   end
   local.get $1
   local.get $10
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
      call $~lib/typedarray/Int8Array#__get
      if
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $11
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $6
       i32.extend8_s
       i32.eq
       br_if $folding-inner0
       local.get $0
       local.get $2
       i32.extend8_s
       call $~lib/typedarray/Int8Array#__get
       local.get $7
       i32.extend8_s
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
 (func $src/assembly/getKingMoves/getKingMoves (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store
  local.get $2
  i32.const 1744
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  local.get $1
  local.get $0
  i32.extend8_s
  local.tee $3
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.shr_u
  local.set $2
  local.get $3
  i32.const 3
  i32.shr_u
  i32.extend8_s
  local.tee $5
  i32.const 7
  i32.lt_s
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
  i32.const 0
  i32.gt_s
  if
   local.get $1
   local.get $0
   i32.const 8
   i32.sub
   local.tee $5
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
   if (result i32)
    local.get $1
    local.get $5
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 255
    i32.and
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 1
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
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $5
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $5
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
   if (result i32)
    local.get $1
    local.get $5
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 255
    i32.and
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 1
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
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $5
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    if (result i32)
     local.get $1
     local.get $5
     i32.extend8_s
     call $~lib/typedarray/Int8Array#__get
     i32.const 3
     i32.shr_u
     i32.const 255
     i32.and
     local.get $2
     i32.const 255
     i32.and
     i32.ne
    else
     i32.const 1
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
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
   if (result i32)
    local.get $1
    local.get $3
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 255
    i32.and
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 1
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
   i32.extend8_s
   call $~lib/typedarray/Int8Array#__get
   if (result i32)
    local.get $1
    local.get $0
    i32.extend8_s
    call $~lib/typedarray/Int8Array#__get
    i32.const 3
    i32.shr_u
    i32.const 255
    i32.and
    local.get $2
    i32.const 255
    i32.and
    i32.ne
   else
    i32.const 1
   end
   if
    local.get $4
    local.get $4
    i32.load offset=12
    local.get $0
    call $~lib/array/Array<u8>#__set
   end
  end
  block $folding-inner0
   local.get $1
   i32.const 65
   call $~lib/typedarray/Int8Array#__get
   i32.eqz
   br_if $folding-inner0
   local.get $2
   i32.extend8_s
   if
    local.get $1
    i32.const 60
    i32.const 1
    call $src/assembly/isCaptured/isCaptured
    br_if $folding-inner0
    local.get $1
    i32.const 65
    call $~lib/typedarray/Int8Array#__get
    i32.const 8
    i32.and
    i32.const 8
    i32.eq
    if (result i32)
     local.get $1
     i32.const 61
     call $~lib/typedarray/Int8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 62
     call $~lib/typedarray/Int8Array#__get
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
     call $~lib/array/Array<u8>#__set
    end
    local.get $1
    i32.const 65
    call $~lib/typedarray/Int8Array#__get
    i32.const 4
    i32.and
    i32.const 4
    i32.eq
    if (result i32)
     local.get $1
     i32.const 59
     call $~lib/typedarray/Int8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 58
     call $~lib/typedarray/Int8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 57
     call $~lib/typedarray/Int8Array#__get
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
     call $~lib/array/Array<u8>#__set
    end
   else
    local.get $1
    i32.const 4
    i32.const 0
    call $src/assembly/isCaptured/isCaptured
    br_if $folding-inner0
    local.get $1
    i32.const 65
    call $~lib/typedarray/Int8Array#__get
    i32.const 2
    i32.and
    i32.const 2
    i32.eq
    if (result i32)
     local.get $1
     i32.const 5
     call $~lib/typedarray/Int8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 6
     call $~lib/typedarray/Int8Array#__get
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
     call $~lib/array/Array<u8>#__set
    end
    local.get $1
    i32.const 65
    call $~lib/typedarray/Int8Array#__get
    i32.const 1
    i32.and
    if (result i32)
     local.get $1
     i32.const 3
     call $~lib/typedarray/Int8Array#__get
    else
     i32.const 1
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 1
     call $~lib/typedarray/Int8Array#__get
    end
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 2
     call $~lib/typedarray/Int8Array#__get
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
     call $~lib/array/Array<u8>#__set
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  i32.const 1776
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $7
  i32.extend8_s
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
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|0
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|1
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|1
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|2
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|2
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|3
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|3
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|4
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|4
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
  local.get $9
  local.get $0
  i32.extend8_s
  i32.add
  local.set $7
  local.get $0
  i32.const 1
  i32.add
  local.set $3
  loop $for-loop|5
   local.get $7
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break5
     block $for-continue|5
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|5
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
  local.get $0
  i32.extend8_s
  local.get $8
  i32.const 3
  i32.shl
  i32.add
  local.set $7
  local.get $0
  i32.const 8
  i32.add
  local.set $3
  loop $for-loop|6
   local.get $7
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break6
     block $for-continue|6
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|6
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|7
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       call $~lib/array/Array<u8>#__set
       br $for-continue|7
      end
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  i32.const 1808
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
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|0
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|1
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|1
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|2
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|2
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|3
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|3
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  i32.const 1840
  call $~lib/rt/__newArray
  local.tee $4
  i32.store
  i32.const 7
  local.get $0
  i32.extend8_s
  i32.const 3
  i32.shr_u
  local.tee $3
  i32.extend8_s
  i32.sub
  local.set $6
  i32.const 7
  local.get $0
  i32.const 7
  i32.and
  local.tee $5
  i32.sub
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
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|0
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
  i32.extend8_s
  i32.add
  local.set $7
  local.get $0
  i32.const 1
  i32.add
  local.set $3
  loop $for-loop|1
   local.get $7
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break1
     block $for-continue|1
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|1
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
  local.get $0
  i32.extend8_s
  local.get $6
  i32.const 3
  i32.shl
  i32.add
  local.set $6
  local.get $0
  i32.const 8
  i32.add
  local.set $3
  loop $for-loop|2
   local.get $6
   local.get $3
   i32.extend8_s
   i32.ge_s
   if
    block $for-break2
     block $for-continue|2
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $3
       call $~lib/array/Array<u8>#__set
       br $for-continue|2
      end
      local.get $1
      local.get $3
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
     block $for-continue|3
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.eqz
      if
       local.get $4
       local.get $4
       i32.load offset=12
       local.get $0
       call $~lib/array/Array<u8>#__set
       br $for-continue|3
      end
      local.get $1
      local.get $0
      i32.extend8_s
      call $~lib/typedarray/Int8Array#__get
      i32.const 3
      i32.shr_u
      i32.const 255
      i32.and
      local.get $2
      i32.const 255
      i32.and
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
 (func $export:src/assembly/getMovedBoard/getMovedBoard (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
 (func $export:src/assembly/getKnightMoves/getKnightMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
 (func $export:src/assembly/getKingMoves/getKingMoves (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
  call $src/assembly/getKingMoves/getKingMoves
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
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
 (func $export:src/assembly/getBishopMoves/getBishopMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
 (func $export:src/assembly/getRookMoves/getRookMoves (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
 (func $export:src/assembly/isCaptured/isCaptured (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 2036
  i32.lt_s
  if
   i32.const 18448
   i32.const 18496
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
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1232
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
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $0
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $1
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $0
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
