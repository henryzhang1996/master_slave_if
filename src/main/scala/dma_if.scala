import spinal.core._
import spinal.lib._
import _root_.com.sun.org.apache.bcel.internal.generic.FASTORE

case class Interface_config(
                             dataWidth:Int,
                             addrWidth:Int,
                             usebe : Boolean = false
                           )

case class Interface (config:Interface_config) extends  Bundle with IMasterSlave{
  val req = Bool
  val gnt = Bool
  val addr = Bits(config.addrWidth bits )
  val we = Bool
  val be = if(config.usebe) Bits(config.addrWidth >> 3 bits) else null
  val wdata = Bits(config.dataWidth bits)
  val rdata = Bits(config.dataWidth bits)
  val rvalid = Bool
  override def asMaster(): Unit = {
    out(req,we,addr,wdata)
    in(gnt,rdata,rvalid)
    if(config.usebe) out(be)
  }
  def initial():Unit = {
    gnt := False
    rdata := B(0,config.dataWidth bits)
    rvalid := False
  }

  def <<(that:Interface): Unit = {
    val req_temp = RegNext(that.req,False)
    when(this.gnt){req_temp := False}
    this.req := req_temp
    this.we := RegNext(that.we,False)
    this.addr := RegNext(that.addr,B(0,config.addrWidth bits))
    this.wdata := RegNext(that.wdata,B(0,config.dataWidth bits))
    if(config.usebe) {this.be := RegNext(that.be,B(0,config.addrWidth >> 3 bits))}
    that.gnt := RegNext(this.gnt,False)
    that.rdata := RegNextWhen(this.rdata,this.rvalid === True,B(0,config.dataWidth bits))
    that.rvalid := RegNext(this.rvalid,False)
  }
}

class dma_if extends Component{
  val dmaConfig = Interface_config(
    dataWidth = 32,
    addrWidth = 32,
    usebe = false
  )
  val peri_sel = in Bits(2 bits)
  //instance
  val dma = master(Interface(dmaConfig))
  val peri0 = slave(Interface(dmaConfig))
  val peri1 = slave(Interface(dmaConfig))
  val peri2 = slave(Interface(dmaConfig))
  val peri3 = slave(Interface(dmaConfig))

  //initial
  peri0.initial
  peri1.initial
  peri2.initial
  peri3.initial

  //connect
  switch(peri_sel){
    is(0) {dma << peri0}
    is(1) {dma << peri1}
    is(2) {dma << peri2}
    is(3) {dma << peri3}
  }


  //dma << peri0

}
object dma_if{
  def main(args: Array[String]){
    SpinalVerilog(new dma_if)
  }
}