require "test_helper"

class ListGroup::ItemComponentTest < ViewComponent::TestCase
  test "list group item with no content" do
    assert_equal("", render_inline(ListGroup::ItemComponent.new).to_html.squish)
  end

  test "list group item with content" do
    assert_equal(
      %(<li class="list-group-item"> List Group Item </li>),
      render_inline(ListGroup::ItemComponent.new) { "List Group Item" }.to_html.squish
    )
  end

  test "list group item with classes" do
    assert_equal(
      %(<li class="list-group-item foo"> List Group Item </li>),
      render_inline(ListGroup::ItemComponent.new(classes: "foo")) { "List Group Item" }.to_html.squish
    )
  end

  test "list group item with data" do
    assert_equal(
      %(<li class="list-group-item" data-controller="list-group-controller" data-action="test"> List Group Item </li>),
      render_inline(ListGroup::ItemComponent.new(data: {controller: "list-group-controller", action: "test"})) { "List Group Item" }.to_html.squish
    )
  end

  test "list group item with status" do
    assert_equal(
      %(<li class="list-group-item list-group-item-success"> List Group Item </li>),
      render_inline(ListGroup::ItemComponent.new(status: "success")) { "List Group Item" }.to_html.squish
    )
  end
end
