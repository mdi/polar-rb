# PolarRb::HeartRate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **average** | **Integer** | Average heart-rate | [optional] |
| **maximum** | **Integer** | Maximum heart-rate | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::HeartRate.new(
  average: 129,
  maximum: 147
)
```

