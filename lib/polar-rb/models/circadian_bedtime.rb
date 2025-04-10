=begin
#Polar Accesslink API

#Polar Accesslink API documentation

The version of the OpenAPI document: 3
Contact: b2bhelpdesk@polar.com
Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module PolarRb
  # Circadian bedtime period data
  class CircadianBedtime
    # Validity
    attr_accessor :validity

    # Quality
    attr_accessor :quality

    # Result type
    attr_accessor :result_type

    # Circadian bedtime period start time (UTC)
    attr_accessor :period_start_time

    # Circadian bedtime period end time (UTC)
    attr_accessor :period_end_time

    # Circadian bedtime preferred sleep period start time (UTC)
    attr_accessor :preferred_sleep_period_start_time

    # Circadian bedtime preferred sleep period end time (UTC)
    attr_accessor :preferred_sleep_period_end_time

    # Circadian bedtime sleep gate (suggested fall a sleep window) start time (UTC)
    attr_accessor :sleep_gate_start_time

    # Circadian bedtime sleep gate (suggested fall a sleep window) end time (UTC)
    attr_accessor :sleep_gate_end_time

    # Sleep timezone offset minutes
    attr_accessor :sleep_timezone_offset_minutes

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'validity' => :'validity',
        :'quality' => :'quality',
        :'result_type' => :'result_type',
        :'period_start_time' => :'period_start_time',
        :'period_end_time' => :'period_end_time',
        :'preferred_sleep_period_start_time' => :'preferred_sleep_period_start_time',
        :'preferred_sleep_period_end_time' => :'preferred_sleep_period_end_time',
        :'sleep_gate_start_time' => :'sleep_gate_start_time',
        :'sleep_gate_end_time' => :'sleep_gate_end_time',
        :'sleep_timezone_offset_minutes' => :'sleep_timezone_offset_minutes'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'validity' => :'String',
        :'quality' => :'String',
        :'result_type' => :'String',
        :'period_start_time' => :'Date',
        :'period_end_time' => :'Date',
        :'preferred_sleep_period_start_time' => :'Date',
        :'preferred_sleep_period_end_time' => :'Date',
        :'sleep_gate_start_time' => :'Date',
        :'sleep_gate_end_time' => :'Date',
        :'sleep_timezone_offset_minutes' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PolarRb::CircadianBedtime` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PolarRb::CircadianBedtime`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'validity')
        self.validity = attributes[:'validity']
      end

      if attributes.key?(:'quality')
        self.quality = attributes[:'quality']
      end

      if attributes.key?(:'result_type')
        self.result_type = attributes[:'result_type']
      end

      if attributes.key?(:'period_start_time')
        self.period_start_time = attributes[:'period_start_time']
      end

      if attributes.key?(:'period_end_time')
        self.period_end_time = attributes[:'period_end_time']
      end

      if attributes.key?(:'preferred_sleep_period_start_time')
        self.preferred_sleep_period_start_time = attributes[:'preferred_sleep_period_start_time']
      end

      if attributes.key?(:'preferred_sleep_period_end_time')
        self.preferred_sleep_period_end_time = attributes[:'preferred_sleep_period_end_time']
      end

      if attributes.key?(:'sleep_gate_start_time')
        self.sleep_gate_start_time = attributes[:'sleep_gate_start_time']
      end

      if attributes.key?(:'sleep_gate_end_time')
        self.sleep_gate_end_time = attributes[:'sleep_gate_end_time']
      end

      if attributes.key?(:'sleep_timezone_offset_minutes')
        self.sleep_timezone_offset_minutes = attributes[:'sleep_timezone_offset_minutes']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      validity_validator = EnumAttributeValidator.new('String', ["VALIDITY_UNKNOWN", "VALIDITY_RESET", "VALIDITY_NOT_VALID", "VALIDITY_ESTIMATE", "VALIDITY_VALID"])
      return false unless validity_validator.valid?(@validity)
      quality_validator = EnumAttributeValidator.new('String', ["CIRCADIAN_BEDTIME_QUALITY_UNKNOWN", "CIRCADIAN_BEDTIME_QUALITY_WEAK", "CIRCADIAN_BEDTIME_QUALITY_COMPROMISED", "CIRCADIAN_BEDTIME_QUALITY_CLEARLY_RECOGNIZABLE"])
      return false unless quality_validator.valid?(@quality)
      result_type_validator = EnumAttributeValidator.new('String', ["CIRCADIAN_BEDTIME_TYPE_UNKNOWN", "CIRCADIAN_BEDTIME_TYPE_PREDICTION", "CIRCADIAN_BEDTIME_TYPE_HISTORY"])
      return false unless result_type_validator.valid?(@result_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] validity Object to be assigned
    def validity=(validity)
      validator = EnumAttributeValidator.new('String', ["VALIDITY_UNKNOWN", "VALIDITY_RESET", "VALIDITY_NOT_VALID", "VALIDITY_ESTIMATE", "VALIDITY_VALID"])
      unless validator.valid?(validity)
        fail ArgumentError, "invalid value for \"validity\", must be one of #{validator.allowable_values}."
      end
      @validity = validity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quality Object to be assigned
    def quality=(quality)
      validator = EnumAttributeValidator.new('String', ["CIRCADIAN_BEDTIME_QUALITY_UNKNOWN", "CIRCADIAN_BEDTIME_QUALITY_WEAK", "CIRCADIAN_BEDTIME_QUALITY_COMPROMISED", "CIRCADIAN_BEDTIME_QUALITY_CLEARLY_RECOGNIZABLE"])
      unless validator.valid?(quality)
        fail ArgumentError, "invalid value for \"quality\", must be one of #{validator.allowable_values}."
      end
      @quality = quality
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result_type Object to be assigned
    def result_type=(result_type)
      validator = EnumAttributeValidator.new('String', ["CIRCADIAN_BEDTIME_TYPE_UNKNOWN", "CIRCADIAN_BEDTIME_TYPE_PREDICTION", "CIRCADIAN_BEDTIME_TYPE_HISTORY"])
      unless validator.valid?(result_type)
        fail ArgumentError, "invalid value for \"result_type\", must be one of #{validator.allowable_values}."
      end
      @result_type = result_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          validity == o.validity &&
          quality == o.quality &&
          result_type == o.result_type &&
          period_start_time == o.period_start_time &&
          period_end_time == o.period_end_time &&
          preferred_sleep_period_start_time == o.preferred_sleep_period_start_time &&
          preferred_sleep_period_end_time == o.preferred_sleep_period_end_time &&
          sleep_gate_start_time == o.sleep_gate_start_time &&
          sleep_gate_end_time == o.sleep_gate_end_time &&
          sleep_timezone_offset_minutes == o.sleep_timezone_offset_minutes
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [validity, quality, result_type, period_start_time, period_end_time, preferred_sleep_period_start_time, preferred_sleep_period_end_time, sleep_gate_start_time, sleep_gate_end_time, sleep_timezone_offset_minutes].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = PolarRb.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
