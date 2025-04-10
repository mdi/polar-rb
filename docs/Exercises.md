# PolarRb::Exercises

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exercises** | **Array&lt;String&gt;** | Absolute links to individual exercises within the transaction | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::Exercises.new(
  exercises: [&quot;https://www.polaraccesslink.com/v3/users/12/exercise-transactions/34/exercises/56&quot;,&quot;https://www.polaraccesslink.com/v3/users/12/exercise-transactions/34/exercises/120&quot;]
)
```

