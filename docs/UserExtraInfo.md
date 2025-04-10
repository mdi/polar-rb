# PolarRb::UserExtraInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | Value provided by the customer | [optional] |
| **index** | **Integer** | Item index | [optional] |
| **name** | **String** | Name of the extra info asked from customer | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::UserExtraInfo.new(
  value: 2,
  index: 0,
  name: number-of-children
)
```

