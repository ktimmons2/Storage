#include "../../includes/packet.h"
#include "../../includes/protocol.h"

module FloodingC{
  provides interface Flooding;

  uses interface SimpleSend as Sender;
  uses interface Receive;
}

implementation{
  command error_t Flooding.send(pack msg) {
    return call Sender.send(msg, AM_BROADCAST_ADDR);
  }

  event message_t* Receive.receive(message_t* msg, void* payload, uint8_t len){
    if (len == sizeof(pack)){
      pack* receivedPacket = (pack*) payload;
      //
      return msg;
    }
    return msg;
  }
}