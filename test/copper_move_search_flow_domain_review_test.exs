defmodule CopperMoveSearchFlow.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 62, slack: 39, drag: 13, confidence: 56}
    assert CopperMoveSearchFlow.DomainReview.score(item) == 180
    assert CopperMoveSearchFlow.DomainReview.lane(item) == "ship"
  end
end
