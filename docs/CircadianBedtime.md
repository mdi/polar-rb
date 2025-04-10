# PolarRb::CircadianBedtime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validity** | **String** | Validity | [optional] |
| **quality** | **String** | Quality | [optional] |
| **result_type** | **String** | Result type | [optional] |
| **period_start_time** | **Date** | Circadian bedtime period start time (UTC) | [optional] |
| **period_end_time** | **Date** | Circadian bedtime period end time (UTC) | [optional] |
| **preferred_sleep_period_start_time** | **Date** | Circadian bedtime preferred sleep period start time (UTC) | [optional] |
| **preferred_sleep_period_end_time** | **Date** | Circadian bedtime preferred sleep period end time (UTC) | [optional] |
| **sleep_gate_start_time** | **Date** | Circadian bedtime sleep gate (suggested fall a sleep window) start time (UTC) | [optional] |
| **sleep_gate_end_time** | **Date** | Circadian bedtime sleep gate (suggested fall a sleep window) end time (UTC) | [optional] |
| **sleep_timezone_offset_minutes** | **Float** | Sleep timezone offset minutes | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::CircadianBedtime.new(
  validity: VALIDITY_ESTIMATE,
  quality: CIRCADIAN_BEDTIME_QUALITY_COMPROMISED,
  result_type: CIRCADIAN_BEDTIME_TYPE_HISTORY,
  period_start_time: null,
  period_end_time: null,
  preferred_sleep_period_start_time: null,
  preferred_sleep_period_end_time: null,
  sleep_gate_start_time: null,
  sleep_gate_end_time: null,
  sleep_timezone_offset_minutes: 120
)
```

