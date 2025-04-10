# PolarRb::Samples

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **samples** | **Array&lt;String&gt;** | List of URIs pointing to single sample type data. | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::Samples.new(
  samples: [&quot;https://www.polaraccesslink.com/v3/users/12/exercise-transactions/34/exercises/56/samples/0&quot;,&quot;https://www.polaraccesslink.com/v3/users/12/exercise-transactions/34/exercises/56/samples/3&quot;]
)
```

