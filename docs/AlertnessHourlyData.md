# PolarRb::AlertnessHourlyData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validity** | **String** | Validity | [optional] |
| **alertness_level** | **String** | Alertness level | [optional] |
| **start_time** | **Date** | Alertness period start time (UTC) | [optional] |
| **end_time** | **Date** | Alertness period end time (UTC) | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::AlertnessHourlyData.new(
  validity: VALIDITY_ESTIMATE,
  alertness_level: ALERTNESS_LEVEL_VERY_HIGH,
  start_time: null,
  end_time: null
)
```

