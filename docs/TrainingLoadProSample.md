# PolarRb::TrainingLoadProSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date in format YYYY-MM-DD. | [optional] |
| **cardio_load** | **Float** | User cardio load value. | [optional] |
| **muscle_load** | **Float** | User muscle load value. | [optional] |
| **perceived_load** | **Float** | User perceived load value. | [optional] |
| **cardio_load_interpretation** | [**TrainingLoadProLoadEnum**](TrainingLoadProLoadEnum.md) |  | [optional] |
| **muscle_load_interpretation** | [**TrainingLoadProLoadEnum**](TrainingLoadProLoadEnum.md) |  | [optional] |
| **perceived_load_interpretation** | [**TrainingLoadProLoadEnum**](TrainingLoadProLoadEnum.md) |  | [optional] |
| **user_rpe** | [**TrainingLoadProRpeEnum**](TrainingLoadProRpeEnum.md) |  | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::TrainingLoadProSample.new(
  date: Sat Dec 31 19:00:00 EST 2022,
  cardio_load: 1.0,
  muscle_load: 1.0,
  perceived_load: 1.0,
  cardio_load_interpretation: null,
  muscle_load_interpretation: null,
  perceived_load_interpretation: null,
  user_rpe: null
)
```

