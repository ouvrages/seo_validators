module ActiveModel
  module Validations
    class RedundantImageAltValidator < ActiveModel::EachValidator
      INVALID_KEYWORDS = %w[image picture photo].join('|').freeze

      def validate_each(record, attribute, value)
        return unless valid?(value)
        record.errors[attribute] << (
          options[:message] ||
          I18n.t('validators.redundant_image_alt.message')
        )
      end

      private

      def valid?(value)
        (value =~ /#{INVALID_KEYWORDS}/i)
      end
    end

    module HelperMethods
      def validates_redundant_image_alt_of(*attr_names)
        validates_with(
          RedundantImageAltValidator,
          _merge_attributes(attr_names)
        )
      end
    end
  end
end
