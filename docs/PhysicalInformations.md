# PolarRb::PhysicalInformations

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **physical_informations** | **Array&lt;String&gt;** | Absolute links to individual physical information within the transaction | [optional] |

## Example

```ruby
require 'polar-rb'

instance = PolarRb::PhysicalInformations.new(
  physical_informations: [&quot;https://www.polaraccesslink.com/v3/users/12/physical-information-transactions/12/physical-informations/56&quot;,&quot;https://www.polaraccesslink.com/v3/users/12/physical-information-transactions/12/physical-informations/120&quot;]
)
```

