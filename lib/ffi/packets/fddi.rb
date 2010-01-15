require 'ffi/packets/fddi.rb'

module FFI::Packets

  # Fiber Distributed Data Interface (FDDI) L2 Frame Header
  class FDDI < FFI::Struct
    include ::FFI::DRY::NetStructHelper

    dsl_layout do
      field :fc,    :uint8,   :desc => 'field control'
      field :dst,   MacAddr,  :desc => 'destination address'
      field :src,   MacAddr,  :desc => 'source address'
    end
  end
end
