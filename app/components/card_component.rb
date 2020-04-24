class CardComponent < ApplicationComponent
  DEFAULT_CLASSES = "card"

  def initialize(classes: nil)
    @class_names = classes
  end

  private

  attr_reader :class_names

  def classes
    classes = [DEFAULT_CLASSES]
    classes.push(class_names) unless class_names.try(:empty?)
    classes
  end
end
