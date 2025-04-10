# PolarRb::DurationZone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **index** | **Integer** | Activity zone index | [optional] |
| **inzone** | **String** | Time duration spent in the zone ISO 8601 | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::DurationZone.new(
  index: 1,
  inzone: PT51M5S
)
```

