
defmodule MergeTwoSortedLists do
  alias ListNode

  @spec merge_two_lists(list1 :: ListNode.t() | nil, list2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def merge_two_lists(list1, list2) do
    # Directly merge ListNode structures without unnecessary conversion
    merge(list1, list2)
  end

  defp merge(nil, nil), do: nil
  defp merge(nil, list2), do: list2
  defp merge(list1, nil), do: list1

  defp merge(%ListNode{val: val1, next: next1}, %ListNode{val: val2, next: next2}) do
    if val1 <= val2 do
      %ListNode{val: val1, next: merge(next1, %ListNode{val: val2, next: next2})}
    else
      %ListNode{val: val2, next: merge(%ListNode{val: val1, next: next1}, next2)}
    end
  end

end