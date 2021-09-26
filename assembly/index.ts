// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}


export function test(): u64 {
  let sum: u64 = 0;
  for(let i = 0; i <= 2000000000; i++ ) {
    sum += i;
  }
  return sum;
}
