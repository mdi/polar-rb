# PolarRb::CardioLoadLevels

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **very_low** | **Float** |  | [optional] |
| **low** | **Float** |  | [optional] |
| **medium** | **Float** |  | [optional] |
| **high** | **Float** |  | [optional] |
| **very_high** | **Float** |  | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::CardioLoadLevels.new(
  very_low: 0.1,
  low: 0.1,
  medium: 0.1,
  high: 0.1,
  very_high: 0.1
)
```

