# Lua Memory Snapshot

Lua C API utility to get all living objects and references in Lua.

## About

- Based on Lua 5.3.5.
- The total size of all objects is exactly the same with the size returned by `lua_gc`.
- Changes in Lua source code:
  - Add `nliveupval` field in `lua_State` to record allocated `UpVal`.
  - Make static function `index2addr` public.
  - Add a new API `lua_memory_snapshot` to get snapshot.

## Usage

1. Call `lua_memory_snapshot` and collect objects and references in callback.
2. Dump all objects or build object tree with collected data.

## Example

Check example/snapshot.csv for example of dumped data.

