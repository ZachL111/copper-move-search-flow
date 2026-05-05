defmodule CopperMoveSearchFlowTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 61, capacity: 71, latency: 20, risk: 8, weight: 4}
    assert CopperMoveSearchFlow.score(signal_case_1) == 121
    assert CopperMoveSearchFlow.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 80, capacity: 94, latency: 8, risk: 24, weight: 5}
    assert CopperMoveSearchFlow.score(signal_case_2) == 114
    assert CopperMoveSearchFlow.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 70, capacity: 107, latency: 11, risk: 9, weight: 4}
    assert CopperMoveSearchFlow.score(signal_case_3) == 187
    assert CopperMoveSearchFlow.classify(signal_case_3) == "accept"
  end
end
