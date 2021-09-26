(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_i64 (func (result i64)))
 (memory $0 0)
 (export "add" (func $assembly/index/add))
 (export "test" (func $assembly/index/test))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/test (result i64)
  (local $0 i32)
  (local $1 i64)
  loop $for-loop|0
   local.get $0
   i32.const 2000000000
   i32.le_s
   if
    local.get $0
    i64.extend_i32_s
    local.get $1
    i64.add
    local.set $1
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  local.get $1
 )
)
