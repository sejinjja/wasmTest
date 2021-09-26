(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (global $~lib/memory/__data_end i32 (i32.const 8))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 16392))
 (global $~lib/memory/__heap_base i32 (i32.const 16392))
 (memory $0 0)
 (table $0 1 funcref)
 (elem $0 (i32.const 1))
 (export "add" (func $assembly/index/add))
 (export "test" (func $assembly/index/test))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/test (result i64)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  i64.const 0
  local.set $0
  i32.const 0
  local.set $1
  loop $for-loop|0
   local.get $1
   i32.const 2000000000
   i32.le_s
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $1
    i64.extend_i32_s
    i64.add
    local.set $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  local.get $0
 )
)
