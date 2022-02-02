# censor_randomization (QOL)

Easily random items from the dictionary.

## Examples

```lua
local randomItem = exports.censor_randomization:RandomItemInDict("random_dict_test").item_name
local randomItems = exports.censor_randomization:RandomItemInDict("random_dict_test").items
```

### Exports

| Export             | Description                                             | Parameter(s) | Return |
| ------------------ | ------------------------------------------------------- | ------------ | ------ |
| `RandomItemInDict` | Pick random element from target dictionary              |              | table  |
| `RollPercentage`   | Roll chance by percent (Can be use with decimal number) | number       | bool   |
