# cfx_randomization (QOL)

Easily random items from the dictionary.

## Examples

```lua
local randomItem = exports.cfx_randomization:GetRandomItemInDict().item_name
local randomItems = exports.cfx_randomization:GetRandomItemInDict().items
```

### Exports

| Export                | Description                                             | Parameter(s) | Return |
| --------------------- | ------------------------------------------------------- | ------------ | ------ |
| `GetRandomItemInDict` | Pick random element from target dictionary              |              | table  |
| `RollChanceByPercent` | Roll chance by percent (Can be use with decimal number) | number       | bool   |
