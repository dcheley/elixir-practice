defmodule KV.BucketTest do
  # Only use async: true if case doesn't rely on change or global values
  use ExUnit.Case, async: true

  test "stores values by key" do
    {:ok, bucket} = start_supervised KV.Bucket
    assert KV.Bucket.get(bucket, "milk") == nil

    KV.Bucket.put(bucket, "milk", 3)
    assert KV.Bucket.get(bucket, "milk") == 3
  end
end
