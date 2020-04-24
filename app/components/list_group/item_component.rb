class ListGroup::ItemComponent < ApplicationComponent
  def initialize(classes: nil)
    @class_names = classes
  end

  private

  attr_reader :class_names

  def classes
    classes = ["list-group-item"]
    classes.push(class_names) unless class_names.try(:empty?)
    classes
  end
end
