# PolarRb::ActivityStepSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **steps** | **Integer** | Number of steps in sample segment. If element is null, step samples are not available for current segment. | [optional] |
| **time** | **String** | Start time of sample segment. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::ActivityStepSample.new(
  steps: null,
  time: 12:37:33.000
)
```

