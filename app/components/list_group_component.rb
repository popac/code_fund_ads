class ListGroupComponent < ApplicationComponent
  def initialize(bordered: false, flush: false, reflow: false, classes: nil)
    @bordered = bordered
    @flush = flush
    @reflow = reflow
    @class_names = classes
  end

  private

  attr_reader :class_names, :bordered, :flush, :reflow

  def classes
    classes = ["list-group"]
    classes << "list-group-bordered" if bordered
    classes << "list-group-flush" if flush
    classes << "list-group-reflow" if reflow
    classes << class_names unless class_names.try(:empty?)
    classes.compact
  end

  def render?
    content.present?
  end
end
