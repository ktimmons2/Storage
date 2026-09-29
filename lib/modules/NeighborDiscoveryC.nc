module NeighborDiscoveryC {
  provides interface NeighborDiscovery;

  uses interface Timer<TMilli> as NeighborTimer;
  uses interface SimpleSend as Sender;
  uses interface Receive;
}

implementation{

  command bool NeighborDiscovery.isNeighbor(uint16_t node){
    return FALSE;
  }

  event void NeighborTimer.fired(){
    //Neighbor discovery implemention
  }

  event message_t* Receive.receive(message_t* msg, void* payload, uint8_t len){
    //Neighbor discovery receive logic
    return msg;
  }

}