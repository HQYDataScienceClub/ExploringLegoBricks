# Download Instructions

To access the datasets referenced, use the following commands:

```Python
from data import rebrickable, sets

# import one dataset:
sets = rebrickable('sets')
print(sets.head())

# Cache all datasets and print one:
ds = {sets[i]: rebrickable(sets[i]) for i in range(len(sets))}
print(ds['themes'])
```
