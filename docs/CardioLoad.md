# PolarRb::CardioLoad

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date in format YYYY-MM-DD. | [optional] |
| **cardio_load_status** | [**CardioLoadStatusEnum**](CardioLoadStatusEnum.md) |  | [optional] |
| **cardio_load** | **Float** | Cardio load (training impulse, TRIMP) shows your cardiac response to a training session. | [optional] |
| **strain** | **Float** | Strain shows how much you have strained yourself with training lately. It shows your average daily load from the past 7 days. | [optional] |
| **tolerance** | **Float** | Tolerance describes how prepared you are to endure cardio training. It shows your average daily load from the past 28 days. | [optional] |
| **cardio_load_ratio** | **Float** | Ratio between strain and tolerance. | [optional] |
| **cardio_load_level** | [**CardioLoadLevels**](CardioLoadLevels.md) |  | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::CardioLoad.new(
  date: Sat Dec 31 19:00:00 EST 2022,
  cardio_load_status: null,
  cardio_load: 0.2,
  strain: 0.3,
  tolerance: 0.4,
  cardio_load_ratio: 0.1,
  cardio_load_level: null
)
```

