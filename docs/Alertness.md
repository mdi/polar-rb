# PolarRb::Alertness

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grade** | **Float** | Grade | [optional] |
| **grade_validity_seconds** | **Float** | Grade validity seconds | [optional] |
| **grade_type** | **String** | Grade type | [optional] |
| **grade_classification** | **String** | Grade classification | [optional] |
| **validity** | **String** | Validity | [optional] |
| **sleep_inertia** | **String** | Sleep inertia | [optional] |
| **sleep_type** | **String** | Sleep type | [optional] |
| **result_type** | **String** | Result type | [optional] |
| **period_start_time** | **Date** | Alertness period start time (UTC) | [optional] |
| **period_end_time** | **Date** | Alertness period end time (UTC) | [optional] |
| **sleep_period_start_time** | **Date** | Sleep period start time (UTC) | [optional] |
| **sleep_period_end_time** | **Date** | Sleep period end time (UTC) | [optional] |
| **sleep_timezone_offset_minutes** | **Float** | Sleep timezone offset minutes | [optional] |
| **hourly_data** | [**Array&lt;AlertnessHourlyData&gt;**](AlertnessHourlyData.md) | Alertness hourly data for the alertness period | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::Alertness.new(
  grade: 9.9,
  grade_validity_seconds: 57600,
  grade_type: GRADE_TYPE_PRIMARY,
  grade_classification: GRADE_CLASSIFICATION_STRONG,
  validity: VALIDITY_ESTIMATE,
  sleep_inertia: SLEEP_INERTIA_MILD,
  sleep_type: SLEEP_TYPE_PRIMARY,
  result_type: ALERTNESS_TYPE_HISTORY,
  period_start_time: null,
  period_end_time: null,
  sleep_period_start_time: null,
  sleep_period_end_time: null,
  sleep_timezone_offset_minutes: 120,
  hourly_data: null
)
```

