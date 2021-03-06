defmodule EventStore.Snapshots.SnapshotData do
  @moduledoc """
  Snapshot data
  """
    
  alias EventStore.Snapshots.SnapshotData

  defstruct source_uuid: nil,
            source_version: nil,
            source_type: nil,
            data: nil,
            metadata: nil,
            created_at: nil

  @type t :: %SnapshotData{
    source_uuid: String.t,
    source_version: non_neg_integer,
    source_type: String.t,
    data: binary,
    metadata: binary,
    created_at: NaiveDateTime.t
  }
end
