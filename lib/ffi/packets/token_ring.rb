require 'ffi/packets/mac_addr'

module FFI::Packets
  class TokenRing 
    class Hdr < FFI::Struct
      include ::FFI::DRY::NetStructHelper

      dsl_layout do
        field  :ac,   :uint8,   :desc => 'access control'
        field  :fc,   :uint8,   :desc => 'frame control'
        struct :dst,  MacAddr,  :desc => 'destination address'
        struct :src,  MacAddr,  :desc => 'source address'
      end
    end

    class HdrExtra < FFI::Struct
      include ::FFI::DRY::NetStructHelper

      dsl_layout do
        field  :rcf,  :uint16,        :desc => 'rcf?'
        array  :rseg, [:uint16, 16],  :desc => 'routing segment'
      end
    end
  end
end
