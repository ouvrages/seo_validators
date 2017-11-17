require 'spec_helper'

RSpec.describe 'RedundantImageAltValidator' do
  before do
    Model.validates :field, redundant_image_alt: true
  end

  context 'with invalid keywords' do
    invalid_keywords = %w[image picture photo]
    invalid_keywords.each do |keyword|
      describe "validates field attribute with `#{keyword}` value" do
        model = Model.new
        model.field = keyword

        it 'should be invalid' do
          expect(model.valid?).to eq(false)
          expect(model.errors.full_messages).to include(
            [
              Model.human_attribute_name(:field),
              'Redundant alt attribute. Screen-readers already announce `img`' \
              ' tags as an image. You don\'t need to use the word' \
              ' `image`, `photo,` or `picture` (or any specified custom words)'
            ].join(' ')
          )
        end
      end
    end
  end

  context 'with valid keywords' do
    invalid_keywords = %w[sunshine shoes computer]
    invalid_keywords.each do |keyword|
      describe "validates field attribute with `#{keyword}` value" do
        model = Model.new
        model.field = keyword

        it 'should be valid' do
          expect(model.valid?).to eq(true)
        end
      end
    end
  end
end
