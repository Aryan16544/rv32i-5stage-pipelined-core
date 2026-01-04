# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 18
property maxzoom 7.5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 18
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new soc_test_top work:soc_test_top:NOFILE -nosplit
load symbol dmem work:dmem:NOFILE HIERBOX pin clk input.left pin rst input.left pin we input.left pinBus addr input.left [31:0] pinBus rdata output.right [31:0] pinBus wdata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol imem work:imem:NOFILE HIERBOX pin clk input.left pin rst input.left pinBus addr input.left [31:0] pinBus rdata output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol rv32i_core_top work:rv32i_core_top:NOFILE HIERBOX pin clk input.left pin dmem_we output.right pin rst input.left pinBus dmem_addr output.right [31:0] pinBus dmem_rdata input.left [31:0] pinBus dmem_wdata output.right [31:0] pinBus imem_addr output.right [31:0] pinBus imem_rdata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol csr_file work:csr_file:NOFILE HIERBOX pin clk input.left pin csr_we input.left pin rst input.left pin trap_enter input.left pin trap_return input.left pinBus csr_addr input.left [11:0] pinBus csr_rdata output.right [31:0] pinBus csr_wdata input.left [31:0] pinBus mepc output.right [31:0] pinBus mtvec output.right [31:0] pinBus trap_cause input.left [31:0] pinBus trap_pc input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ex_stage work:ex_stage:NOFILE HIERBOX pin branch_taken output.right pin ex_alusrc input.left pin ex_branch input.left pin ex_memread input.left pin ex_memtoreg input.left pin ex_memwrite input.left pin ex_regwrite input.left pinBus alu_result output.right [31:0] pinBus branch_target output.right [31:0] pinBus ex_aluop input.left [1:0] pinBus ex_funct3 input.left [2:0] pinBus ex_funct7 input.left [6:0] pinBus ex_imm input.left [31:0] pinBus ex_pc input.left [31:0] pinBus ex_rd input.left [4:0] pinBus ex_rs1 input.left [4:0] pinBus ex_rs1_data input.left [31:0] pinBus ex_rs2 input.left [4:0] pinBus ex_rs2_data input.left [31:0] pinBus exmem_alu_result input.left [31:0] pinBus forward_a input.left [1:0] pinBus forward_b input.left [1:0] pinBus rd_out output.right [4:0] pinBus store_data output.right [31:0] pinBus wb_wdata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol ex_mem_reg work:ex_mem_reg:NOFILE HIERBOX pin clk input.left pin ex_memread input.left pin ex_memtoreg input.left pin ex_memwrite input.left pin ex_regwrite input.left pin flush input.left pin mem_memread output.right pin mem_memtoreg output.right pin mem_memwrite output.right pin mem_regwrite output.right pin rst input.left pinBus ex_alu_result input.left [31:0] pinBus ex_rd input.left [4:0] pinBus ex_store_data input.left [31:0] pinBus mem_alu_result output.right [31:0] pinBus mem_rd output.right [4:0] pinBus mem_store_data output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol forwarding_unit work:forwarding_unit:NOFILE HIERBOX pin exmem_regwrite input.left pin memwb_regwrite input.left pinBus exmem_rd input.left [4:0] pinBus forward_a output.right [1:0] pinBus forward_b output.right [1:0] pinBus idex_rs1 input.left [4:0] pinBus idex_rs2 input.left [4:0] pinBus memwb_rd input.left [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol id_stage work:id_stage:NOFILE HIERBOX pin alusrc output.right pin branch output.right pin clk input.left pin is_ecall output.right pin is_mret output.right pin memread output.right pin memtoreg output.right pin memwrite output.right pin regwrite output.right pin rst input.left pin wb_regwrite input.left pinBus aluop output.right [1:0] pinBus funct3 output.right [2:0] pinBus funct7 output.right [6:0] pinBus id_instr input.left [31:0] pinBus id_pc input.left [31:0] pinBus imm_out output.right [31:0] pinBus rd output.right [4:0] pinBus rs1 output.right [4:0] pinBus rs1_data output.right [31:0] pinBus rs2 output.right [4:0] pinBus rs2_data output.right [31:0] pinBus wb_rd input.left [4:0] pinBus wb_wdata input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol id_ex_reg work:id_ex_reg:NOFILE HIERBOX pin clk input.left pin ex_alusrc output.right pin ex_branch output.right pin ex_memread output.right pin ex_memtoreg output.right pin ex_memwrite output.right pin ex_regwrite output.right pin flush input.left pin id_alusrc input.left pin id_branch input.left pin id_memread input.left pin id_memtoreg input.left pin id_memwrite input.left pin id_regwrite input.left pin rst input.left pin stall input.left pinBus ex_aluop output.right [1:0] pinBus ex_funct3 output.right [2:0] pinBus ex_funct7 output.right [6:0] pinBus ex_imm output.right [31:0] pinBus ex_pc output.right [31:0] pinBus ex_rd output.right [4:0] pinBus ex_rs1 output.right [4:0] pinBus ex_rs1_data output.right [31:0] pinBus ex_rs2 output.right [4:0] pinBus ex_rs2_data output.right [31:0] pinBus id_aluop input.left [1:0] pinBus id_funct3 input.left [2:0] pinBus id_funct7 input.left [6:0] pinBus id_imm input.left [31:0] pinBus id_pc input.left [31:0] pinBus id_rd input.left [4:0] pinBus id_rs1 input.left [4:0] pinBus id_rs1_data input.left [31:0] pinBus id_rs2 input.left [4:0] pinBus id_rs2_data input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol if_stage work:if_stage:NOFILE HIERBOX pin branch_taken input.left pin clk input.left pin csr_trap_enter input.left pin csr_trap_return input.left pin flush input.left pin rst input.left pin stall input.left pinBus branch_target input.left [31:0] pinBus csr_mepc input.left [31:0] pinBus csr_mtvec input.left [31:0] pinBus imem_addr output.right [31:0] pinBus imem_rdata input.left [31:0] pinBus instr_out output.right [31:0] pinBus pc4_out output.right [31:0] pinBus pc_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol if_id_reg work:if_id_reg:NOFILE HIERBOX pin clk input.left pin flush input.left pin rst input.left pin stall input.left pinBus id_instr output.right [31:0] pinBus id_pc output.right [31:0] pinBus if_instr input.left [31:0] pinBus if_pc input.left [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mem_stage work:mem_stage:NOFILE HIERBOX pin clk input.left pin dmem_we output.right pin mem_memread input.left pin mem_memtoreg input.left pin mem_memwrite input.left pin mem_regwrite input.left pin rst input.left pin wb_memtoreg output.right pin wb_regwrite output.right pinBus dmem_addr output.right [31:0] pinBus dmem_rdata input.left [31:0] pinBus dmem_wdata output.right [31:0] pinBus mem_alu_result input.left [31:0] pinBus mem_rd input.left [4:0] pinBus mem_store_data input.left [31:0] pinBus wb_alu_result output.right [31:0] pinBus wb_mem_data output.right [31:0] pinBus wb_rd output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mem_wb_reg work:mem_wb_reg:NOFILE HIERBOX pin clk input.left pin mem_memtoreg input.left pin mem_regwrite input.left pin rst input.left pin wb_memtoreg output.right pin wb_regwrite output.right pinBus mem_alu_result input.left [31:0] pinBus mem_mem_data input.left [31:0] pinBus mem_rd input.left [4:0] pinBus wb_alu_result output.right [31:0] pinBus wb_mem_data output.right [31:0] pinBus wb_rd output.right [4:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol wb_stage work:wb_stage:NOFILE HIERBOX pin regwrite_out output.right pin wb_memtoreg input.left pin wb_regwrite input.left pinBus rd_out output.right [4:0] pinBus wb_alu_result input.left [31:0] pinBus wb_mem_data input.left [31:0] pinBus wb_rd input.left [4:0] pinBus wdata_out output.right [31:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_AND work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_OR1 work OR pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_NEQ work RTL(!=) pin O output.right pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] fillcolor 1
load symbol RTL_EQ3 work RTL(=) pin O output.right pinBus I0 input.left [4:0] pinBus I1 input.left [4:0] fillcolor 1
load port clk input -pg 1 -lvl 0 -x 0 -y 80
load port rst input -pg 1 -lvl 0 -x 0 -y 110
load inst DMEM dmem work:dmem:NOFILE -autohide -attr @cell(#000000) dmem -pinBusAttr addr @name addr[31:0] -pinBusAttr rdata @name rdata[31:0] -pinBusAttr wdata @name wdata[31:0] -pg 1 -lvl 3 -x 7130 -y 170
load inst IMEM imem work:imem:NOFILE -autohide -attr @cell(#000000) imem -pinBusAttr addr @name addr[31:0] -pinBusAttr rdata @name rdata[31:0] -pg 1 -lvl 1 -x 150 -y 50
load inst core rv32i_core_top work:rv32i_core_top:NOFILE -autohide -attr @cell(#000000) rv32i_core_top -attr @fillcolor #fafafa -pinBusAttr dmem_addr @name dmem_addr[31:0] -pinBusAttr dmem_rdata @name dmem_rdata[31:0] -pinBusAttr dmem_wdata @name dmem_wdata[31:0] -pinBusAttr imem_addr @name imem_addr[31:0] -pinBusAttr imem_rdata @name imem_rdata[31:0] -pg 1 -lvl 2 -x 510 -y 78
load inst core|CSR csr_file work:csr_file:NOFILE -hier core -autohide -attr @cell(#000000) csr_file -attr @name CSR -pinBusAttr csr_addr @name csr_addr[11:0] -pinBusAttr csr_rdata @name csr_rdata[31:0] -pinBusAttr csr_rdata @attr n/c -pinBusAttr csr_wdata @name csr_wdata[31:0] -pinBusAttr mepc @name mepc[31:0] -pinBusAttr mepc @attr n/c -pinBusAttr mtvec @name mtvec[31:0] -pinBusAttr mtvec @attr n/c -pinBusAttr trap_cause @name trap_cause[31:0] -pinBusAttr trap_cause @attr V=X\"0000000B\" -pinBusAttr trap_pc @name trap_pc[31:0] -pg 1 -lvl 8 -x 4290 -y 1428
load inst core|EX ex_stage work:ex_stage:NOFILE -hier core -autohide -attr @cell(#000000) ex_stage -attr @name EX -pinBusAttr alu_result @name alu_result[31:0] -pinBusAttr branch_target @name branch_target[31:0] -pinBusAttr ex_aluop @name ex_aluop[1:0] -pinBusAttr ex_funct3 @name ex_funct3[2:0] -pinBusAttr ex_funct7 @name ex_funct7[6:0] -pinBusAttr ex_imm @name ex_imm[31:0] -pinBusAttr ex_pc @name ex_pc[31:0] -pinBusAttr ex_rd @name ex_rd[4:0] -pinBusAttr ex_rs1 @name ex_rs1[4:0] -pinBusAttr ex_rs1_data @name ex_rs1_data[31:0] -pinBusAttr ex_rs2 @name ex_rs2[4:0] -pinBusAttr ex_rs2_data @name ex_rs2_data[31:0] -pinBusAttr exmem_alu_result @name exmem_alu_result[31:0] -pinBusAttr forward_a @name forward_a[1:0] -pinBusAttr forward_b @name forward_b[1:0] -pinBusAttr rd_out @name rd_out[4:0] -pinBusAttr store_data @name store_data[31:0] -pinBusAttr wb_wdata @name wb_wdata[31:0] -pg 1 -lvl 4 -x 2270 -y 268
load inst core|EX_MEM ex_mem_reg work:ex_mem_reg:NOFILE -hier core -autohide -attr @cell(#000000) ex_mem_reg -attr @name EX_MEM -pinBusAttr ex_alu_result @name ex_alu_result[31:0] -pinBusAttr ex_rd @name ex_rd[4:0] -pinBusAttr ex_store_data @name ex_store_data[31:0] -pinBusAttr mem_alu_result @name mem_alu_result[31:0] -pinBusAttr mem_rd @name mem_rd[4:0] -pinBusAttr mem_store_data @name mem_store_data[31:0] -pg 1 -lvl 13 -x 5960 -y 648
load inst core|FU forwarding_unit work:forwarding_unit:NOFILE -hier core -autohide -attr @cell(#000000) forwarding_unit -attr @name FU -pinBusAttr exmem_rd @name exmem_rd[4:0] -pinBusAttr forward_a @name forward_a[1:0] -pinBusAttr forward_b @name forward_b[1:0] -pinBusAttr idex_rs1 @name idex_rs1[4:0] -pinBusAttr idex_rs2 @name idex_rs2[4:0] -pinBusAttr memwb_rd @name memwb_rd[4:0] -pg 1 -lvl 3 -x 1700 -y 588
load inst core|ID id_stage work:id_stage:NOFILE -hier core -autohide -attr @cell(#000000) id_stage -attr @name ID -pinBusAttr aluop @name aluop[1:0] -pinBusAttr funct3 @name funct3[2:0] -pinBusAttr funct7 @name funct7[6:0] -pinBusAttr id_instr @name id_instr[31:0] -pinBusAttr id_pc @name id_pc[31:0] -pinBusAttr imm_out @name imm_out[31:0] -pinBusAttr rd @name rd[4:0] -pinBusAttr rs1 @name rs1[4:0] -pinBusAttr rs1_data @name rs1_data[31:0] -pinBusAttr rs2 @name rs2[4:0] -pinBusAttr rs2_data @name rs2_data[31:0] -pinBusAttr wb_rd @name wb_rd[4:0] -pinBusAttr wb_wdata @name wb_wdata[31:0] -pg 1 -lvl 7 -x 3620 -y 328
load inst core|ID_EX id_ex_reg work:id_ex_reg:NOFILE -hier core -autohide -attr @cell(#000000) id_ex_reg -attr @name ID_EX -pinAttr stall @attr n/c -pinBusAttr ex_aluop @name ex_aluop[1:0] -pinBusAttr ex_funct3 @name ex_funct3[2:0] -pinBusAttr ex_funct7 @name ex_funct7[6:0] -pinBusAttr ex_imm @name ex_imm[31:0] -pinBusAttr ex_pc @name ex_pc[31:0] -pinBusAttr ex_rd @name ex_rd[4:0] -pinBusAttr ex_rs1 @name ex_rs1[4:0] -pinBusAttr ex_rs1_data @name ex_rs1_data[31:0] -pinBusAttr ex_rs2 @name ex_rs2[4:0] -pinBusAttr ex_rs2_data @name ex_rs2_data[31:0] -pinBusAttr id_aluop @name id_aluop[1:0] -pinBusAttr id_funct3 @name id_funct3[2:0] -pinBusAttr id_funct7 @name id_funct7[6:0] -pinBusAttr id_imm @name id_imm[31:0] -pinBusAttr id_pc @name id_pc[31:0] -pinBusAttr id_rd @name id_rd[4:0] -pinBusAttr id_rs1 @name id_rs1[4:0] -pinBusAttr id_rs1_data @name id_rs1_data[31:0] -pinBusAttr id_rs2 @name id_rs2[4:0] -pinBusAttr id_rs2_data @name id_rs2_data[31:0] -pg 1 -lvl 12 -x 5370 -y 288
load inst core|IF if_stage work:if_stage:NOFILE -hier core -autohide -attr @cell(#000000) if_stage -attr @name IF -pinAttr csr_trap_enter @attr n/c -pinAttr csr_trap_return @attr n/c -pinBusAttr branch_target @name branch_target[31:0] -pinBusAttr csr_mepc @name csr_mepc[31:0] -pinBusAttr csr_mepc @attr n/c -pinBusAttr csr_mtvec @name csr_mtvec[31:0] -pinBusAttr csr_mtvec @attr n/c -pinBusAttr imem_addr @name imem_addr[31:0] -pinBusAttr imem_rdata @name imem_rdata[31:0] -pinBusAttr instr_out @name instr_out[31:0] -pinBusAttr pc4_out @name pc4_out[31:0] -pinBusAttr pc4_out @attr n/c -pinBusAttr pc_out @name pc_out[31:0] -pg 1 -lvl 5 -x 2730 -y 1128
load inst core|IF_ID if_id_reg work:if_id_reg:NOFILE -hier core -autohide -attr @cell(#000000) if_id_reg -attr @name IF_ID -pinBusAttr id_instr @name id_instr[31:0] -pinBusAttr id_pc @name id_pc[31:0] -pinBusAttr if_instr @name if_instr[31:0] -pinBusAttr if_pc @name if_pc[31:0] -pg 1 -lvl 6 -x 3140 -y 1128
load inst core|MEM mem_stage work:mem_stage:NOFILE -hier core -autohide -attr @cell(#000000) mem_stage -attr @name MEM -pinBusAttr dmem_addr @name dmem_addr[31:0] -pinBusAttr dmem_rdata @name dmem_rdata[31:0] -pinBusAttr dmem_wdata @name dmem_wdata[31:0] -pinBusAttr mem_alu_result @name mem_alu_result[31:0] -pinBusAttr mem_rd @name mem_rd[4:0] -pinBusAttr mem_store_data @name mem_store_data[31:0] -pinBusAttr wb_alu_result @name wb_alu_result[31:0] -pinBusAttr wb_mem_data @name wb_mem_data[31:0] -pinBusAttr wb_rd @name wb_rd[4:0] -pg 1 -lvl 14 -x 6480 -y 688
load inst core|MEM_WB mem_wb_reg work:mem_wb_reg:NOFILE -hier core -autohide -attr @cell(#000000) mem_wb_reg -attr @name MEM_WB -pinBusAttr mem_alu_result @name mem_alu_result[31:0] -pinBusAttr mem_mem_data @name mem_mem_data[31:0] -pinBusAttr mem_rd @name mem_rd[4:0] -pinBusAttr wb_alu_result @name wb_alu_result[31:0] -pinBusAttr wb_mem_data @name wb_mem_data[31:0] -pinBusAttr wb_rd @name wb_rd[4:0] -pg 1 -lvl 1 -x 770 -y 968
load inst core|WB wb_stage work:wb_stage:NOFILE -hier core -autohide -attr @cell(#000000) wb_stage -attr @name WB -pinBusAttr rd_out @name rd_out[4:0] -pinBusAttr wb_alu_result @name wb_alu_result[31:0] -pinBusAttr wb_mem_data @name wb_mem_data[31:0] -pinBusAttr wb_rd @name wb_rd[4:0] -pinBusAttr wdata_out @name wdata_out[31:0] -pg 1 -lvl 2 -x 1250 -y 1048
load inst core|hazard_stall0_i RTL_AND work -hier core -attr @cell(#000000) RTL_AND -attr @name hazard_stall0_i -pg 1 -lvl 9 -x 4520 -y 1128
load inst core|hazard_stall0_i__0 RTL_OR1 work -hier core -attr @cell(#000000) RTL_OR -attr @name hazard_stall0_i__0 -pg 1 -lvl 9 -x 4520 -y 1778
load inst core|hazard_stall1_i RTL_NEQ work -hier core -attr @cell(#000000) RTL_NEQ -attr @name hazard_stall1_i -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[4:0] -pg 1 -lvl 8 -x 4290 -y 1288
load inst core|hazard_stall1_i__0 RTL_EQ3 work -hier core -attr @cell(#000000) RTL_EQ -attr @name hazard_stall1_i__0 -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[4:0] -pg 1 -lvl 8 -x 4290 -y 1688
load inst core|hazard_stall1_i__1 RTL_EQ3 work -hier core -attr @cell(#000000) RTL_EQ -attr @name hazard_stall1_i__1 -pinBusAttr I0 @name I0[4:0] -pinBusAttr I1 @name I1[4:0] -pg 1 -lvl 8 -x 4290 -y 1788
load inst core|hazard_stall_i RTL_AND work -hier core -attr @cell(#000000) RTL_AND -attr @name hazard_stall_i -pg 1 -lvl 10 -x 4740 -y 1268
load inst core|if_flush_i RTL_OR1 work -hier core -attr @cell(#000000) RTL_OR -attr @name if_flush_i -pg 1 -lvl 11 -x 4930 -y 1248
load net clk -pin DMEM clk -pin IMEM clk -port clk -pin core clk
netloc clk 1 0 3 20 140 340 1888 6950J
load net dmem_addr[0] -attr @rip dmem_addr[0] -pin DMEM addr[0] -pin core dmem_addr[0]
load net dmem_addr[10] -attr @rip dmem_addr[10] -pin DMEM addr[10] -pin core dmem_addr[10]
load net dmem_addr[11] -attr @rip dmem_addr[11] -pin DMEM addr[11] -pin core dmem_addr[11]
load net dmem_addr[12] -attr @rip dmem_addr[12] -pin DMEM addr[12] -pin core dmem_addr[12]
load net dmem_addr[13] -attr @rip dmem_addr[13] -pin DMEM addr[13] -pin core dmem_addr[13]
load net dmem_addr[14] -attr @rip dmem_addr[14] -pin DMEM addr[14] -pin core dmem_addr[14]
load net dmem_addr[15] -attr @rip dmem_addr[15] -pin DMEM addr[15] -pin core dmem_addr[15]
load net dmem_addr[16] -attr @rip dmem_addr[16] -pin DMEM addr[16] -pin core dmem_addr[16]
load net dmem_addr[17] -attr @rip dmem_addr[17] -pin DMEM addr[17] -pin core dmem_addr[17]
load net dmem_addr[18] -attr @rip dmem_addr[18] -pin DMEM addr[18] -pin core dmem_addr[18]
load net dmem_addr[19] -attr @rip dmem_addr[19] -pin DMEM addr[19] -pin core dmem_addr[19]
load net dmem_addr[1] -attr @rip dmem_addr[1] -pin DMEM addr[1] -pin core dmem_addr[1]
load net dmem_addr[20] -attr @rip dmem_addr[20] -pin DMEM addr[20] -pin core dmem_addr[20]
load net dmem_addr[21] -attr @rip dmem_addr[21] -pin DMEM addr[21] -pin core dmem_addr[21]
load net dmem_addr[22] -attr @rip dmem_addr[22] -pin DMEM addr[22] -pin core dmem_addr[22]
load net dmem_addr[23] -attr @rip dmem_addr[23] -pin DMEM addr[23] -pin core dmem_addr[23]
load net dmem_addr[24] -attr @rip dmem_addr[24] -pin DMEM addr[24] -pin core dmem_addr[24]
load net dmem_addr[25] -attr @rip dmem_addr[25] -pin DMEM addr[25] -pin core dmem_addr[25]
load net dmem_addr[26] -attr @rip dmem_addr[26] -pin DMEM addr[26] -pin core dmem_addr[26]
load net dmem_addr[27] -attr @rip dmem_addr[27] -pin DMEM addr[27] -pin core dmem_addr[27]
load net dmem_addr[28] -attr @rip dmem_addr[28] -pin DMEM addr[28] -pin core dmem_addr[28]
load net dmem_addr[29] -attr @rip dmem_addr[29] -pin DMEM addr[29] -pin core dmem_addr[29]
load net dmem_addr[2] -attr @rip dmem_addr[2] -pin DMEM addr[2] -pin core dmem_addr[2]
load net dmem_addr[30] -attr @rip dmem_addr[30] -pin DMEM addr[30] -pin core dmem_addr[30]
load net dmem_addr[31] -attr @rip dmem_addr[31] -pin DMEM addr[31] -pin core dmem_addr[31]
load net dmem_addr[3] -attr @rip dmem_addr[3] -pin DMEM addr[3] -pin core dmem_addr[3]
load net dmem_addr[4] -attr @rip dmem_addr[4] -pin DMEM addr[4] -pin core dmem_addr[4]
load net dmem_addr[5] -attr @rip dmem_addr[5] -pin DMEM addr[5] -pin core dmem_addr[5]
load net dmem_addr[6] -attr @rip dmem_addr[6] -pin DMEM addr[6] -pin core dmem_addr[6]
load net dmem_addr[7] -attr @rip dmem_addr[7] -pin DMEM addr[7] -pin core dmem_addr[7]
load net dmem_addr[8] -attr @rip dmem_addr[8] -pin DMEM addr[8] -pin core dmem_addr[8]
load net dmem_addr[9] -attr @rip dmem_addr[9] -pin DMEM addr[9] -pin core dmem_addr[9]
load net dmem_rdata[0] -attr @rip rdata[0] -pin DMEM rdata[0] -pin core dmem_rdata[0]
load net dmem_rdata[10] -attr @rip rdata[10] -pin DMEM rdata[10] -pin core dmem_rdata[10]
load net dmem_rdata[11] -attr @rip rdata[11] -pin DMEM rdata[11] -pin core dmem_rdata[11]
load net dmem_rdata[12] -attr @rip rdata[12] -pin DMEM rdata[12] -pin core dmem_rdata[12]
load net dmem_rdata[13] -attr @rip rdata[13] -pin DMEM rdata[13] -pin core dmem_rdata[13]
load net dmem_rdata[14] -attr @rip rdata[14] -pin DMEM rdata[14] -pin core dmem_rdata[14]
load net dmem_rdata[15] -attr @rip rdata[15] -pin DMEM rdata[15] -pin core dmem_rdata[15]
load net dmem_rdata[16] -attr @rip rdata[16] -pin DMEM rdata[16] -pin core dmem_rdata[16]
load net dmem_rdata[17] -attr @rip rdata[17] -pin DMEM rdata[17] -pin core dmem_rdata[17]
load net dmem_rdata[18] -attr @rip rdata[18] -pin DMEM rdata[18] -pin core dmem_rdata[18]
load net dmem_rdata[19] -attr @rip rdata[19] -pin DMEM rdata[19] -pin core dmem_rdata[19]
load net dmem_rdata[1] -attr @rip rdata[1] -pin DMEM rdata[1] -pin core dmem_rdata[1]
load net dmem_rdata[20] -attr @rip rdata[20] -pin DMEM rdata[20] -pin core dmem_rdata[20]
load net dmem_rdata[21] -attr @rip rdata[21] -pin DMEM rdata[21] -pin core dmem_rdata[21]
load net dmem_rdata[22] -attr @rip rdata[22] -pin DMEM rdata[22] -pin core dmem_rdata[22]
load net dmem_rdata[23] -attr @rip rdata[23] -pin DMEM rdata[23] -pin core dmem_rdata[23]
load net dmem_rdata[24] -attr @rip rdata[24] -pin DMEM rdata[24] -pin core dmem_rdata[24]
load net dmem_rdata[25] -attr @rip rdata[25] -pin DMEM rdata[25] -pin core dmem_rdata[25]
load net dmem_rdata[26] -attr @rip rdata[26] -pin DMEM rdata[26] -pin core dmem_rdata[26]
load net dmem_rdata[27] -attr @rip rdata[27] -pin DMEM rdata[27] -pin core dmem_rdata[27]
load net dmem_rdata[28] -attr @rip rdata[28] -pin DMEM rdata[28] -pin core dmem_rdata[28]
load net dmem_rdata[29] -attr @rip rdata[29] -pin DMEM rdata[29] -pin core dmem_rdata[29]
load net dmem_rdata[2] -attr @rip rdata[2] -pin DMEM rdata[2] -pin core dmem_rdata[2]
load net dmem_rdata[30] -attr @rip rdata[30] -pin DMEM rdata[30] -pin core dmem_rdata[30]
load net dmem_rdata[31] -attr @rip rdata[31] -pin DMEM rdata[31] -pin core dmem_rdata[31]
load net dmem_rdata[3] -attr @rip rdata[3] -pin DMEM rdata[3] -pin core dmem_rdata[3]
load net dmem_rdata[4] -attr @rip rdata[4] -pin DMEM rdata[4] -pin core dmem_rdata[4]
load net dmem_rdata[5] -attr @rip rdata[5] -pin DMEM rdata[5] -pin core dmem_rdata[5]
load net dmem_rdata[6] -attr @rip rdata[6] -pin DMEM rdata[6] -pin core dmem_rdata[6]
load net dmem_rdata[7] -attr @rip rdata[7] -pin DMEM rdata[7] -pin core dmem_rdata[7]
load net dmem_rdata[8] -attr @rip rdata[8] -pin DMEM rdata[8] -pin core dmem_rdata[8]
load net dmem_rdata[9] -attr @rip rdata[9] -pin DMEM rdata[9] -pin core dmem_rdata[9]
load net dmem_wdata[0] -attr @rip dmem_wdata[0] -pin DMEM wdata[0] -pin core dmem_wdata[0]
load net dmem_wdata[10] -attr @rip dmem_wdata[10] -pin DMEM wdata[10] -pin core dmem_wdata[10]
load net dmem_wdata[11] -attr @rip dmem_wdata[11] -pin DMEM wdata[11] -pin core dmem_wdata[11]
load net dmem_wdata[12] -attr @rip dmem_wdata[12] -pin DMEM wdata[12] -pin core dmem_wdata[12]
load net dmem_wdata[13] -attr @rip dmem_wdata[13] -pin DMEM wdata[13] -pin core dmem_wdata[13]
load net dmem_wdata[14] -attr @rip dmem_wdata[14] -pin DMEM wdata[14] -pin core dmem_wdata[14]
load net dmem_wdata[15] -attr @rip dmem_wdata[15] -pin DMEM wdata[15] -pin core dmem_wdata[15]
load net dmem_wdata[16] -attr @rip dmem_wdata[16] -pin DMEM wdata[16] -pin core dmem_wdata[16]
load net dmem_wdata[17] -attr @rip dmem_wdata[17] -pin DMEM wdata[17] -pin core dmem_wdata[17]
load net dmem_wdata[18] -attr @rip dmem_wdata[18] -pin DMEM wdata[18] -pin core dmem_wdata[18]
load net dmem_wdata[19] -attr @rip dmem_wdata[19] -pin DMEM wdata[19] -pin core dmem_wdata[19]
load net dmem_wdata[1] -attr @rip dmem_wdata[1] -pin DMEM wdata[1] -pin core dmem_wdata[1]
load net dmem_wdata[20] -attr @rip dmem_wdata[20] -pin DMEM wdata[20] -pin core dmem_wdata[20]
load net dmem_wdata[21] -attr @rip dmem_wdata[21] -pin DMEM wdata[21] -pin core dmem_wdata[21]
load net dmem_wdata[22] -attr @rip dmem_wdata[22] -pin DMEM wdata[22] -pin core dmem_wdata[22]
load net dmem_wdata[23] -attr @rip dmem_wdata[23] -pin DMEM wdata[23] -pin core dmem_wdata[23]
load net dmem_wdata[24] -attr @rip dmem_wdata[24] -pin DMEM wdata[24] -pin core dmem_wdata[24]
load net dmem_wdata[25] -attr @rip dmem_wdata[25] -pin DMEM wdata[25] -pin core dmem_wdata[25]
load net dmem_wdata[26] -attr @rip dmem_wdata[26] -pin DMEM wdata[26] -pin core dmem_wdata[26]
load net dmem_wdata[27] -attr @rip dmem_wdata[27] -pin DMEM wdata[27] -pin core dmem_wdata[27]
load net dmem_wdata[28] -attr @rip dmem_wdata[28] -pin DMEM wdata[28] -pin core dmem_wdata[28]
load net dmem_wdata[29] -attr @rip dmem_wdata[29] -pin DMEM wdata[29] -pin core dmem_wdata[29]
load net dmem_wdata[2] -attr @rip dmem_wdata[2] -pin DMEM wdata[2] -pin core dmem_wdata[2]
load net dmem_wdata[30] -attr @rip dmem_wdata[30] -pin DMEM wdata[30] -pin core dmem_wdata[30]
load net dmem_wdata[31] -attr @rip dmem_wdata[31] -pin DMEM wdata[31] -pin core dmem_wdata[31]
load net dmem_wdata[3] -attr @rip dmem_wdata[3] -pin DMEM wdata[3] -pin core dmem_wdata[3]
load net dmem_wdata[4] -attr @rip dmem_wdata[4] -pin DMEM wdata[4] -pin core dmem_wdata[4]
load net dmem_wdata[5] -attr @rip dmem_wdata[5] -pin DMEM wdata[5] -pin core dmem_wdata[5]
load net dmem_wdata[6] -attr @rip dmem_wdata[6] -pin DMEM wdata[6] -pin core dmem_wdata[6]
load net dmem_wdata[7] -attr @rip dmem_wdata[7] -pin DMEM wdata[7] -pin core dmem_wdata[7]
load net dmem_wdata[8] -attr @rip dmem_wdata[8] -pin DMEM wdata[8] -pin core dmem_wdata[8]
load net dmem_wdata[9] -attr @rip dmem_wdata[9] -pin DMEM wdata[9] -pin core dmem_wdata[9]
load net dmem_we -pin DMEM we -pin core dmem_we
netloc dmem_we 1 2 1 7010 260n
load net imem_addr[0] -attr @rip imem_addr[0] -pin IMEM addr[0] -pin core imem_addr[0]
load net imem_addr[10] -attr @rip imem_addr[10] -pin IMEM addr[10] -pin core imem_addr[10]
load net imem_addr[11] -attr @rip imem_addr[11] -pin IMEM addr[11] -pin core imem_addr[11]
load net imem_addr[12] -attr @rip imem_addr[12] -pin IMEM addr[12] -pin core imem_addr[12]
load net imem_addr[13] -attr @rip imem_addr[13] -pin IMEM addr[13] -pin core imem_addr[13]
load net imem_addr[14] -attr @rip imem_addr[14] -pin IMEM addr[14] -pin core imem_addr[14]
load net imem_addr[15] -attr @rip imem_addr[15] -pin IMEM addr[15] -pin core imem_addr[15]
load net imem_addr[16] -attr @rip imem_addr[16] -pin IMEM addr[16] -pin core imem_addr[16]
load net imem_addr[17] -attr @rip imem_addr[17] -pin IMEM addr[17] -pin core imem_addr[17]
load net imem_addr[18] -attr @rip imem_addr[18] -pin IMEM addr[18] -pin core imem_addr[18]
load net imem_addr[19] -attr @rip imem_addr[19] -pin IMEM addr[19] -pin core imem_addr[19]
load net imem_addr[1] -attr @rip imem_addr[1] -pin IMEM addr[1] -pin core imem_addr[1]
load net imem_addr[20] -attr @rip imem_addr[20] -pin IMEM addr[20] -pin core imem_addr[20]
load net imem_addr[21] -attr @rip imem_addr[21] -pin IMEM addr[21] -pin core imem_addr[21]
load net imem_addr[22] -attr @rip imem_addr[22] -pin IMEM addr[22] -pin core imem_addr[22]
load net imem_addr[23] -attr @rip imem_addr[23] -pin IMEM addr[23] -pin core imem_addr[23]
load net imem_addr[24] -attr @rip imem_addr[24] -pin IMEM addr[24] -pin core imem_addr[24]
load net imem_addr[25] -attr @rip imem_addr[25] -pin IMEM addr[25] -pin core imem_addr[25]
load net imem_addr[26] -attr @rip imem_addr[26] -pin IMEM addr[26] -pin core imem_addr[26]
load net imem_addr[27] -attr @rip imem_addr[27] -pin IMEM addr[27] -pin core imem_addr[27]
load net imem_addr[28] -attr @rip imem_addr[28] -pin IMEM addr[28] -pin core imem_addr[28]
load net imem_addr[29] -attr @rip imem_addr[29] -pin IMEM addr[29] -pin core imem_addr[29]
load net imem_addr[2] -attr @rip imem_addr[2] -pin IMEM addr[2] -pin core imem_addr[2]
load net imem_addr[30] -attr @rip imem_addr[30] -pin IMEM addr[30] -pin core imem_addr[30]
load net imem_addr[31] -attr @rip imem_addr[31] -pin IMEM addr[31] -pin core imem_addr[31]
load net imem_addr[3] -attr @rip imem_addr[3] -pin IMEM addr[3] -pin core imem_addr[3]
load net imem_addr[4] -attr @rip imem_addr[4] -pin IMEM addr[4] -pin core imem_addr[4]
load net imem_addr[5] -attr @rip imem_addr[5] -pin IMEM addr[5] -pin core imem_addr[5]
load net imem_addr[6] -attr @rip imem_addr[6] -pin IMEM addr[6] -pin core imem_addr[6]
load net imem_addr[7] -attr @rip imem_addr[7] -pin IMEM addr[7] -pin core imem_addr[7]
load net imem_addr[8] -attr @rip imem_addr[8] -pin IMEM addr[8] -pin core imem_addr[8]
load net imem_addr[9] -attr @rip imem_addr[9] -pin IMEM addr[9] -pin core imem_addr[9]
load net imem_rdata[0] -attr @rip rdata[0] -pin IMEM rdata[0] -pin core imem_rdata[0]
load net imem_rdata[10] -attr @rip rdata[10] -pin IMEM rdata[10] -pin core imem_rdata[10]
load net imem_rdata[11] -attr @rip rdata[11] -pin IMEM rdata[11] -pin core imem_rdata[11]
load net imem_rdata[12] -attr @rip rdata[12] -pin IMEM rdata[12] -pin core imem_rdata[12]
load net imem_rdata[13] -attr @rip rdata[13] -pin IMEM rdata[13] -pin core imem_rdata[13]
load net imem_rdata[14] -attr @rip rdata[14] -pin IMEM rdata[14] -pin core imem_rdata[14]
load net imem_rdata[15] -attr @rip rdata[15] -pin IMEM rdata[15] -pin core imem_rdata[15]
load net imem_rdata[16] -attr @rip rdata[16] -pin IMEM rdata[16] -pin core imem_rdata[16]
load net imem_rdata[17] -attr @rip rdata[17] -pin IMEM rdata[17] -pin core imem_rdata[17]
load net imem_rdata[18] -attr @rip rdata[18] -pin IMEM rdata[18] -pin core imem_rdata[18]
load net imem_rdata[19] -attr @rip rdata[19] -pin IMEM rdata[19] -pin core imem_rdata[19]
load net imem_rdata[1] -attr @rip rdata[1] -pin IMEM rdata[1] -pin core imem_rdata[1]
load net imem_rdata[20] -attr @rip rdata[20] -pin IMEM rdata[20] -pin core imem_rdata[20]
load net imem_rdata[21] -attr @rip rdata[21] -pin IMEM rdata[21] -pin core imem_rdata[21]
load net imem_rdata[22] -attr @rip rdata[22] -pin IMEM rdata[22] -pin core imem_rdata[22]
load net imem_rdata[23] -attr @rip rdata[23] -pin IMEM rdata[23] -pin core imem_rdata[23]
load net imem_rdata[24] -attr @rip rdata[24] -pin IMEM rdata[24] -pin core imem_rdata[24]
load net imem_rdata[25] -attr @rip rdata[25] -pin IMEM rdata[25] -pin core imem_rdata[25]
load net imem_rdata[26] -attr @rip rdata[26] -pin IMEM rdata[26] -pin core imem_rdata[26]
load net imem_rdata[27] -attr @rip rdata[27] -pin IMEM rdata[27] -pin core imem_rdata[27]
load net imem_rdata[28] -attr @rip rdata[28] -pin IMEM rdata[28] -pin core imem_rdata[28]
load net imem_rdata[29] -attr @rip rdata[29] -pin IMEM rdata[29] -pin core imem_rdata[29]
load net imem_rdata[2] -attr @rip rdata[2] -pin IMEM rdata[2] -pin core imem_rdata[2]
load net imem_rdata[30] -attr @rip rdata[30] -pin IMEM rdata[30] -pin core imem_rdata[30]
load net imem_rdata[31] -attr @rip rdata[31] -pin IMEM rdata[31] -pin core imem_rdata[31]
load net imem_rdata[3] -attr @rip rdata[3] -pin IMEM rdata[3] -pin core imem_rdata[3]
load net imem_rdata[4] -attr @rip rdata[4] -pin IMEM rdata[4] -pin core imem_rdata[4]
load net imem_rdata[5] -attr @rip rdata[5] -pin IMEM rdata[5] -pin core imem_rdata[5]
load net imem_rdata[6] -attr @rip rdata[6] -pin IMEM rdata[6] -pin core imem_rdata[6]
load net imem_rdata[7] -attr @rip rdata[7] -pin IMEM rdata[7] -pin core imem_rdata[7]
load net imem_rdata[8] -attr @rip rdata[8] -pin IMEM rdata[8] -pin core imem_rdata[8]
load net imem_rdata[9] -attr @rip rdata[9] -pin IMEM rdata[9] -pin core imem_rdata[9]
load net rst -pin DMEM rst -pin IMEM rst -pin core rst -port rst
netloc rst 1 0 3 40 160 300 1908 6990J
load net core|<const0> -ground -attr @name <const0> -pin core|CSR csr_we -pin core|CSR csr_addr[11] -pin core|CSR csr_addr[10] -pin core|CSR csr_addr[9] -pin core|CSR csr_addr[8] -pin core|CSR csr_addr[7] -pin core|CSR csr_addr[6] -pin core|CSR csr_addr[5] -pin core|CSR csr_addr[4] -pin core|CSR csr_addr[3] -pin core|CSR csr_addr[2] -pin core|CSR csr_addr[1] -pin core|CSR csr_addr[0] -pin core|CSR csr_wdata[31] -pin core|CSR csr_wdata[30] -pin core|CSR csr_wdata[29] -pin core|CSR csr_wdata[28] -pin core|CSR csr_wdata[27] -pin core|CSR csr_wdata[26] -pin core|CSR csr_wdata[25] -pin core|CSR csr_wdata[24] -pin core|CSR csr_wdata[23] -pin core|CSR csr_wdata[22] -pin core|CSR csr_wdata[21] -pin core|CSR csr_wdata[20] -pin core|CSR csr_wdata[19] -pin core|CSR csr_wdata[18] -pin core|CSR csr_wdata[17] -pin core|CSR csr_wdata[16] -pin core|CSR csr_wdata[15] -pin core|CSR csr_wdata[14] -pin core|CSR csr_wdata[13] -pin core|CSR csr_wdata[12] -pin core|CSR csr_wdata[11] -pin core|CSR csr_wdata[10] -pin core|CSR csr_wdata[9] -pin core|CSR csr_wdata[8] -pin core|CSR csr_wdata[7] -pin core|CSR csr_wdata[6] -pin core|CSR csr_wdata[5] -pin core|CSR csr_wdata[4] -pin core|CSR csr_wdata[3] -pin core|CSR csr_wdata[2] -pin core|CSR csr_wdata[1] -pin core|CSR csr_wdata[0] -pin core|CSR trap_cause[31] -pin core|CSR trap_cause[30] -pin core|CSR trap_cause[29] -pin core|CSR trap_cause[28] -pin core|CSR trap_cause[27] -pin core|CSR trap_cause[26] -pin core|CSR trap_cause[25] -pin core|CSR trap_cause[24] -pin core|CSR trap_cause[23] -pin core|CSR trap_cause[22] -pin core|CSR trap_cause[21] -pin core|CSR trap_cause[20] -pin core|CSR trap_cause[19] -pin core|CSR trap_cause[18] -pin core|CSR trap_cause[17] -pin core|CSR trap_cause[16] -pin core|CSR trap_cause[15] -pin core|CSR trap_cause[14] -pin core|CSR trap_cause[13] -pin core|CSR trap_cause[12] -pin core|CSR trap_cause[11] -pin core|CSR trap_cause[10] -pin core|CSR trap_cause[9] -pin core|CSR trap_cause[8] -pin core|CSR trap_cause[7] -pin core|CSR trap_cause[6] -pin core|CSR trap_cause[5] -pin core|CSR trap_cause[4] -pin core|CSR trap_cause[2] -pin core|hazard_stall1_i I1[4] -pin core|hazard_stall1_i I1[3] -pin core|hazard_stall1_i I1[2] -pin core|hazard_stall1_i I1[1] -pin core|hazard_stall1_i I1[0]
load net core|<const1> -power -attr @name <const1> -pin core|CSR trap_cause[3] -pin core|CSR trap_cause[1] -pin core|CSR trap_cause[0]
load net core|branch_target[0] -attr @rip(#000000) branch_target[0] -attr @name branch_target[0] -pin core|EX branch_target[0] -pin core|IF branch_target[0]
load net core|branch_target[10] -attr @rip(#000000) branch_target[10] -attr @name branch_target[10] -pin core|EX branch_target[10] -pin core|IF branch_target[10]
load net core|branch_target[11] -attr @rip(#000000) branch_target[11] -attr @name branch_target[11] -pin core|EX branch_target[11] -pin core|IF branch_target[11]
load net core|branch_target[12] -attr @rip(#000000) branch_target[12] -attr @name branch_target[12] -pin core|EX branch_target[12] -pin core|IF branch_target[12]
load net core|branch_target[13] -attr @rip(#000000) branch_target[13] -attr @name branch_target[13] -pin core|EX branch_target[13] -pin core|IF branch_target[13]
load net core|branch_target[14] -attr @rip(#000000) branch_target[14] -attr @name branch_target[14] -pin core|EX branch_target[14] -pin core|IF branch_target[14]
load net core|branch_target[15] -attr @rip(#000000) branch_target[15] -attr @name branch_target[15] -pin core|EX branch_target[15] -pin core|IF branch_target[15]
load net core|branch_target[16] -attr @rip(#000000) branch_target[16] -attr @name branch_target[16] -pin core|EX branch_target[16] -pin core|IF branch_target[16]
load net core|branch_target[17] -attr @rip(#000000) branch_target[17] -attr @name branch_target[17] -pin core|EX branch_target[17] -pin core|IF branch_target[17]
load net core|branch_target[18] -attr @rip(#000000) branch_target[18] -attr @name branch_target[18] -pin core|EX branch_target[18] -pin core|IF branch_target[18]
load net core|branch_target[19] -attr @rip(#000000) branch_target[19] -attr @name branch_target[19] -pin core|EX branch_target[19] -pin core|IF branch_target[19]
load net core|branch_target[1] -attr @rip(#000000) branch_target[1] -attr @name branch_target[1] -pin core|EX branch_target[1] -pin core|IF branch_target[1]
load net core|branch_target[20] -attr @rip(#000000) branch_target[20] -attr @name branch_target[20] -pin core|EX branch_target[20] -pin core|IF branch_target[20]
load net core|branch_target[21] -attr @rip(#000000) branch_target[21] -attr @name branch_target[21] -pin core|EX branch_target[21] -pin core|IF branch_target[21]
load net core|branch_target[22] -attr @rip(#000000) branch_target[22] -attr @name branch_target[22] -pin core|EX branch_target[22] -pin core|IF branch_target[22]
load net core|branch_target[23] -attr @rip(#000000) branch_target[23] -attr @name branch_target[23] -pin core|EX branch_target[23] -pin core|IF branch_target[23]
load net core|branch_target[24] -attr @rip(#000000) branch_target[24] -attr @name branch_target[24] -pin core|EX branch_target[24] -pin core|IF branch_target[24]
load net core|branch_target[25] -attr @rip(#000000) branch_target[25] -attr @name branch_target[25] -pin core|EX branch_target[25] -pin core|IF branch_target[25]
load net core|branch_target[26] -attr @rip(#000000) branch_target[26] -attr @name branch_target[26] -pin core|EX branch_target[26] -pin core|IF branch_target[26]
load net core|branch_target[27] -attr @rip(#000000) branch_target[27] -attr @name branch_target[27] -pin core|EX branch_target[27] -pin core|IF branch_target[27]
load net core|branch_target[28] -attr @rip(#000000) branch_target[28] -attr @name branch_target[28] -pin core|EX branch_target[28] -pin core|IF branch_target[28]
load net core|branch_target[29] -attr @rip(#000000) branch_target[29] -attr @name branch_target[29] -pin core|EX branch_target[29] -pin core|IF branch_target[29]
load net core|branch_target[2] -attr @rip(#000000) branch_target[2] -attr @name branch_target[2] -pin core|EX branch_target[2] -pin core|IF branch_target[2]
load net core|branch_target[30] -attr @rip(#000000) branch_target[30] -attr @name branch_target[30] -pin core|EX branch_target[30] -pin core|IF branch_target[30]
load net core|branch_target[31] -attr @rip(#000000) branch_target[31] -attr @name branch_target[31] -pin core|EX branch_target[31] -pin core|IF branch_target[31]
load net core|branch_target[3] -attr @rip(#000000) branch_target[3] -attr @name branch_target[3] -pin core|EX branch_target[3] -pin core|IF branch_target[3]
load net core|branch_target[4] -attr @rip(#000000) branch_target[4] -attr @name branch_target[4] -pin core|EX branch_target[4] -pin core|IF branch_target[4]
load net core|branch_target[5] -attr @rip(#000000) branch_target[5] -attr @name branch_target[5] -pin core|EX branch_target[5] -pin core|IF branch_target[5]
load net core|branch_target[6] -attr @rip(#000000) branch_target[6] -attr @name branch_target[6] -pin core|EX branch_target[6] -pin core|IF branch_target[6]
load net core|branch_target[7] -attr @rip(#000000) branch_target[7] -attr @name branch_target[7] -pin core|EX branch_target[7] -pin core|IF branch_target[7]
load net core|branch_target[8] -attr @rip(#000000) branch_target[8] -attr @name branch_target[8] -pin core|EX branch_target[8] -pin core|IF branch_target[8]
load net core|branch_target[9] -attr @rip(#000000) branch_target[9] -attr @name branch_target[9] -pin core|EX branch_target[9] -pin core|IF branch_target[9]
load net core|clk -attr @name clk -hierPin core clk -pin core|CSR clk -pin core|EX_MEM clk -pin core|ID clk -pin core|ID_EX clk -pin core|IF clk -pin core|IF_ID clk -pin core|MEM clk -pin core|MEM_WB clk
netloc core|clk 1 0 14 540 1198 NJ 1198 NJ 1198 1970J 1018 2470 1058 3020 1058 3420 1258 4030 318 NJ 318 NJ 318 NJ 318 5140 818 5760 578 6330J
load net core|csr_trap_enter -attr @name csr_trap_enter -pin core|CSR trap_enter -pin core|ID is_ecall
netloc core|csr_trap_enter 1 7 1 3910 458n
load net core|csr_trap_return -attr @name csr_trap_return -pin core|CSR trap_return -pin core|ID is_mret
netloc core|csr_trap_return 1 7 1 3890 478n
load net core|dmem_addr[0] -attr @rip(#000000) dmem_addr[0] -attr @name dmem_addr[0] -hierPin core dmem_addr[0] -pin core|MEM dmem_addr[0]
load net core|dmem_addr[10] -attr @rip(#000000) dmem_addr[10] -attr @name dmem_addr[10] -hierPin core dmem_addr[10] -pin core|MEM dmem_addr[10]
load net core|dmem_addr[11] -attr @rip(#000000) dmem_addr[11] -attr @name dmem_addr[11] -hierPin core dmem_addr[11] -pin core|MEM dmem_addr[11]
load net core|dmem_addr[12] -attr @rip(#000000) dmem_addr[12] -attr @name dmem_addr[12] -hierPin core dmem_addr[12] -pin core|MEM dmem_addr[12]
load net core|dmem_addr[13] -attr @rip(#000000) dmem_addr[13] -attr @name dmem_addr[13] -hierPin core dmem_addr[13] -pin core|MEM dmem_addr[13]
load net core|dmem_addr[14] -attr @rip(#000000) dmem_addr[14] -attr @name dmem_addr[14] -hierPin core dmem_addr[14] -pin core|MEM dmem_addr[14]
load net core|dmem_addr[15] -attr @rip(#000000) dmem_addr[15] -attr @name dmem_addr[15] -hierPin core dmem_addr[15] -pin core|MEM dmem_addr[15]
load net core|dmem_addr[16] -attr @rip(#000000) dmem_addr[16] -attr @name dmem_addr[16] -hierPin core dmem_addr[16] -pin core|MEM dmem_addr[16]
load net core|dmem_addr[17] -attr @rip(#000000) dmem_addr[17] -attr @name dmem_addr[17] -hierPin core dmem_addr[17] -pin core|MEM dmem_addr[17]
load net core|dmem_addr[18] -attr @rip(#000000) dmem_addr[18] -attr @name dmem_addr[18] -hierPin core dmem_addr[18] -pin core|MEM dmem_addr[18]
load net core|dmem_addr[19] -attr @rip(#000000) dmem_addr[19] -attr @name dmem_addr[19] -hierPin core dmem_addr[19] -pin core|MEM dmem_addr[19]
load net core|dmem_addr[1] -attr @rip(#000000) dmem_addr[1] -attr @name dmem_addr[1] -hierPin core dmem_addr[1] -pin core|MEM dmem_addr[1]
load net core|dmem_addr[20] -attr @rip(#000000) dmem_addr[20] -attr @name dmem_addr[20] -hierPin core dmem_addr[20] -pin core|MEM dmem_addr[20]
load net core|dmem_addr[21] -attr @rip(#000000) dmem_addr[21] -attr @name dmem_addr[21] -hierPin core dmem_addr[21] -pin core|MEM dmem_addr[21]
load net core|dmem_addr[22] -attr @rip(#000000) dmem_addr[22] -attr @name dmem_addr[22] -hierPin core dmem_addr[22] -pin core|MEM dmem_addr[22]
load net core|dmem_addr[23] -attr @rip(#000000) dmem_addr[23] -attr @name dmem_addr[23] -hierPin core dmem_addr[23] -pin core|MEM dmem_addr[23]
load net core|dmem_addr[24] -attr @rip(#000000) dmem_addr[24] -attr @name dmem_addr[24] -hierPin core dmem_addr[24] -pin core|MEM dmem_addr[24]
load net core|dmem_addr[25] -attr @rip(#000000) dmem_addr[25] -attr @name dmem_addr[25] -hierPin core dmem_addr[25] -pin core|MEM dmem_addr[25]
load net core|dmem_addr[26] -attr @rip(#000000) dmem_addr[26] -attr @name dmem_addr[26] -hierPin core dmem_addr[26] -pin core|MEM dmem_addr[26]
load net core|dmem_addr[27] -attr @rip(#000000) dmem_addr[27] -attr @name dmem_addr[27] -hierPin core dmem_addr[27] -pin core|MEM dmem_addr[27]
load net core|dmem_addr[28] -attr @rip(#000000) dmem_addr[28] -attr @name dmem_addr[28] -hierPin core dmem_addr[28] -pin core|MEM dmem_addr[28]
load net core|dmem_addr[29] -attr @rip(#000000) dmem_addr[29] -attr @name dmem_addr[29] -hierPin core dmem_addr[29] -pin core|MEM dmem_addr[29]
load net core|dmem_addr[2] -attr @rip(#000000) dmem_addr[2] -attr @name dmem_addr[2] -hierPin core dmem_addr[2] -pin core|MEM dmem_addr[2]
load net core|dmem_addr[30] -attr @rip(#000000) dmem_addr[30] -attr @name dmem_addr[30] -hierPin core dmem_addr[30] -pin core|MEM dmem_addr[30]
load net core|dmem_addr[31] -attr @rip(#000000) dmem_addr[31] -attr @name dmem_addr[31] -hierPin core dmem_addr[31] -pin core|MEM dmem_addr[31]
load net core|dmem_addr[3] -attr @rip(#000000) dmem_addr[3] -attr @name dmem_addr[3] -hierPin core dmem_addr[3] -pin core|MEM dmem_addr[3]
load net core|dmem_addr[4] -attr @rip(#000000) dmem_addr[4] -attr @name dmem_addr[4] -hierPin core dmem_addr[4] -pin core|MEM dmem_addr[4]
load net core|dmem_addr[5] -attr @rip(#000000) dmem_addr[5] -attr @name dmem_addr[5] -hierPin core dmem_addr[5] -pin core|MEM dmem_addr[5]
load net core|dmem_addr[6] -attr @rip(#000000) dmem_addr[6] -attr @name dmem_addr[6] -hierPin core dmem_addr[6] -pin core|MEM dmem_addr[6]
load net core|dmem_addr[7] -attr @rip(#000000) dmem_addr[7] -attr @name dmem_addr[7] -hierPin core dmem_addr[7] -pin core|MEM dmem_addr[7]
load net core|dmem_addr[8] -attr @rip(#000000) dmem_addr[8] -attr @name dmem_addr[8] -hierPin core dmem_addr[8] -pin core|MEM dmem_addr[8]
load net core|dmem_addr[9] -attr @rip(#000000) dmem_addr[9] -attr @name dmem_addr[9] -hierPin core dmem_addr[9] -pin core|MEM dmem_addr[9]
load net core|dmem_rdata[0] -attr @rip(#000000) dmem_rdata[0] -attr @name dmem_rdata[0] -hierPin core dmem_rdata[0] -pin core|MEM dmem_rdata[0]
load net core|dmem_rdata[10] -attr @rip(#000000) dmem_rdata[10] -attr @name dmem_rdata[10] -hierPin core dmem_rdata[10] -pin core|MEM dmem_rdata[10]
load net core|dmem_rdata[11] -attr @rip(#000000) dmem_rdata[11] -attr @name dmem_rdata[11] -hierPin core dmem_rdata[11] -pin core|MEM dmem_rdata[11]
load net core|dmem_rdata[12] -attr @rip(#000000) dmem_rdata[12] -attr @name dmem_rdata[12] -hierPin core dmem_rdata[12] -pin core|MEM dmem_rdata[12]
load net core|dmem_rdata[13] -attr @rip(#000000) dmem_rdata[13] -attr @name dmem_rdata[13] -hierPin core dmem_rdata[13] -pin core|MEM dmem_rdata[13]
load net core|dmem_rdata[14] -attr @rip(#000000) dmem_rdata[14] -attr @name dmem_rdata[14] -hierPin core dmem_rdata[14] -pin core|MEM dmem_rdata[14]
load net core|dmem_rdata[15] -attr @rip(#000000) dmem_rdata[15] -attr @name dmem_rdata[15] -hierPin core dmem_rdata[15] -pin core|MEM dmem_rdata[15]
load net core|dmem_rdata[16] -attr @rip(#000000) dmem_rdata[16] -attr @name dmem_rdata[16] -hierPin core dmem_rdata[16] -pin core|MEM dmem_rdata[16]
load net core|dmem_rdata[17] -attr @rip(#000000) dmem_rdata[17] -attr @name dmem_rdata[17] -hierPin core dmem_rdata[17] -pin core|MEM dmem_rdata[17]
load net core|dmem_rdata[18] -attr @rip(#000000) dmem_rdata[18] -attr @name dmem_rdata[18] -hierPin core dmem_rdata[18] -pin core|MEM dmem_rdata[18]
load net core|dmem_rdata[19] -attr @rip(#000000) dmem_rdata[19] -attr @name dmem_rdata[19] -hierPin core dmem_rdata[19] -pin core|MEM dmem_rdata[19]
load net core|dmem_rdata[1] -attr @rip(#000000) dmem_rdata[1] -attr @name dmem_rdata[1] -hierPin core dmem_rdata[1] -pin core|MEM dmem_rdata[1]
load net core|dmem_rdata[20] -attr @rip(#000000) dmem_rdata[20] -attr @name dmem_rdata[20] -hierPin core dmem_rdata[20] -pin core|MEM dmem_rdata[20]
load net core|dmem_rdata[21] -attr @rip(#000000) dmem_rdata[21] -attr @name dmem_rdata[21] -hierPin core dmem_rdata[21] -pin core|MEM dmem_rdata[21]
load net core|dmem_rdata[22] -attr @rip(#000000) dmem_rdata[22] -attr @name dmem_rdata[22] -hierPin core dmem_rdata[22] -pin core|MEM dmem_rdata[22]
load net core|dmem_rdata[23] -attr @rip(#000000) dmem_rdata[23] -attr @name dmem_rdata[23] -hierPin core dmem_rdata[23] -pin core|MEM dmem_rdata[23]
load net core|dmem_rdata[24] -attr @rip(#000000) dmem_rdata[24] -attr @name dmem_rdata[24] -hierPin core dmem_rdata[24] -pin core|MEM dmem_rdata[24]
load net core|dmem_rdata[25] -attr @rip(#000000) dmem_rdata[25] -attr @name dmem_rdata[25] -hierPin core dmem_rdata[25] -pin core|MEM dmem_rdata[25]
load net core|dmem_rdata[26] -attr @rip(#000000) dmem_rdata[26] -attr @name dmem_rdata[26] -hierPin core dmem_rdata[26] -pin core|MEM dmem_rdata[26]
load net core|dmem_rdata[27] -attr @rip(#000000) dmem_rdata[27] -attr @name dmem_rdata[27] -hierPin core dmem_rdata[27] -pin core|MEM dmem_rdata[27]
load net core|dmem_rdata[28] -attr @rip(#000000) dmem_rdata[28] -attr @name dmem_rdata[28] -hierPin core dmem_rdata[28] -pin core|MEM dmem_rdata[28]
load net core|dmem_rdata[29] -attr @rip(#000000) dmem_rdata[29] -attr @name dmem_rdata[29] -hierPin core dmem_rdata[29] -pin core|MEM dmem_rdata[29]
load net core|dmem_rdata[2] -attr @rip(#000000) dmem_rdata[2] -attr @name dmem_rdata[2] -hierPin core dmem_rdata[2] -pin core|MEM dmem_rdata[2]
load net core|dmem_rdata[30] -attr @rip(#000000) dmem_rdata[30] -attr @name dmem_rdata[30] -hierPin core dmem_rdata[30] -pin core|MEM dmem_rdata[30]
load net core|dmem_rdata[31] -attr @rip(#000000) dmem_rdata[31] -attr @name dmem_rdata[31] -hierPin core dmem_rdata[31] -pin core|MEM dmem_rdata[31]
load net core|dmem_rdata[3] -attr @rip(#000000) dmem_rdata[3] -attr @name dmem_rdata[3] -hierPin core dmem_rdata[3] -pin core|MEM dmem_rdata[3]
load net core|dmem_rdata[4] -attr @rip(#000000) dmem_rdata[4] -attr @name dmem_rdata[4] -hierPin core dmem_rdata[4] -pin core|MEM dmem_rdata[4]
load net core|dmem_rdata[5] -attr @rip(#000000) dmem_rdata[5] -attr @name dmem_rdata[5] -hierPin core dmem_rdata[5] -pin core|MEM dmem_rdata[5]
load net core|dmem_rdata[6] -attr @rip(#000000) dmem_rdata[6] -attr @name dmem_rdata[6] -hierPin core dmem_rdata[6] -pin core|MEM dmem_rdata[6]
load net core|dmem_rdata[7] -attr @rip(#000000) dmem_rdata[7] -attr @name dmem_rdata[7] -hierPin core dmem_rdata[7] -pin core|MEM dmem_rdata[7]
load net core|dmem_rdata[8] -attr @rip(#000000) dmem_rdata[8] -attr @name dmem_rdata[8] -hierPin core dmem_rdata[8] -pin core|MEM dmem_rdata[8]
load net core|dmem_rdata[9] -attr @rip(#000000) dmem_rdata[9] -attr @name dmem_rdata[9] -hierPin core dmem_rdata[9] -pin core|MEM dmem_rdata[9]
load net core|dmem_wdata[0] -attr @rip(#000000) dmem_wdata[0] -attr @name dmem_wdata[0] -hierPin core dmem_wdata[0] -pin core|MEM dmem_wdata[0]
load net core|dmem_wdata[10] -attr @rip(#000000) dmem_wdata[10] -attr @name dmem_wdata[10] -hierPin core dmem_wdata[10] -pin core|MEM dmem_wdata[10]
load net core|dmem_wdata[11] -attr @rip(#000000) dmem_wdata[11] -attr @name dmem_wdata[11] -hierPin core dmem_wdata[11] -pin core|MEM dmem_wdata[11]
load net core|dmem_wdata[12] -attr @rip(#000000) dmem_wdata[12] -attr @name dmem_wdata[12] -hierPin core dmem_wdata[12] -pin core|MEM dmem_wdata[12]
load net core|dmem_wdata[13] -attr @rip(#000000) dmem_wdata[13] -attr @name dmem_wdata[13] -hierPin core dmem_wdata[13] -pin core|MEM dmem_wdata[13]
load net core|dmem_wdata[14] -attr @rip(#000000) dmem_wdata[14] -attr @name dmem_wdata[14] -hierPin core dmem_wdata[14] -pin core|MEM dmem_wdata[14]
load net core|dmem_wdata[15] -attr @rip(#000000) dmem_wdata[15] -attr @name dmem_wdata[15] -hierPin core dmem_wdata[15] -pin core|MEM dmem_wdata[15]
load net core|dmem_wdata[16] -attr @rip(#000000) dmem_wdata[16] -attr @name dmem_wdata[16] -hierPin core dmem_wdata[16] -pin core|MEM dmem_wdata[16]
load net core|dmem_wdata[17] -attr @rip(#000000) dmem_wdata[17] -attr @name dmem_wdata[17] -hierPin core dmem_wdata[17] -pin core|MEM dmem_wdata[17]
load net core|dmem_wdata[18] -attr @rip(#000000) dmem_wdata[18] -attr @name dmem_wdata[18] -hierPin core dmem_wdata[18] -pin core|MEM dmem_wdata[18]
load net core|dmem_wdata[19] -attr @rip(#000000) dmem_wdata[19] -attr @name dmem_wdata[19] -hierPin core dmem_wdata[19] -pin core|MEM dmem_wdata[19]
load net core|dmem_wdata[1] -attr @rip(#000000) dmem_wdata[1] -attr @name dmem_wdata[1] -hierPin core dmem_wdata[1] -pin core|MEM dmem_wdata[1]
load net core|dmem_wdata[20] -attr @rip(#000000) dmem_wdata[20] -attr @name dmem_wdata[20] -hierPin core dmem_wdata[20] -pin core|MEM dmem_wdata[20]
load net core|dmem_wdata[21] -attr @rip(#000000) dmem_wdata[21] -attr @name dmem_wdata[21] -hierPin core dmem_wdata[21] -pin core|MEM dmem_wdata[21]
load net core|dmem_wdata[22] -attr @rip(#000000) dmem_wdata[22] -attr @name dmem_wdata[22] -hierPin core dmem_wdata[22] -pin core|MEM dmem_wdata[22]
load net core|dmem_wdata[23] -attr @rip(#000000) dmem_wdata[23] -attr @name dmem_wdata[23] -hierPin core dmem_wdata[23] -pin core|MEM dmem_wdata[23]
load net core|dmem_wdata[24] -attr @rip(#000000) dmem_wdata[24] -attr @name dmem_wdata[24] -hierPin core dmem_wdata[24] -pin core|MEM dmem_wdata[24]
load net core|dmem_wdata[25] -attr @rip(#000000) dmem_wdata[25] -attr @name dmem_wdata[25] -hierPin core dmem_wdata[25] -pin core|MEM dmem_wdata[25]
load net core|dmem_wdata[26] -attr @rip(#000000) dmem_wdata[26] -attr @name dmem_wdata[26] -hierPin core dmem_wdata[26] -pin core|MEM dmem_wdata[26]
load net core|dmem_wdata[27] -attr @rip(#000000) dmem_wdata[27] -attr @name dmem_wdata[27] -hierPin core dmem_wdata[27] -pin core|MEM dmem_wdata[27]
load net core|dmem_wdata[28] -attr @rip(#000000) dmem_wdata[28] -attr @name dmem_wdata[28] -hierPin core dmem_wdata[28] -pin core|MEM dmem_wdata[28]
load net core|dmem_wdata[29] -attr @rip(#000000) dmem_wdata[29] -attr @name dmem_wdata[29] -hierPin core dmem_wdata[29] -pin core|MEM dmem_wdata[29]
load net core|dmem_wdata[2] -attr @rip(#000000) dmem_wdata[2] -attr @name dmem_wdata[2] -hierPin core dmem_wdata[2] -pin core|MEM dmem_wdata[2]
load net core|dmem_wdata[30] -attr @rip(#000000) dmem_wdata[30] -attr @name dmem_wdata[30] -hierPin core dmem_wdata[30] -pin core|MEM dmem_wdata[30]
load net core|dmem_wdata[31] -attr @rip(#000000) dmem_wdata[31] -attr @name dmem_wdata[31] -hierPin core dmem_wdata[31] -pin core|MEM dmem_wdata[31]
load net core|dmem_wdata[3] -attr @rip(#000000) dmem_wdata[3] -attr @name dmem_wdata[3] -hierPin core dmem_wdata[3] -pin core|MEM dmem_wdata[3]
load net core|dmem_wdata[4] -attr @rip(#000000) dmem_wdata[4] -attr @name dmem_wdata[4] -hierPin core dmem_wdata[4] -pin core|MEM dmem_wdata[4]
load net core|dmem_wdata[5] -attr @rip(#000000) dmem_wdata[5] -attr @name dmem_wdata[5] -hierPin core dmem_wdata[5] -pin core|MEM dmem_wdata[5]
load net core|dmem_wdata[6] -attr @rip(#000000) dmem_wdata[6] -attr @name dmem_wdata[6] -hierPin core dmem_wdata[6] -pin core|MEM dmem_wdata[6]
load net core|dmem_wdata[7] -attr @rip(#000000) dmem_wdata[7] -attr @name dmem_wdata[7] -hierPin core dmem_wdata[7] -pin core|MEM dmem_wdata[7]
load net core|dmem_wdata[8] -attr @rip(#000000) dmem_wdata[8] -attr @name dmem_wdata[8] -hierPin core dmem_wdata[8] -pin core|MEM dmem_wdata[8]
load net core|dmem_wdata[9] -attr @rip(#000000) dmem_wdata[9] -attr @name dmem_wdata[9] -hierPin core dmem_wdata[9] -pin core|MEM dmem_wdata[9]
load net core|dmem_we -attr @name dmem_we -hierPin core dmem_we -pin core|MEM dmem_we
netloc core|dmem_we 1 14 1 N 758
load net core|ex_alu_result[0] -attr @rip(#000000) alu_result[0] -attr @name ex_alu_result[0] -pin core|EX alu_result[0] -pin core|EX_MEM ex_alu_result[0]
load net core|ex_alu_result[10] -attr @rip(#000000) alu_result[10] -attr @name ex_alu_result[10] -pin core|EX alu_result[10] -pin core|EX_MEM ex_alu_result[10]
load net core|ex_alu_result[11] -attr @rip(#000000) alu_result[11] -attr @name ex_alu_result[11] -pin core|EX alu_result[11] -pin core|EX_MEM ex_alu_result[11]
load net core|ex_alu_result[12] -attr @rip(#000000) alu_result[12] -attr @name ex_alu_result[12] -pin core|EX alu_result[12] -pin core|EX_MEM ex_alu_result[12]
load net core|ex_alu_result[13] -attr @rip(#000000) alu_result[13] -attr @name ex_alu_result[13] -pin core|EX alu_result[13] -pin core|EX_MEM ex_alu_result[13]
load net core|ex_alu_result[14] -attr @rip(#000000) alu_result[14] -attr @name ex_alu_result[14] -pin core|EX alu_result[14] -pin core|EX_MEM ex_alu_result[14]
load net core|ex_alu_result[15] -attr @rip(#000000) alu_result[15] -attr @name ex_alu_result[15] -pin core|EX alu_result[15] -pin core|EX_MEM ex_alu_result[15]
load net core|ex_alu_result[16] -attr @rip(#000000) alu_result[16] -attr @name ex_alu_result[16] -pin core|EX alu_result[16] -pin core|EX_MEM ex_alu_result[16]
load net core|ex_alu_result[17] -attr @rip(#000000) alu_result[17] -attr @name ex_alu_result[17] -pin core|EX alu_result[17] -pin core|EX_MEM ex_alu_result[17]
load net core|ex_alu_result[18] -attr @rip(#000000) alu_result[18] -attr @name ex_alu_result[18] -pin core|EX alu_result[18] -pin core|EX_MEM ex_alu_result[18]
load net core|ex_alu_result[19] -attr @rip(#000000) alu_result[19] -attr @name ex_alu_result[19] -pin core|EX alu_result[19] -pin core|EX_MEM ex_alu_result[19]
load net core|ex_alu_result[1] -attr @rip(#000000) alu_result[1] -attr @name ex_alu_result[1] -pin core|EX alu_result[1] -pin core|EX_MEM ex_alu_result[1]
load net core|ex_alu_result[20] -attr @rip(#000000) alu_result[20] -attr @name ex_alu_result[20] -pin core|EX alu_result[20] -pin core|EX_MEM ex_alu_result[20]
load net core|ex_alu_result[21] -attr @rip(#000000) alu_result[21] -attr @name ex_alu_result[21] -pin core|EX alu_result[21] -pin core|EX_MEM ex_alu_result[21]
load net core|ex_alu_result[22] -attr @rip(#000000) alu_result[22] -attr @name ex_alu_result[22] -pin core|EX alu_result[22] -pin core|EX_MEM ex_alu_result[22]
load net core|ex_alu_result[23] -attr @rip(#000000) alu_result[23] -attr @name ex_alu_result[23] -pin core|EX alu_result[23] -pin core|EX_MEM ex_alu_result[23]
load net core|ex_alu_result[24] -attr @rip(#000000) alu_result[24] -attr @name ex_alu_result[24] -pin core|EX alu_result[24] -pin core|EX_MEM ex_alu_result[24]
load net core|ex_alu_result[25] -attr @rip(#000000) alu_result[25] -attr @name ex_alu_result[25] -pin core|EX alu_result[25] -pin core|EX_MEM ex_alu_result[25]
load net core|ex_alu_result[26] -attr @rip(#000000) alu_result[26] -attr @name ex_alu_result[26] -pin core|EX alu_result[26] -pin core|EX_MEM ex_alu_result[26]
load net core|ex_alu_result[27] -attr @rip(#000000) alu_result[27] -attr @name ex_alu_result[27] -pin core|EX alu_result[27] -pin core|EX_MEM ex_alu_result[27]
load net core|ex_alu_result[28] -attr @rip(#000000) alu_result[28] -attr @name ex_alu_result[28] -pin core|EX alu_result[28] -pin core|EX_MEM ex_alu_result[28]
load net core|ex_alu_result[29] -attr @rip(#000000) alu_result[29] -attr @name ex_alu_result[29] -pin core|EX alu_result[29] -pin core|EX_MEM ex_alu_result[29]
load net core|ex_alu_result[2] -attr @rip(#000000) alu_result[2] -attr @name ex_alu_result[2] -pin core|EX alu_result[2] -pin core|EX_MEM ex_alu_result[2]
load net core|ex_alu_result[30] -attr @rip(#000000) alu_result[30] -attr @name ex_alu_result[30] -pin core|EX alu_result[30] -pin core|EX_MEM ex_alu_result[30]
load net core|ex_alu_result[31] -attr @rip(#000000) alu_result[31] -attr @name ex_alu_result[31] -pin core|EX alu_result[31] -pin core|EX_MEM ex_alu_result[31]
load net core|ex_alu_result[3] -attr @rip(#000000) alu_result[3] -attr @name ex_alu_result[3] -pin core|EX alu_result[3] -pin core|EX_MEM ex_alu_result[3]
load net core|ex_alu_result[4] -attr @rip(#000000) alu_result[4] -attr @name ex_alu_result[4] -pin core|EX alu_result[4] -pin core|EX_MEM ex_alu_result[4]
load net core|ex_alu_result[5] -attr @rip(#000000) alu_result[5] -attr @name ex_alu_result[5] -pin core|EX alu_result[5] -pin core|EX_MEM ex_alu_result[5]
load net core|ex_alu_result[6] -attr @rip(#000000) alu_result[6] -attr @name ex_alu_result[6] -pin core|EX alu_result[6] -pin core|EX_MEM ex_alu_result[6]
load net core|ex_alu_result[7] -attr @rip(#000000) alu_result[7] -attr @name ex_alu_result[7] -pin core|EX alu_result[7] -pin core|EX_MEM ex_alu_result[7]
load net core|ex_alu_result[8] -attr @rip(#000000) alu_result[8] -attr @name ex_alu_result[8] -pin core|EX alu_result[8] -pin core|EX_MEM ex_alu_result[8]
load net core|ex_alu_result[9] -attr @rip(#000000) alu_result[9] -attr @name ex_alu_result[9] -pin core|EX alu_result[9] -pin core|EX_MEM ex_alu_result[9]
load net core|ex_aluop[0] -attr @rip(#000000) ex_aluop[0] -attr @name ex_aluop[0] -pin core|EX ex_aluop[0] -pin core|ID_EX ex_aluop[0]
load net core|ex_aluop[1] -attr @rip(#000000) ex_aluop[1] -attr @name ex_aluop[1] -pin core|EX ex_aluop[1] -pin core|ID_EX ex_aluop[1]
load net core|ex_alusrc -attr @name ex_alusrc -pin core|EX ex_alusrc -pin core|ID_EX ex_alusrc
netloc core|ex_alusrc 1 3 10 1890 78 NJ 78 NJ 78 NJ 78 NJ 78 NJ 78 NJ 78 NJ 78 NJ 78 5740
load net core|ex_branch -attr @name ex_branch -pin core|EX ex_branch -pin core|ID_EX ex_branch
netloc core|ex_branch 1 3 10 1930 98 NJ 98 NJ 98 NJ 98 NJ 98 NJ 98 NJ 98 NJ 98 NJ 98 5680
load net core|ex_funct3[0] -attr @rip(#000000) ex_funct3[0] -attr @name ex_funct3[0] -pin core|EX ex_funct3[0] -pin core|ID_EX ex_funct3[0]
load net core|ex_funct3[1] -attr @rip(#000000) ex_funct3[1] -attr @name ex_funct3[1] -pin core|EX ex_funct3[1] -pin core|ID_EX ex_funct3[1]
load net core|ex_funct3[2] -attr @rip(#000000) ex_funct3[2] -attr @name ex_funct3[2] -pin core|EX ex_funct3[2] -pin core|ID_EX ex_funct3[2]
load net core|ex_funct7[0] -attr @rip(#000000) ex_funct7[0] -attr @name ex_funct7[0] -pin core|EX ex_funct7[0] -pin core|ID_EX ex_funct7[0]
load net core|ex_funct7[1] -attr @rip(#000000) ex_funct7[1] -attr @name ex_funct7[1] -pin core|EX ex_funct7[1] -pin core|ID_EX ex_funct7[1]
load net core|ex_funct7[2] -attr @rip(#000000) ex_funct7[2] -attr @name ex_funct7[2] -pin core|EX ex_funct7[2] -pin core|ID_EX ex_funct7[2]
load net core|ex_funct7[3] -attr @rip(#000000) ex_funct7[3] -attr @name ex_funct7[3] -pin core|EX ex_funct7[3] -pin core|ID_EX ex_funct7[3]
load net core|ex_funct7[4] -attr @rip(#000000) ex_funct7[4] -attr @name ex_funct7[4] -pin core|EX ex_funct7[4] -pin core|ID_EX ex_funct7[4]
load net core|ex_funct7[5] -attr @rip(#000000) ex_funct7[5] -attr @name ex_funct7[5] -pin core|EX ex_funct7[5] -pin core|ID_EX ex_funct7[5]
load net core|ex_funct7[6] -attr @rip(#000000) ex_funct7[6] -attr @name ex_funct7[6] -pin core|EX ex_funct7[6] -pin core|ID_EX ex_funct7[6]
load net core|ex_imm[0] -attr @rip(#000000) ex_imm[0] -attr @name ex_imm[0] -pin core|EX ex_imm[0] -pin core|ID_EX ex_imm[0]
load net core|ex_imm[10] -attr @rip(#000000) ex_imm[10] -attr @name ex_imm[10] -pin core|EX ex_imm[10] -pin core|ID_EX ex_imm[10]
load net core|ex_imm[11] -attr @rip(#000000) ex_imm[11] -attr @name ex_imm[11] -pin core|EX ex_imm[11] -pin core|ID_EX ex_imm[11]
load net core|ex_imm[12] -attr @rip(#000000) ex_imm[12] -attr @name ex_imm[12] -pin core|EX ex_imm[12] -pin core|ID_EX ex_imm[12]
load net core|ex_imm[13] -attr @rip(#000000) ex_imm[13] -attr @name ex_imm[13] -pin core|EX ex_imm[13] -pin core|ID_EX ex_imm[13]
load net core|ex_imm[14] -attr @rip(#000000) ex_imm[14] -attr @name ex_imm[14] -pin core|EX ex_imm[14] -pin core|ID_EX ex_imm[14]
load net core|ex_imm[15] -attr @rip(#000000) ex_imm[15] -attr @name ex_imm[15] -pin core|EX ex_imm[15] -pin core|ID_EX ex_imm[15]
load net core|ex_imm[16] -attr @rip(#000000) ex_imm[16] -attr @name ex_imm[16] -pin core|EX ex_imm[16] -pin core|ID_EX ex_imm[16]
load net core|ex_imm[17] -attr @rip(#000000) ex_imm[17] -attr @name ex_imm[17] -pin core|EX ex_imm[17] -pin core|ID_EX ex_imm[17]
load net core|ex_imm[18] -attr @rip(#000000) ex_imm[18] -attr @name ex_imm[18] -pin core|EX ex_imm[18] -pin core|ID_EX ex_imm[18]
load net core|ex_imm[19] -attr @rip(#000000) ex_imm[19] -attr @name ex_imm[19] -pin core|EX ex_imm[19] -pin core|ID_EX ex_imm[19]
load net core|ex_imm[1] -attr @rip(#000000) ex_imm[1] -attr @name ex_imm[1] -pin core|EX ex_imm[1] -pin core|ID_EX ex_imm[1]
load net core|ex_imm[20] -attr @rip(#000000) ex_imm[20] -attr @name ex_imm[20] -pin core|EX ex_imm[20] -pin core|ID_EX ex_imm[20]
load net core|ex_imm[21] -attr @rip(#000000) ex_imm[21] -attr @name ex_imm[21] -pin core|EX ex_imm[21] -pin core|ID_EX ex_imm[21]
load net core|ex_imm[22] -attr @rip(#000000) ex_imm[22] -attr @name ex_imm[22] -pin core|EX ex_imm[22] -pin core|ID_EX ex_imm[22]
load net core|ex_imm[23] -attr @rip(#000000) ex_imm[23] -attr @name ex_imm[23] -pin core|EX ex_imm[23] -pin core|ID_EX ex_imm[23]
load net core|ex_imm[24] -attr @rip(#000000) ex_imm[24] -attr @name ex_imm[24] -pin core|EX ex_imm[24] -pin core|ID_EX ex_imm[24]
load net core|ex_imm[25] -attr @rip(#000000) ex_imm[25] -attr @name ex_imm[25] -pin core|EX ex_imm[25] -pin core|ID_EX ex_imm[25]
load net core|ex_imm[26] -attr @rip(#000000) ex_imm[26] -attr @name ex_imm[26] -pin core|EX ex_imm[26] -pin core|ID_EX ex_imm[26]
load net core|ex_imm[27] -attr @rip(#000000) ex_imm[27] -attr @name ex_imm[27] -pin core|EX ex_imm[27] -pin core|ID_EX ex_imm[27]
load net core|ex_imm[28] -attr @rip(#000000) ex_imm[28] -attr @name ex_imm[28] -pin core|EX ex_imm[28] -pin core|ID_EX ex_imm[28]
load net core|ex_imm[29] -attr @rip(#000000) ex_imm[29] -attr @name ex_imm[29] -pin core|EX ex_imm[29] -pin core|ID_EX ex_imm[29]
load net core|ex_imm[2] -attr @rip(#000000) ex_imm[2] -attr @name ex_imm[2] -pin core|EX ex_imm[2] -pin core|ID_EX ex_imm[2]
load net core|ex_imm[30] -attr @rip(#000000) ex_imm[30] -attr @name ex_imm[30] -pin core|EX ex_imm[30] -pin core|ID_EX ex_imm[30]
load net core|ex_imm[31] -attr @rip(#000000) ex_imm[31] -attr @name ex_imm[31] -pin core|EX ex_imm[31] -pin core|ID_EX ex_imm[31]
load net core|ex_imm[3] -attr @rip(#000000) ex_imm[3] -attr @name ex_imm[3] -pin core|EX ex_imm[3] -pin core|ID_EX ex_imm[3]
load net core|ex_imm[4] -attr @rip(#000000) ex_imm[4] -attr @name ex_imm[4] -pin core|EX ex_imm[4] -pin core|ID_EX ex_imm[4]
load net core|ex_imm[5] -attr @rip(#000000) ex_imm[5] -attr @name ex_imm[5] -pin core|EX ex_imm[5] -pin core|ID_EX ex_imm[5]
load net core|ex_imm[6] -attr @rip(#000000) ex_imm[6] -attr @name ex_imm[6] -pin core|EX ex_imm[6] -pin core|ID_EX ex_imm[6]
load net core|ex_imm[7] -attr @rip(#000000) ex_imm[7] -attr @name ex_imm[7] -pin core|EX ex_imm[7] -pin core|ID_EX ex_imm[7]
load net core|ex_imm[8] -attr @rip(#000000) ex_imm[8] -attr @name ex_imm[8] -pin core|EX ex_imm[8] -pin core|ID_EX ex_imm[8]
load net core|ex_imm[9] -attr @rip(#000000) ex_imm[9] -attr @name ex_imm[9] -pin core|EX ex_imm[9] -pin core|ID_EX ex_imm[9]
load net core|ex_memread -attr @name ex_memread -pin core|EX ex_memread -pin core|EX_MEM ex_memread -pin core|ID_EX ex_memread -pin core|hazard_stall0_i I0
netloc core|ex_memread 1 3 10 2030 1038 2490J 1018 NJ 1018 NJ 1018 3790J 1098 4450 838 NJ 838 NJ 838 NJ 838 5740
load net core|ex_memtoreg -attr @name ex_memtoreg -pin core|EX ex_memtoreg -pin core|EX_MEM ex_memtoreg -pin core|ID_EX ex_memtoreg
netloc core|ex_memtoreg 1 3 10 2050 178 NJ 178 NJ 178 NJ 178 NJ 178 NJ 178 NJ 178 NJ 178 NJ 178 5820
load net core|ex_memwrite -attr @name ex_memwrite -pin core|EX ex_memwrite -pin core|EX_MEM ex_memwrite -pin core|ID_EX ex_memwrite
netloc core|ex_memwrite 1 3 10 2070 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 NJ 198 5780
load net core|ex_pc[0] -attr @rip(#000000) ex_pc[0] -attr @name ex_pc[0] -pin core|CSR trap_pc[0] -pin core|EX ex_pc[0] -pin core|ID_EX ex_pc[0]
load net core|ex_pc[10] -attr @rip(#000000) ex_pc[10] -attr @name ex_pc[10] -pin core|CSR trap_pc[10] -pin core|EX ex_pc[10] -pin core|ID_EX ex_pc[10]
load net core|ex_pc[11] -attr @rip(#000000) ex_pc[11] -attr @name ex_pc[11] -pin core|CSR trap_pc[11] -pin core|EX ex_pc[11] -pin core|ID_EX ex_pc[11]
load net core|ex_pc[12] -attr @rip(#000000) ex_pc[12] -attr @name ex_pc[12] -pin core|CSR trap_pc[12] -pin core|EX ex_pc[12] -pin core|ID_EX ex_pc[12]
load net core|ex_pc[13] -attr @rip(#000000) ex_pc[13] -attr @name ex_pc[13] -pin core|CSR trap_pc[13] -pin core|EX ex_pc[13] -pin core|ID_EX ex_pc[13]
load net core|ex_pc[14] -attr @rip(#000000) ex_pc[14] -attr @name ex_pc[14] -pin core|CSR trap_pc[14] -pin core|EX ex_pc[14] -pin core|ID_EX ex_pc[14]
load net core|ex_pc[15] -attr @rip(#000000) ex_pc[15] -attr @name ex_pc[15] -pin core|CSR trap_pc[15] -pin core|EX ex_pc[15] -pin core|ID_EX ex_pc[15]
load net core|ex_pc[16] -attr @rip(#000000) ex_pc[16] -attr @name ex_pc[16] -pin core|CSR trap_pc[16] -pin core|EX ex_pc[16] -pin core|ID_EX ex_pc[16]
load net core|ex_pc[17] -attr @rip(#000000) ex_pc[17] -attr @name ex_pc[17] -pin core|CSR trap_pc[17] -pin core|EX ex_pc[17] -pin core|ID_EX ex_pc[17]
load net core|ex_pc[18] -attr @rip(#000000) ex_pc[18] -attr @name ex_pc[18] -pin core|CSR trap_pc[18] -pin core|EX ex_pc[18] -pin core|ID_EX ex_pc[18]
load net core|ex_pc[19] -attr @rip(#000000) ex_pc[19] -attr @name ex_pc[19] -pin core|CSR trap_pc[19] -pin core|EX ex_pc[19] -pin core|ID_EX ex_pc[19]
load net core|ex_pc[1] -attr @rip(#000000) ex_pc[1] -attr @name ex_pc[1] -pin core|CSR trap_pc[1] -pin core|EX ex_pc[1] -pin core|ID_EX ex_pc[1]
load net core|ex_pc[20] -attr @rip(#000000) ex_pc[20] -attr @name ex_pc[20] -pin core|CSR trap_pc[20] -pin core|EX ex_pc[20] -pin core|ID_EX ex_pc[20]
load net core|ex_pc[21] -attr @rip(#000000) ex_pc[21] -attr @name ex_pc[21] -pin core|CSR trap_pc[21] -pin core|EX ex_pc[21] -pin core|ID_EX ex_pc[21]
load net core|ex_pc[22] -attr @rip(#000000) ex_pc[22] -attr @name ex_pc[22] -pin core|CSR trap_pc[22] -pin core|EX ex_pc[22] -pin core|ID_EX ex_pc[22]
load net core|ex_pc[23] -attr @rip(#000000) ex_pc[23] -attr @name ex_pc[23] -pin core|CSR trap_pc[23] -pin core|EX ex_pc[23] -pin core|ID_EX ex_pc[23]
load net core|ex_pc[24] -attr @rip(#000000) ex_pc[24] -attr @name ex_pc[24] -pin core|CSR trap_pc[24] -pin core|EX ex_pc[24] -pin core|ID_EX ex_pc[24]
load net core|ex_pc[25] -attr @rip(#000000) ex_pc[25] -attr @name ex_pc[25] -pin core|CSR trap_pc[25] -pin core|EX ex_pc[25] -pin core|ID_EX ex_pc[25]
load net core|ex_pc[26] -attr @rip(#000000) ex_pc[26] -attr @name ex_pc[26] -pin core|CSR trap_pc[26] -pin core|EX ex_pc[26] -pin core|ID_EX ex_pc[26]
load net core|ex_pc[27] -attr @rip(#000000) ex_pc[27] -attr @name ex_pc[27] -pin core|CSR trap_pc[27] -pin core|EX ex_pc[27] -pin core|ID_EX ex_pc[27]
load net core|ex_pc[28] -attr @rip(#000000) ex_pc[28] -attr @name ex_pc[28] -pin core|CSR trap_pc[28] -pin core|EX ex_pc[28] -pin core|ID_EX ex_pc[28]
load net core|ex_pc[29] -attr @rip(#000000) ex_pc[29] -attr @name ex_pc[29] -pin core|CSR trap_pc[29] -pin core|EX ex_pc[29] -pin core|ID_EX ex_pc[29]
load net core|ex_pc[2] -attr @rip(#000000) ex_pc[2] -attr @name ex_pc[2] -pin core|CSR trap_pc[2] -pin core|EX ex_pc[2] -pin core|ID_EX ex_pc[2]
load net core|ex_pc[30] -attr @rip(#000000) ex_pc[30] -attr @name ex_pc[30] -pin core|CSR trap_pc[30] -pin core|EX ex_pc[30] -pin core|ID_EX ex_pc[30]
load net core|ex_pc[31] -attr @rip(#000000) ex_pc[31] -attr @name ex_pc[31] -pin core|CSR trap_pc[31] -pin core|EX ex_pc[31] -pin core|ID_EX ex_pc[31]
load net core|ex_pc[3] -attr @rip(#000000) ex_pc[3] -attr @name ex_pc[3] -pin core|CSR trap_pc[3] -pin core|EX ex_pc[3] -pin core|ID_EX ex_pc[3]
load net core|ex_pc[4] -attr @rip(#000000) ex_pc[4] -attr @name ex_pc[4] -pin core|CSR trap_pc[4] -pin core|EX ex_pc[4] -pin core|ID_EX ex_pc[4]
load net core|ex_pc[5] -attr @rip(#000000) ex_pc[5] -attr @name ex_pc[5] -pin core|CSR trap_pc[5] -pin core|EX ex_pc[5] -pin core|ID_EX ex_pc[5]
load net core|ex_pc[6] -attr @rip(#000000) ex_pc[6] -attr @name ex_pc[6] -pin core|CSR trap_pc[6] -pin core|EX ex_pc[6] -pin core|ID_EX ex_pc[6]
load net core|ex_pc[7] -attr @rip(#000000) ex_pc[7] -attr @name ex_pc[7] -pin core|CSR trap_pc[7] -pin core|EX ex_pc[7] -pin core|ID_EX ex_pc[7]
load net core|ex_pc[8] -attr @rip(#000000) ex_pc[8] -attr @name ex_pc[8] -pin core|CSR trap_pc[8] -pin core|EX ex_pc[8] -pin core|ID_EX ex_pc[8]
load net core|ex_pc[9] -attr @rip(#000000) ex_pc[9] -attr @name ex_pc[9] -pin core|CSR trap_pc[9] -pin core|EX ex_pc[9] -pin core|ID_EX ex_pc[9]
load net core|ex_rd[0] -attr @rip(#000000) ex_rd[0] -attr @name ex_rd[0] -pin core|EX ex_rd[0] -pin core|ID_EX ex_rd[0] -pin core|hazard_stall1_i I0[0] -pin core|hazard_stall1_i__0 I0[0] -pin core|hazard_stall1_i__1 I0[0]
load net core|ex_rd[1] -attr @rip(#000000) ex_rd[1] -attr @name ex_rd[1] -pin core|EX ex_rd[1] -pin core|ID_EX ex_rd[1] -pin core|hazard_stall1_i I0[1] -pin core|hazard_stall1_i__0 I0[1] -pin core|hazard_stall1_i__1 I0[1]
load net core|ex_rd[2] -attr @rip(#000000) ex_rd[2] -attr @name ex_rd[2] -pin core|EX ex_rd[2] -pin core|ID_EX ex_rd[2] -pin core|hazard_stall1_i I0[2] -pin core|hazard_stall1_i__0 I0[2] -pin core|hazard_stall1_i__1 I0[2]
load net core|ex_rd[3] -attr @rip(#000000) ex_rd[3] -attr @name ex_rd[3] -pin core|EX ex_rd[3] -pin core|ID_EX ex_rd[3] -pin core|hazard_stall1_i I0[3] -pin core|hazard_stall1_i__0 I0[3] -pin core|hazard_stall1_i__1 I0[3]
load net core|ex_rd[4] -attr @rip(#000000) ex_rd[4] -attr @name ex_rd[4] -pin core|EX ex_rd[4] -pin core|ID_EX ex_rd[4] -pin core|hazard_stall1_i I0[4] -pin core|hazard_stall1_i__0 I0[4] -pin core|hazard_stall1_i__1 I0[4]
load net core|ex_rd_out[0] -attr @rip(#000000) rd_out[0] -attr @name ex_rd_out[0] -pin core|EX rd_out[0] -pin core|EX_MEM ex_rd[0]
load net core|ex_rd_out[1] -attr @rip(#000000) rd_out[1] -attr @name ex_rd_out[1] -pin core|EX rd_out[1] -pin core|EX_MEM ex_rd[1]
load net core|ex_rd_out[2] -attr @rip(#000000) rd_out[2] -attr @name ex_rd_out[2] -pin core|EX rd_out[2] -pin core|EX_MEM ex_rd[2]
load net core|ex_rd_out[3] -attr @rip(#000000) rd_out[3] -attr @name ex_rd_out[3] -pin core|EX rd_out[3] -pin core|EX_MEM ex_rd[3]
load net core|ex_rd_out[4] -attr @rip(#000000) rd_out[4] -attr @name ex_rd_out[4] -pin core|EX rd_out[4] -pin core|EX_MEM ex_rd[4]
load net core|ex_regwrite -attr @name ex_regwrite -pin core|EX ex_regwrite -pin core|EX_MEM ex_regwrite -pin core|ID_EX ex_regwrite
netloc core|ex_regwrite 1 3 10 2070 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 NJ 858 5720
load net core|ex_rs1[0] -attr @rip(#000000) ex_rs1[0] -attr @name ex_rs1[0] -pin core|EX ex_rs1[0] -pin core|FU idex_rs1[0] -pin core|ID_EX ex_rs1[0]
load net core|ex_rs1[1] -attr @rip(#000000) ex_rs1[1] -attr @name ex_rs1[1] -pin core|EX ex_rs1[1] -pin core|FU idex_rs1[1] -pin core|ID_EX ex_rs1[1]
load net core|ex_rs1[2] -attr @rip(#000000) ex_rs1[2] -attr @name ex_rs1[2] -pin core|EX ex_rs1[2] -pin core|FU idex_rs1[2] -pin core|ID_EX ex_rs1[2]
load net core|ex_rs1[3] -attr @rip(#000000) ex_rs1[3] -attr @name ex_rs1[3] -pin core|EX ex_rs1[3] -pin core|FU idex_rs1[3] -pin core|ID_EX ex_rs1[3]
load net core|ex_rs1[4] -attr @rip(#000000) ex_rs1[4] -attr @name ex_rs1[4] -pin core|EX ex_rs1[4] -pin core|FU idex_rs1[4] -pin core|ID_EX ex_rs1[4]
load net core|ex_rs1_data[0] -attr @rip(#000000) ex_rs1_data[0] -attr @name ex_rs1_data[0] -pin core|EX ex_rs1_data[0] -pin core|ID_EX ex_rs1_data[0]
load net core|ex_rs1_data[10] -attr @rip(#000000) ex_rs1_data[10] -attr @name ex_rs1_data[10] -pin core|EX ex_rs1_data[10] -pin core|ID_EX ex_rs1_data[10]
load net core|ex_rs1_data[11] -attr @rip(#000000) ex_rs1_data[11] -attr @name ex_rs1_data[11] -pin core|EX ex_rs1_data[11] -pin core|ID_EX ex_rs1_data[11]
load net core|ex_rs1_data[12] -attr @rip(#000000) ex_rs1_data[12] -attr @name ex_rs1_data[12] -pin core|EX ex_rs1_data[12] -pin core|ID_EX ex_rs1_data[12]
load net core|ex_rs1_data[13] -attr @rip(#000000) ex_rs1_data[13] -attr @name ex_rs1_data[13] -pin core|EX ex_rs1_data[13] -pin core|ID_EX ex_rs1_data[13]
load net core|ex_rs1_data[14] -attr @rip(#000000) ex_rs1_data[14] -attr @name ex_rs1_data[14] -pin core|EX ex_rs1_data[14] -pin core|ID_EX ex_rs1_data[14]
load net core|ex_rs1_data[15] -attr @rip(#000000) ex_rs1_data[15] -attr @name ex_rs1_data[15] -pin core|EX ex_rs1_data[15] -pin core|ID_EX ex_rs1_data[15]
load net core|ex_rs1_data[16] -attr @rip(#000000) ex_rs1_data[16] -attr @name ex_rs1_data[16] -pin core|EX ex_rs1_data[16] -pin core|ID_EX ex_rs1_data[16]
load net core|ex_rs1_data[17] -attr @rip(#000000) ex_rs1_data[17] -attr @name ex_rs1_data[17] -pin core|EX ex_rs1_data[17] -pin core|ID_EX ex_rs1_data[17]
load net core|ex_rs1_data[18] -attr @rip(#000000) ex_rs1_data[18] -attr @name ex_rs1_data[18] -pin core|EX ex_rs1_data[18] -pin core|ID_EX ex_rs1_data[18]
load net core|ex_rs1_data[19] -attr @rip(#000000) ex_rs1_data[19] -attr @name ex_rs1_data[19] -pin core|EX ex_rs1_data[19] -pin core|ID_EX ex_rs1_data[19]
load net core|ex_rs1_data[1] -attr @rip(#000000) ex_rs1_data[1] -attr @name ex_rs1_data[1] -pin core|EX ex_rs1_data[1] -pin core|ID_EX ex_rs1_data[1]
load net core|ex_rs1_data[20] -attr @rip(#000000) ex_rs1_data[20] -attr @name ex_rs1_data[20] -pin core|EX ex_rs1_data[20] -pin core|ID_EX ex_rs1_data[20]
load net core|ex_rs1_data[21] -attr @rip(#000000) ex_rs1_data[21] -attr @name ex_rs1_data[21] -pin core|EX ex_rs1_data[21] -pin core|ID_EX ex_rs1_data[21]
load net core|ex_rs1_data[22] -attr @rip(#000000) ex_rs1_data[22] -attr @name ex_rs1_data[22] -pin core|EX ex_rs1_data[22] -pin core|ID_EX ex_rs1_data[22]
load net core|ex_rs1_data[23] -attr @rip(#000000) ex_rs1_data[23] -attr @name ex_rs1_data[23] -pin core|EX ex_rs1_data[23] -pin core|ID_EX ex_rs1_data[23]
load net core|ex_rs1_data[24] -attr @rip(#000000) ex_rs1_data[24] -attr @name ex_rs1_data[24] -pin core|EX ex_rs1_data[24] -pin core|ID_EX ex_rs1_data[24]
load net core|ex_rs1_data[25] -attr @rip(#000000) ex_rs1_data[25] -attr @name ex_rs1_data[25] -pin core|EX ex_rs1_data[25] -pin core|ID_EX ex_rs1_data[25]
load net core|ex_rs1_data[26] -attr @rip(#000000) ex_rs1_data[26] -attr @name ex_rs1_data[26] -pin core|EX ex_rs1_data[26] -pin core|ID_EX ex_rs1_data[26]
load net core|ex_rs1_data[27] -attr @rip(#000000) ex_rs1_data[27] -attr @name ex_rs1_data[27] -pin core|EX ex_rs1_data[27] -pin core|ID_EX ex_rs1_data[27]
load net core|ex_rs1_data[28] -attr @rip(#000000) ex_rs1_data[28] -attr @name ex_rs1_data[28] -pin core|EX ex_rs1_data[28] -pin core|ID_EX ex_rs1_data[28]
load net core|ex_rs1_data[29] -attr @rip(#000000) ex_rs1_data[29] -attr @name ex_rs1_data[29] -pin core|EX ex_rs1_data[29] -pin core|ID_EX ex_rs1_data[29]
load net core|ex_rs1_data[2] -attr @rip(#000000) ex_rs1_data[2] -attr @name ex_rs1_data[2] -pin core|EX ex_rs1_data[2] -pin core|ID_EX ex_rs1_data[2]
load net core|ex_rs1_data[30] -attr @rip(#000000) ex_rs1_data[30] -attr @name ex_rs1_data[30] -pin core|EX ex_rs1_data[30] -pin core|ID_EX ex_rs1_data[30]
load net core|ex_rs1_data[31] -attr @rip(#000000) ex_rs1_data[31] -attr @name ex_rs1_data[31] -pin core|EX ex_rs1_data[31] -pin core|ID_EX ex_rs1_data[31]
load net core|ex_rs1_data[3] -attr @rip(#000000) ex_rs1_data[3] -attr @name ex_rs1_data[3] -pin core|EX ex_rs1_data[3] -pin core|ID_EX ex_rs1_data[3]
load net core|ex_rs1_data[4] -attr @rip(#000000) ex_rs1_data[4] -attr @name ex_rs1_data[4] -pin core|EX ex_rs1_data[4] -pin core|ID_EX ex_rs1_data[4]
load net core|ex_rs1_data[5] -attr @rip(#000000) ex_rs1_data[5] -attr @name ex_rs1_data[5] -pin core|EX ex_rs1_data[5] -pin core|ID_EX ex_rs1_data[5]
load net core|ex_rs1_data[6] -attr @rip(#000000) ex_rs1_data[6] -attr @name ex_rs1_data[6] -pin core|EX ex_rs1_data[6] -pin core|ID_EX ex_rs1_data[6]
load net core|ex_rs1_data[7] -attr @rip(#000000) ex_rs1_data[7] -attr @name ex_rs1_data[7] -pin core|EX ex_rs1_data[7] -pin core|ID_EX ex_rs1_data[7]
load net core|ex_rs1_data[8] -attr @rip(#000000) ex_rs1_data[8] -attr @name ex_rs1_data[8] -pin core|EX ex_rs1_data[8] -pin core|ID_EX ex_rs1_data[8]
load net core|ex_rs1_data[9] -attr @rip(#000000) ex_rs1_data[9] -attr @name ex_rs1_data[9] -pin core|EX ex_rs1_data[9] -pin core|ID_EX ex_rs1_data[9]
load net core|ex_rs2[0] -attr @rip(#000000) ex_rs2[0] -attr @name ex_rs2[0] -pin core|EX ex_rs2[0] -pin core|FU idex_rs2[0] -pin core|ID_EX ex_rs2[0]
load net core|ex_rs2[1] -attr @rip(#000000) ex_rs2[1] -attr @name ex_rs2[1] -pin core|EX ex_rs2[1] -pin core|FU idex_rs2[1] -pin core|ID_EX ex_rs2[1]
load net core|ex_rs2[2] -attr @rip(#000000) ex_rs2[2] -attr @name ex_rs2[2] -pin core|EX ex_rs2[2] -pin core|FU idex_rs2[2] -pin core|ID_EX ex_rs2[2]
load net core|ex_rs2[3] -attr @rip(#000000) ex_rs2[3] -attr @name ex_rs2[3] -pin core|EX ex_rs2[3] -pin core|FU idex_rs2[3] -pin core|ID_EX ex_rs2[3]
load net core|ex_rs2[4] -attr @rip(#000000) ex_rs2[4] -attr @name ex_rs2[4] -pin core|EX ex_rs2[4] -pin core|FU idex_rs2[4] -pin core|ID_EX ex_rs2[4]
load net core|ex_rs2_data[0] -attr @rip(#000000) ex_rs2_data[0] -attr @name ex_rs2_data[0] -pin core|EX ex_rs2_data[0] -pin core|ID_EX ex_rs2_data[0]
load net core|ex_rs2_data[10] -attr @rip(#000000) ex_rs2_data[10] -attr @name ex_rs2_data[10] -pin core|EX ex_rs2_data[10] -pin core|ID_EX ex_rs2_data[10]
load net core|ex_rs2_data[11] -attr @rip(#000000) ex_rs2_data[11] -attr @name ex_rs2_data[11] -pin core|EX ex_rs2_data[11] -pin core|ID_EX ex_rs2_data[11]
load net core|ex_rs2_data[12] -attr @rip(#000000) ex_rs2_data[12] -attr @name ex_rs2_data[12] -pin core|EX ex_rs2_data[12] -pin core|ID_EX ex_rs2_data[12]
load net core|ex_rs2_data[13] -attr @rip(#000000) ex_rs2_data[13] -attr @name ex_rs2_data[13] -pin core|EX ex_rs2_data[13] -pin core|ID_EX ex_rs2_data[13]
load net core|ex_rs2_data[14] -attr @rip(#000000) ex_rs2_data[14] -attr @name ex_rs2_data[14] -pin core|EX ex_rs2_data[14] -pin core|ID_EX ex_rs2_data[14]
load net core|ex_rs2_data[15] -attr @rip(#000000) ex_rs2_data[15] -attr @name ex_rs2_data[15] -pin core|EX ex_rs2_data[15] -pin core|ID_EX ex_rs2_data[15]
load net core|ex_rs2_data[16] -attr @rip(#000000) ex_rs2_data[16] -attr @name ex_rs2_data[16] -pin core|EX ex_rs2_data[16] -pin core|ID_EX ex_rs2_data[16]
load net core|ex_rs2_data[17] -attr @rip(#000000) ex_rs2_data[17] -attr @name ex_rs2_data[17] -pin core|EX ex_rs2_data[17] -pin core|ID_EX ex_rs2_data[17]
load net core|ex_rs2_data[18] -attr @rip(#000000) ex_rs2_data[18] -attr @name ex_rs2_data[18] -pin core|EX ex_rs2_data[18] -pin core|ID_EX ex_rs2_data[18]
load net core|ex_rs2_data[19] -attr @rip(#000000) ex_rs2_data[19] -attr @name ex_rs2_data[19] -pin core|EX ex_rs2_data[19] -pin core|ID_EX ex_rs2_data[19]
load net core|ex_rs2_data[1] -attr @rip(#000000) ex_rs2_data[1] -attr @name ex_rs2_data[1] -pin core|EX ex_rs2_data[1] -pin core|ID_EX ex_rs2_data[1]
load net core|ex_rs2_data[20] -attr @rip(#000000) ex_rs2_data[20] -attr @name ex_rs2_data[20] -pin core|EX ex_rs2_data[20] -pin core|ID_EX ex_rs2_data[20]
load net core|ex_rs2_data[21] -attr @rip(#000000) ex_rs2_data[21] -attr @name ex_rs2_data[21] -pin core|EX ex_rs2_data[21] -pin core|ID_EX ex_rs2_data[21]
load net core|ex_rs2_data[22] -attr @rip(#000000) ex_rs2_data[22] -attr @name ex_rs2_data[22] -pin core|EX ex_rs2_data[22] -pin core|ID_EX ex_rs2_data[22]
load net core|ex_rs2_data[23] -attr @rip(#000000) ex_rs2_data[23] -attr @name ex_rs2_data[23] -pin core|EX ex_rs2_data[23] -pin core|ID_EX ex_rs2_data[23]
load net core|ex_rs2_data[24] -attr @rip(#000000) ex_rs2_data[24] -attr @name ex_rs2_data[24] -pin core|EX ex_rs2_data[24] -pin core|ID_EX ex_rs2_data[24]
load net core|ex_rs2_data[25] -attr @rip(#000000) ex_rs2_data[25] -attr @name ex_rs2_data[25] -pin core|EX ex_rs2_data[25] -pin core|ID_EX ex_rs2_data[25]
load net core|ex_rs2_data[26] -attr @rip(#000000) ex_rs2_data[26] -attr @name ex_rs2_data[26] -pin core|EX ex_rs2_data[26] -pin core|ID_EX ex_rs2_data[26]
load net core|ex_rs2_data[27] -attr @rip(#000000) ex_rs2_data[27] -attr @name ex_rs2_data[27] -pin core|EX ex_rs2_data[27] -pin core|ID_EX ex_rs2_data[27]
load net core|ex_rs2_data[28] -attr @rip(#000000) ex_rs2_data[28] -attr @name ex_rs2_data[28] -pin core|EX ex_rs2_data[28] -pin core|ID_EX ex_rs2_data[28]
load net core|ex_rs2_data[29] -attr @rip(#000000) ex_rs2_data[29] -attr @name ex_rs2_data[29] -pin core|EX ex_rs2_data[29] -pin core|ID_EX ex_rs2_data[29]
load net core|ex_rs2_data[2] -attr @rip(#000000) ex_rs2_data[2] -attr @name ex_rs2_data[2] -pin core|EX ex_rs2_data[2] -pin core|ID_EX ex_rs2_data[2]
load net core|ex_rs2_data[30] -attr @rip(#000000) ex_rs2_data[30] -attr @name ex_rs2_data[30] -pin core|EX ex_rs2_data[30] -pin core|ID_EX ex_rs2_data[30]
load net core|ex_rs2_data[31] -attr @rip(#000000) ex_rs2_data[31] -attr @name ex_rs2_data[31] -pin core|EX ex_rs2_data[31] -pin core|ID_EX ex_rs2_data[31]
load net core|ex_rs2_data[3] -attr @rip(#000000) ex_rs2_data[3] -attr @name ex_rs2_data[3] -pin core|EX ex_rs2_data[3] -pin core|ID_EX ex_rs2_data[3]
load net core|ex_rs2_data[4] -attr @rip(#000000) ex_rs2_data[4] -attr @name ex_rs2_data[4] -pin core|EX ex_rs2_data[4] -pin core|ID_EX ex_rs2_data[4]
load net core|ex_rs2_data[5] -attr @rip(#000000) ex_rs2_data[5] -attr @name ex_rs2_data[5] -pin core|EX ex_rs2_data[5] -pin core|ID_EX ex_rs2_data[5]
load net core|ex_rs2_data[6] -attr @rip(#000000) ex_rs2_data[6] -attr @name ex_rs2_data[6] -pin core|EX ex_rs2_data[6] -pin core|ID_EX ex_rs2_data[6]
load net core|ex_rs2_data[7] -attr @rip(#000000) ex_rs2_data[7] -attr @name ex_rs2_data[7] -pin core|EX ex_rs2_data[7] -pin core|ID_EX ex_rs2_data[7]
load net core|ex_rs2_data[8] -attr @rip(#000000) ex_rs2_data[8] -attr @name ex_rs2_data[8] -pin core|EX ex_rs2_data[8] -pin core|ID_EX ex_rs2_data[8]
load net core|ex_rs2_data[9] -attr @rip(#000000) ex_rs2_data[9] -attr @name ex_rs2_data[9] -pin core|EX ex_rs2_data[9] -pin core|ID_EX ex_rs2_data[9]
load net core|ex_store_data[0] -attr @rip(#000000) store_data[0] -attr @name ex_store_data[0] -pin core|EX store_data[0] -pin core|EX_MEM ex_store_data[0]
load net core|ex_store_data[10] -attr @rip(#000000) store_data[10] -attr @name ex_store_data[10] -pin core|EX store_data[10] -pin core|EX_MEM ex_store_data[10]
load net core|ex_store_data[11] -attr @rip(#000000) store_data[11] -attr @name ex_store_data[11] -pin core|EX store_data[11] -pin core|EX_MEM ex_store_data[11]
load net core|ex_store_data[12] -attr @rip(#000000) store_data[12] -attr @name ex_store_data[12] -pin core|EX store_data[12] -pin core|EX_MEM ex_store_data[12]
load net core|ex_store_data[13] -attr @rip(#000000) store_data[13] -attr @name ex_store_data[13] -pin core|EX store_data[13] -pin core|EX_MEM ex_store_data[13]
load net core|ex_store_data[14] -attr @rip(#000000) store_data[14] -attr @name ex_store_data[14] -pin core|EX store_data[14] -pin core|EX_MEM ex_store_data[14]
load net core|ex_store_data[15] -attr @rip(#000000) store_data[15] -attr @name ex_store_data[15] -pin core|EX store_data[15] -pin core|EX_MEM ex_store_data[15]
load net core|ex_store_data[16] -attr @rip(#000000) store_data[16] -attr @name ex_store_data[16] -pin core|EX store_data[16] -pin core|EX_MEM ex_store_data[16]
load net core|ex_store_data[17] -attr @rip(#000000) store_data[17] -attr @name ex_store_data[17] -pin core|EX store_data[17] -pin core|EX_MEM ex_store_data[17]
load net core|ex_store_data[18] -attr @rip(#000000) store_data[18] -attr @name ex_store_data[18] -pin core|EX store_data[18] -pin core|EX_MEM ex_store_data[18]
load net core|ex_store_data[19] -attr @rip(#000000) store_data[19] -attr @name ex_store_data[19] -pin core|EX store_data[19] -pin core|EX_MEM ex_store_data[19]
load net core|ex_store_data[1] -attr @rip(#000000) store_data[1] -attr @name ex_store_data[1] -pin core|EX store_data[1] -pin core|EX_MEM ex_store_data[1]
load net core|ex_store_data[20] -attr @rip(#000000) store_data[20] -attr @name ex_store_data[20] -pin core|EX store_data[20] -pin core|EX_MEM ex_store_data[20]
load net core|ex_store_data[21] -attr @rip(#000000) store_data[21] -attr @name ex_store_data[21] -pin core|EX store_data[21] -pin core|EX_MEM ex_store_data[21]
load net core|ex_store_data[22] -attr @rip(#000000) store_data[22] -attr @name ex_store_data[22] -pin core|EX store_data[22] -pin core|EX_MEM ex_store_data[22]
load net core|ex_store_data[23] -attr @rip(#000000) store_data[23] -attr @name ex_store_data[23] -pin core|EX store_data[23] -pin core|EX_MEM ex_store_data[23]
load net core|ex_store_data[24] -attr @rip(#000000) store_data[24] -attr @name ex_store_data[24] -pin core|EX store_data[24] -pin core|EX_MEM ex_store_data[24]
load net core|ex_store_data[25] -attr @rip(#000000) store_data[25] -attr @name ex_store_data[25] -pin core|EX store_data[25] -pin core|EX_MEM ex_store_data[25]
load net core|ex_store_data[26] -attr @rip(#000000) store_data[26] -attr @name ex_store_data[26] -pin core|EX store_data[26] -pin core|EX_MEM ex_store_data[26]
load net core|ex_store_data[27] -attr @rip(#000000) store_data[27] -attr @name ex_store_data[27] -pin core|EX store_data[27] -pin core|EX_MEM ex_store_data[27]
load net core|ex_store_data[28] -attr @rip(#000000) store_data[28] -attr @name ex_store_data[28] -pin core|EX store_data[28] -pin core|EX_MEM ex_store_data[28]
load net core|ex_store_data[29] -attr @rip(#000000) store_data[29] -attr @name ex_store_data[29] -pin core|EX store_data[29] -pin core|EX_MEM ex_store_data[29]
load net core|ex_store_data[2] -attr @rip(#000000) store_data[2] -attr @name ex_store_data[2] -pin core|EX store_data[2] -pin core|EX_MEM ex_store_data[2]
load net core|ex_store_data[30] -attr @rip(#000000) store_data[30] -attr @name ex_store_data[30] -pin core|EX store_data[30] -pin core|EX_MEM ex_store_data[30]
load net core|ex_store_data[31] -attr @rip(#000000) store_data[31] -attr @name ex_store_data[31] -pin core|EX store_data[31] -pin core|EX_MEM ex_store_data[31]
load net core|ex_store_data[3] -attr @rip(#000000) store_data[3] -attr @name ex_store_data[3] -pin core|EX store_data[3] -pin core|EX_MEM ex_store_data[3]
load net core|ex_store_data[4] -attr @rip(#000000) store_data[4] -attr @name ex_store_data[4] -pin core|EX store_data[4] -pin core|EX_MEM ex_store_data[4]
load net core|ex_store_data[5] -attr @rip(#000000) store_data[5] -attr @name ex_store_data[5] -pin core|EX store_data[5] -pin core|EX_MEM ex_store_data[5]
load net core|ex_store_data[6] -attr @rip(#000000) store_data[6] -attr @name ex_store_data[6] -pin core|EX store_data[6] -pin core|EX_MEM ex_store_data[6]
load net core|ex_store_data[7] -attr @rip(#000000) store_data[7] -attr @name ex_store_data[7] -pin core|EX store_data[7] -pin core|EX_MEM ex_store_data[7]
load net core|ex_store_data[8] -attr @rip(#000000) store_data[8] -attr @name ex_store_data[8] -pin core|EX store_data[8] -pin core|EX_MEM ex_store_data[8]
load net core|ex_store_data[9] -attr @rip(#000000) store_data[9] -attr @name ex_store_data[9] -pin core|EX store_data[9] -pin core|EX_MEM ex_store_data[9]
load net core|forward_a[0] -attr @rip(#000000) forward_a[0] -attr @name forward_a[0] -pin core|EX forward_a[0] -pin core|FU forward_a[0]
load net core|forward_a[1] -attr @rip(#000000) forward_a[1] -attr @name forward_a[1] -pin core|EX forward_a[1] -pin core|FU forward_a[1]
load net core|forward_b[0] -attr @rip(#000000) forward_b[0] -attr @name forward_b[0] -pin core|EX forward_b[0] -pin core|FU forward_b[0]
load net core|forward_b[1] -attr @rip(#000000) forward_b[1] -attr @name forward_b[1] -pin core|EX forward_b[1] -pin core|FU forward_b[1]
load net core|hazard_stall -attr @name hazard_stall -pin core|IF stall -pin core|IF_ID stall -pin core|hazard_stall_i O -pin core|if_flush_i I0
netloc core|hazard_stall 1 4 7 2570 1078 2940 1318 3480J 1218 NJ 1218 NJ 1218 NJ 1218 4860
load net core|hazard_stall0 -attr @name hazard_stall0 -pin core|hazard_stall0_i O -pin core|hazard_stall_i I0
netloc core|hazard_stall0 1 9 1 4690 1128n
load net core|hazard_stall0_i__0_n_0 -attr @name hazard_stall0_i__0_n_0 -pin core|hazard_stall0_i__0 O -pin core|hazard_stall_i I1
netloc core|hazard_stall0_i__0_n_0 1 9 1 4690 1278n
load net core|hazard_stall1 -attr @name hazard_stall1 -pin core|hazard_stall0_i I1 -pin core|hazard_stall1_i O
netloc core|hazard_stall1 1 8 1 4450 1138n
load net core|hazard_stall1_i__0_n_0 -attr @name hazard_stall1_i__0_n_0 -pin core|hazard_stall0_i__0 I0 -pin core|hazard_stall1_i__0 O
netloc core|hazard_stall1_i__0_n_0 1 8 1 4450 1688n
load net core|hazard_stall1_i__1_n_0 -attr @name hazard_stall1_i__1_n_0 -pin core|hazard_stall0_i__0 I1 -pin core|hazard_stall1_i__1 O
netloc core|hazard_stall1_i__1_n_0 1 8 1 N 1788
load net core|id_aluop[0] -attr @rip(#000000) aluop[0] -attr @name id_aluop[0] -pin core|ID aluop[0] -pin core|ID_EX id_aluop[0]
load net core|id_aluop[1] -attr @rip(#000000) aluop[1] -attr @name id_aluop[1] -pin core|ID aluop[1] -pin core|ID_EX id_aluop[1]
load net core|id_alusrc -attr @name id_alusrc -pin core|ID alusrc -pin core|ID_EX id_alusrc
netloc core|id_alusrc 1 7 5 N 358 NJ 358 NJ 358 NJ 358 NJ
load net core|id_branch -attr @name id_branch -pin core|ID branch -pin core|ID_EX id_branch
netloc core|id_branch 1 7 5 N 378 NJ 378 NJ 378 NJ 378 NJ
load net core|id_funct3[0] -attr @rip(#000000) funct3[0] -attr @name id_funct3[0] -pin core|ID funct3[0] -pin core|ID_EX id_funct3[0]
load net core|id_funct3[1] -attr @rip(#000000) funct3[1] -attr @name id_funct3[1] -pin core|ID funct3[1] -pin core|ID_EX id_funct3[1]
load net core|id_funct3[2] -attr @rip(#000000) funct3[2] -attr @name id_funct3[2] -pin core|ID funct3[2] -pin core|ID_EX id_funct3[2]
load net core|id_funct7[0] -attr @rip(#000000) funct7[0] -attr @name id_funct7[0] -pin core|ID funct7[0] -pin core|ID_EX id_funct7[0]
load net core|id_funct7[1] -attr @rip(#000000) funct7[1] -attr @name id_funct7[1] -pin core|ID funct7[1] -pin core|ID_EX id_funct7[1]
load net core|id_funct7[2] -attr @rip(#000000) funct7[2] -attr @name id_funct7[2] -pin core|ID funct7[2] -pin core|ID_EX id_funct7[2]
load net core|id_funct7[3] -attr @rip(#000000) funct7[3] -attr @name id_funct7[3] -pin core|ID funct7[3] -pin core|ID_EX id_funct7[3]
load net core|id_funct7[4] -attr @rip(#000000) funct7[4] -attr @name id_funct7[4] -pin core|ID funct7[4] -pin core|ID_EX id_funct7[4]
load net core|id_funct7[5] -attr @rip(#000000) funct7[5] -attr @name id_funct7[5] -pin core|ID funct7[5] -pin core|ID_EX id_funct7[5]
load net core|id_funct7[6] -attr @rip(#000000) funct7[6] -attr @name id_funct7[6] -pin core|ID funct7[6] -pin core|ID_EX id_funct7[6]
load net core|id_imm[0] -attr @rip(#000000) imm_out[0] -attr @name id_imm[0] -pin core|ID imm_out[0] -pin core|ID_EX id_imm[0]
load net core|id_imm[10] -attr @rip(#000000) imm_out[10] -attr @name id_imm[10] -pin core|ID imm_out[10] -pin core|ID_EX id_imm[10]
load net core|id_imm[11] -attr @rip(#000000) imm_out[11] -attr @name id_imm[11] -pin core|ID imm_out[11] -pin core|ID_EX id_imm[11]
load net core|id_imm[12] -attr @rip(#000000) imm_out[12] -attr @name id_imm[12] -pin core|ID imm_out[12] -pin core|ID_EX id_imm[12]
load net core|id_imm[13] -attr @rip(#000000) imm_out[13] -attr @name id_imm[13] -pin core|ID imm_out[13] -pin core|ID_EX id_imm[13]
load net core|id_imm[14] -attr @rip(#000000) imm_out[14] -attr @name id_imm[14] -pin core|ID imm_out[14] -pin core|ID_EX id_imm[14]
load net core|id_imm[15] -attr @rip(#000000) imm_out[15] -attr @name id_imm[15] -pin core|ID imm_out[15] -pin core|ID_EX id_imm[15]
load net core|id_imm[16] -attr @rip(#000000) imm_out[16] -attr @name id_imm[16] -pin core|ID imm_out[16] -pin core|ID_EX id_imm[16]
load net core|id_imm[17] -attr @rip(#000000) imm_out[17] -attr @name id_imm[17] -pin core|ID imm_out[17] -pin core|ID_EX id_imm[17]
load net core|id_imm[18] -attr @rip(#000000) imm_out[18] -attr @name id_imm[18] -pin core|ID imm_out[18] -pin core|ID_EX id_imm[18]
load net core|id_imm[19] -attr @rip(#000000) imm_out[19] -attr @name id_imm[19] -pin core|ID imm_out[19] -pin core|ID_EX id_imm[19]
load net core|id_imm[1] -attr @rip(#000000) imm_out[1] -attr @name id_imm[1] -pin core|ID imm_out[1] -pin core|ID_EX id_imm[1]
load net core|id_imm[20] -attr @rip(#000000) imm_out[20] -attr @name id_imm[20] -pin core|ID imm_out[20] -pin core|ID_EX id_imm[20]
load net core|id_imm[21] -attr @rip(#000000) imm_out[21] -attr @name id_imm[21] -pin core|ID imm_out[21] -pin core|ID_EX id_imm[21]
load net core|id_imm[22] -attr @rip(#000000) imm_out[22] -attr @name id_imm[22] -pin core|ID imm_out[22] -pin core|ID_EX id_imm[22]
load net core|id_imm[23] -attr @rip(#000000) imm_out[23] -attr @name id_imm[23] -pin core|ID imm_out[23] -pin core|ID_EX id_imm[23]
load net core|id_imm[24] -attr @rip(#000000) imm_out[24] -attr @name id_imm[24] -pin core|ID imm_out[24] -pin core|ID_EX id_imm[24]
load net core|id_imm[25] -attr @rip(#000000) imm_out[25] -attr @name id_imm[25] -pin core|ID imm_out[25] -pin core|ID_EX id_imm[25]
load net core|id_imm[26] -attr @rip(#000000) imm_out[26] -attr @name id_imm[26] -pin core|ID imm_out[26] -pin core|ID_EX id_imm[26]
load net core|id_imm[27] -attr @rip(#000000) imm_out[27] -attr @name id_imm[27] -pin core|ID imm_out[27] -pin core|ID_EX id_imm[27]
load net core|id_imm[28] -attr @rip(#000000) imm_out[28] -attr @name id_imm[28] -pin core|ID imm_out[28] -pin core|ID_EX id_imm[28]
load net core|id_imm[29] -attr @rip(#000000) imm_out[29] -attr @name id_imm[29] -pin core|ID imm_out[29] -pin core|ID_EX id_imm[29]
load net core|id_imm[2] -attr @rip(#000000) imm_out[2] -attr @name id_imm[2] -pin core|ID imm_out[2] -pin core|ID_EX id_imm[2]
load net core|id_imm[30] -attr @rip(#000000) imm_out[30] -attr @name id_imm[30] -pin core|ID imm_out[30] -pin core|ID_EX id_imm[30]
load net core|id_imm[31] -attr @rip(#000000) imm_out[31] -attr @name id_imm[31] -pin core|ID imm_out[31] -pin core|ID_EX id_imm[31]
load net core|id_imm[3] -attr @rip(#000000) imm_out[3] -attr @name id_imm[3] -pin core|ID imm_out[3] -pin core|ID_EX id_imm[3]
load net core|id_imm[4] -attr @rip(#000000) imm_out[4] -attr @name id_imm[4] -pin core|ID imm_out[4] -pin core|ID_EX id_imm[4]
load net core|id_imm[5] -attr @rip(#000000) imm_out[5] -attr @name id_imm[5] -pin core|ID imm_out[5] -pin core|ID_EX id_imm[5]
load net core|id_imm[6] -attr @rip(#000000) imm_out[6] -attr @name id_imm[6] -pin core|ID imm_out[6] -pin core|ID_EX id_imm[6]
load net core|id_imm[7] -attr @rip(#000000) imm_out[7] -attr @name id_imm[7] -pin core|ID imm_out[7] -pin core|ID_EX id_imm[7]
load net core|id_imm[8] -attr @rip(#000000) imm_out[8] -attr @name id_imm[8] -pin core|ID imm_out[8] -pin core|ID_EX id_imm[8]
load net core|id_imm[9] -attr @rip(#000000) imm_out[9] -attr @name id_imm[9] -pin core|ID imm_out[9] -pin core|ID_EX id_imm[9]
load net core|id_instr[0] -attr @rip(#000000) id_instr[0] -attr @name id_instr[0] -pin core|ID id_instr[0] -pin core|IF_ID id_instr[0]
load net core|id_instr[10] -attr @rip(#000000) id_instr[10] -attr @name id_instr[10] -pin core|ID id_instr[10] -pin core|IF_ID id_instr[10]
load net core|id_instr[11] -attr @rip(#000000) id_instr[11] -attr @name id_instr[11] -pin core|ID id_instr[11] -pin core|IF_ID id_instr[11]
load net core|id_instr[12] -attr @rip(#000000) id_instr[12] -attr @name id_instr[12] -pin core|ID id_instr[12] -pin core|IF_ID id_instr[12]
load net core|id_instr[13] -attr @rip(#000000) id_instr[13] -attr @name id_instr[13] -pin core|ID id_instr[13] -pin core|IF_ID id_instr[13]
load net core|id_instr[14] -attr @rip(#000000) id_instr[14] -attr @name id_instr[14] -pin core|ID id_instr[14] -pin core|IF_ID id_instr[14]
load net core|id_instr[15] -attr @rip(#000000) id_instr[15] -attr @name id_instr[15] -pin core|ID id_instr[15] -pin core|IF_ID id_instr[15]
load net core|id_instr[16] -attr @rip(#000000) id_instr[16] -attr @name id_instr[16] -pin core|ID id_instr[16] -pin core|IF_ID id_instr[16]
load net core|id_instr[17] -attr @rip(#000000) id_instr[17] -attr @name id_instr[17] -pin core|ID id_instr[17] -pin core|IF_ID id_instr[17]
load net core|id_instr[18] -attr @rip(#000000) id_instr[18] -attr @name id_instr[18] -pin core|ID id_instr[18] -pin core|IF_ID id_instr[18]
load net core|id_instr[19] -attr @rip(#000000) id_instr[19] -attr @name id_instr[19] -pin core|ID id_instr[19] -pin core|IF_ID id_instr[19]
load net core|id_instr[1] -attr @rip(#000000) id_instr[1] -attr @name id_instr[1] -pin core|ID id_instr[1] -pin core|IF_ID id_instr[1]
load net core|id_instr[20] -attr @rip(#000000) id_instr[20] -attr @name id_instr[20] -pin core|ID id_instr[20] -pin core|IF_ID id_instr[20]
load net core|id_instr[21] -attr @rip(#000000) id_instr[21] -attr @name id_instr[21] -pin core|ID id_instr[21] -pin core|IF_ID id_instr[21]
load net core|id_instr[22] -attr @rip(#000000) id_instr[22] -attr @name id_instr[22] -pin core|ID id_instr[22] -pin core|IF_ID id_instr[22]
load net core|id_instr[23] -attr @rip(#000000) id_instr[23] -attr @name id_instr[23] -pin core|ID id_instr[23] -pin core|IF_ID id_instr[23]
load net core|id_instr[24] -attr @rip(#000000) id_instr[24] -attr @name id_instr[24] -pin core|ID id_instr[24] -pin core|IF_ID id_instr[24]
load net core|id_instr[25] -attr @rip(#000000) id_instr[25] -attr @name id_instr[25] -pin core|ID id_instr[25] -pin core|IF_ID id_instr[25]
load net core|id_instr[26] -attr @rip(#000000) id_instr[26] -attr @name id_instr[26] -pin core|ID id_instr[26] -pin core|IF_ID id_instr[26]
load net core|id_instr[27] -attr @rip(#000000) id_instr[27] -attr @name id_instr[27] -pin core|ID id_instr[27] -pin core|IF_ID id_instr[27]
load net core|id_instr[28] -attr @rip(#000000) id_instr[28] -attr @name id_instr[28] -pin core|ID id_instr[28] -pin core|IF_ID id_instr[28]
load net core|id_instr[29] -attr @rip(#000000) id_instr[29] -attr @name id_instr[29] -pin core|ID id_instr[29] -pin core|IF_ID id_instr[29]
load net core|id_instr[2] -attr @rip(#000000) id_instr[2] -attr @name id_instr[2] -pin core|ID id_instr[2] -pin core|IF_ID id_instr[2]
load net core|id_instr[30] -attr @rip(#000000) id_instr[30] -attr @name id_instr[30] -pin core|ID id_instr[30] -pin core|IF_ID id_instr[30]
load net core|id_instr[31] -attr @rip(#000000) id_instr[31] -attr @name id_instr[31] -pin core|ID id_instr[31] -pin core|IF_ID id_instr[31]
load net core|id_instr[3] -attr @rip(#000000) id_instr[3] -attr @name id_instr[3] -pin core|ID id_instr[3] -pin core|IF_ID id_instr[3]
load net core|id_instr[4] -attr @rip(#000000) id_instr[4] -attr @name id_instr[4] -pin core|ID id_instr[4] -pin core|IF_ID id_instr[4]
load net core|id_instr[5] -attr @rip(#000000) id_instr[5] -attr @name id_instr[5] -pin core|ID id_instr[5] -pin core|IF_ID id_instr[5]
load net core|id_instr[6] -attr @rip(#000000) id_instr[6] -attr @name id_instr[6] -pin core|ID id_instr[6] -pin core|IF_ID id_instr[6]
load net core|id_instr[7] -attr @rip(#000000) id_instr[7] -attr @name id_instr[7] -pin core|ID id_instr[7] -pin core|IF_ID id_instr[7]
load net core|id_instr[8] -attr @rip(#000000) id_instr[8] -attr @name id_instr[8] -pin core|ID id_instr[8] -pin core|IF_ID id_instr[8]
load net core|id_instr[9] -attr @rip(#000000) id_instr[9] -attr @name id_instr[9] -pin core|ID id_instr[9] -pin core|IF_ID id_instr[9]
load net core|id_memread -attr @name id_memread -pin core|ID memread -pin core|ID_EX id_memread
netloc core|id_memread 1 7 5 3930 458 NJ 458 NJ 458 NJ 458 NJ
load net core|id_memtoreg -attr @name id_memtoreg -pin core|ID memtoreg -pin core|ID_EX id_memtoreg
netloc core|id_memtoreg 1 7 5 3950 478 NJ 478 NJ 478 NJ 478 NJ
load net core|id_memwrite -attr @name id_memwrite -pin core|ID memwrite -pin core|ID_EX id_memwrite
netloc core|id_memwrite 1 7 5 3970 498 NJ 498 NJ 498 NJ 498 NJ
load net core|id_pc[0] -attr @rip(#000000) id_pc[0] -attr @name id_pc[0] -pin core|ID id_pc[0] -pin core|ID_EX id_pc[0] -pin core|IF_ID id_pc[0]
load net core|id_pc[10] -attr @rip(#000000) id_pc[10] -attr @name id_pc[10] -pin core|ID id_pc[10] -pin core|ID_EX id_pc[10] -pin core|IF_ID id_pc[10]
load net core|id_pc[11] -attr @rip(#000000) id_pc[11] -attr @name id_pc[11] -pin core|ID id_pc[11] -pin core|ID_EX id_pc[11] -pin core|IF_ID id_pc[11]
load net core|id_pc[12] -attr @rip(#000000) id_pc[12] -attr @name id_pc[12] -pin core|ID id_pc[12] -pin core|ID_EX id_pc[12] -pin core|IF_ID id_pc[12]
load net core|id_pc[13] -attr @rip(#000000) id_pc[13] -attr @name id_pc[13] -pin core|ID id_pc[13] -pin core|ID_EX id_pc[13] -pin core|IF_ID id_pc[13]
load net core|id_pc[14] -attr @rip(#000000) id_pc[14] -attr @name id_pc[14] -pin core|ID id_pc[14] -pin core|ID_EX id_pc[14] -pin core|IF_ID id_pc[14]
load net core|id_pc[15] -attr @rip(#000000) id_pc[15] -attr @name id_pc[15] -pin core|ID id_pc[15] -pin core|ID_EX id_pc[15] -pin core|IF_ID id_pc[15]
load net core|id_pc[16] -attr @rip(#000000) id_pc[16] -attr @name id_pc[16] -pin core|ID id_pc[16] -pin core|ID_EX id_pc[16] -pin core|IF_ID id_pc[16]
load net core|id_pc[17] -attr @rip(#000000) id_pc[17] -attr @name id_pc[17] -pin core|ID id_pc[17] -pin core|ID_EX id_pc[17] -pin core|IF_ID id_pc[17]
load net core|id_pc[18] -attr @rip(#000000) id_pc[18] -attr @name id_pc[18] -pin core|ID id_pc[18] -pin core|ID_EX id_pc[18] -pin core|IF_ID id_pc[18]
load net core|id_pc[19] -attr @rip(#000000) id_pc[19] -attr @name id_pc[19] -pin core|ID id_pc[19] -pin core|ID_EX id_pc[19] -pin core|IF_ID id_pc[19]
load net core|id_pc[1] -attr @rip(#000000) id_pc[1] -attr @name id_pc[1] -pin core|ID id_pc[1] -pin core|ID_EX id_pc[1] -pin core|IF_ID id_pc[1]
load net core|id_pc[20] -attr @rip(#000000) id_pc[20] -attr @name id_pc[20] -pin core|ID id_pc[20] -pin core|ID_EX id_pc[20] -pin core|IF_ID id_pc[20]
load net core|id_pc[21] -attr @rip(#000000) id_pc[21] -attr @name id_pc[21] -pin core|ID id_pc[21] -pin core|ID_EX id_pc[21] -pin core|IF_ID id_pc[21]
load net core|id_pc[22] -attr @rip(#000000) id_pc[22] -attr @name id_pc[22] -pin core|ID id_pc[22] -pin core|ID_EX id_pc[22] -pin core|IF_ID id_pc[22]
load net core|id_pc[23] -attr @rip(#000000) id_pc[23] -attr @name id_pc[23] -pin core|ID id_pc[23] -pin core|ID_EX id_pc[23] -pin core|IF_ID id_pc[23]
load net core|id_pc[24] -attr @rip(#000000) id_pc[24] -attr @name id_pc[24] -pin core|ID id_pc[24] -pin core|ID_EX id_pc[24] -pin core|IF_ID id_pc[24]
load net core|id_pc[25] -attr @rip(#000000) id_pc[25] -attr @name id_pc[25] -pin core|ID id_pc[25] -pin core|ID_EX id_pc[25] -pin core|IF_ID id_pc[25]
load net core|id_pc[26] -attr @rip(#000000) id_pc[26] -attr @name id_pc[26] -pin core|ID id_pc[26] -pin core|ID_EX id_pc[26] -pin core|IF_ID id_pc[26]
load net core|id_pc[27] -attr @rip(#000000) id_pc[27] -attr @name id_pc[27] -pin core|ID id_pc[27] -pin core|ID_EX id_pc[27] -pin core|IF_ID id_pc[27]
load net core|id_pc[28] -attr @rip(#000000) id_pc[28] -attr @name id_pc[28] -pin core|ID id_pc[28] -pin core|ID_EX id_pc[28] -pin core|IF_ID id_pc[28]
load net core|id_pc[29] -attr @rip(#000000) id_pc[29] -attr @name id_pc[29] -pin core|ID id_pc[29] -pin core|ID_EX id_pc[29] -pin core|IF_ID id_pc[29]
load net core|id_pc[2] -attr @rip(#000000) id_pc[2] -attr @name id_pc[2] -pin core|ID id_pc[2] -pin core|ID_EX id_pc[2] -pin core|IF_ID id_pc[2]
load net core|id_pc[30] -attr @rip(#000000) id_pc[30] -attr @name id_pc[30] -pin core|ID id_pc[30] -pin core|ID_EX id_pc[30] -pin core|IF_ID id_pc[30]
load net core|id_pc[31] -attr @rip(#000000) id_pc[31] -attr @name id_pc[31] -pin core|ID id_pc[31] -pin core|ID_EX id_pc[31] -pin core|IF_ID id_pc[31]
load net core|id_pc[3] -attr @rip(#000000) id_pc[3] -attr @name id_pc[3] -pin core|ID id_pc[3] -pin core|ID_EX id_pc[3] -pin core|IF_ID id_pc[3]
load net core|id_pc[4] -attr @rip(#000000) id_pc[4] -attr @name id_pc[4] -pin core|ID id_pc[4] -pin core|ID_EX id_pc[4] -pin core|IF_ID id_pc[4]
load net core|id_pc[5] -attr @rip(#000000) id_pc[5] -attr @name id_pc[5] -pin core|ID id_pc[5] -pin core|ID_EX id_pc[5] -pin core|IF_ID id_pc[5]
load net core|id_pc[6] -attr @rip(#000000) id_pc[6] -attr @name id_pc[6] -pin core|ID id_pc[6] -pin core|ID_EX id_pc[6] -pin core|IF_ID id_pc[6]
load net core|id_pc[7] -attr @rip(#000000) id_pc[7] -attr @name id_pc[7] -pin core|ID id_pc[7] -pin core|ID_EX id_pc[7] -pin core|IF_ID id_pc[7]
load net core|id_pc[8] -attr @rip(#000000) id_pc[8] -attr @name id_pc[8] -pin core|ID id_pc[8] -pin core|ID_EX id_pc[8] -pin core|IF_ID id_pc[8]
load net core|id_pc[9] -attr @rip(#000000) id_pc[9] -attr @name id_pc[9] -pin core|ID id_pc[9] -pin core|ID_EX id_pc[9] -pin core|IF_ID id_pc[9]
load net core|id_rd[0] -attr @rip(#000000) rd[0] -attr @name id_rd[0] -pin core|ID rd[0] -pin core|ID_EX id_rd[0]
load net core|id_rd[1] -attr @rip(#000000) rd[1] -attr @name id_rd[1] -pin core|ID rd[1] -pin core|ID_EX id_rd[1]
load net core|id_rd[2] -attr @rip(#000000) rd[2] -attr @name id_rd[2] -pin core|ID rd[2] -pin core|ID_EX id_rd[2]
load net core|id_rd[3] -attr @rip(#000000) rd[3] -attr @name id_rd[3] -pin core|ID rd[3] -pin core|ID_EX id_rd[3]
load net core|id_rd[4] -attr @rip(#000000) rd[4] -attr @name id_rd[4] -pin core|ID rd[4] -pin core|ID_EX id_rd[4]
load net core|id_regwrite -attr @name id_regwrite -pin core|ID regwrite -pin core|ID_EX id_regwrite
netloc core|id_regwrite 1 7 5 4010 558 NJ 558 NJ 558 NJ 558 NJ
load net core|id_rs1[0] -attr @rip(#000000) rs1[0] -attr @name id_rs1[0] -pin core|ID rs1[0] -pin core|ID_EX id_rs1[0] -pin core|hazard_stall1_i__0 I1[0]
load net core|id_rs1[1] -attr @rip(#000000) rs1[1] -attr @name id_rs1[1] -pin core|ID rs1[1] -pin core|ID_EX id_rs1[1] -pin core|hazard_stall1_i__0 I1[1]
load net core|id_rs1[2] -attr @rip(#000000) rs1[2] -attr @name id_rs1[2] -pin core|ID rs1[2] -pin core|ID_EX id_rs1[2] -pin core|hazard_stall1_i__0 I1[2]
load net core|id_rs1[3] -attr @rip(#000000) rs1[3] -attr @name id_rs1[3] -pin core|ID rs1[3] -pin core|ID_EX id_rs1[3] -pin core|hazard_stall1_i__0 I1[3]
load net core|id_rs1[4] -attr @rip(#000000) rs1[4] -attr @name id_rs1[4] -pin core|ID rs1[4] -pin core|ID_EX id_rs1[4] -pin core|hazard_stall1_i__0 I1[4]
load net core|id_rs1_data[0] -attr @rip(#000000) rs1_data[0] -attr @name id_rs1_data[0] -pin core|ID rs1_data[0] -pin core|ID_EX id_rs1_data[0]
load net core|id_rs1_data[10] -attr @rip(#000000) rs1_data[10] -attr @name id_rs1_data[10] -pin core|ID rs1_data[10] -pin core|ID_EX id_rs1_data[10]
load net core|id_rs1_data[11] -attr @rip(#000000) rs1_data[11] -attr @name id_rs1_data[11] -pin core|ID rs1_data[11] -pin core|ID_EX id_rs1_data[11]
load net core|id_rs1_data[12] -attr @rip(#000000) rs1_data[12] -attr @name id_rs1_data[12] -pin core|ID rs1_data[12] -pin core|ID_EX id_rs1_data[12]
load net core|id_rs1_data[13] -attr @rip(#000000) rs1_data[13] -attr @name id_rs1_data[13] -pin core|ID rs1_data[13] -pin core|ID_EX id_rs1_data[13]
load net core|id_rs1_data[14] -attr @rip(#000000) rs1_data[14] -attr @name id_rs1_data[14] -pin core|ID rs1_data[14] -pin core|ID_EX id_rs1_data[14]
load net core|id_rs1_data[15] -attr @rip(#000000) rs1_data[15] -attr @name id_rs1_data[15] -pin core|ID rs1_data[15] -pin core|ID_EX id_rs1_data[15]
load net core|id_rs1_data[16] -attr @rip(#000000) rs1_data[16] -attr @name id_rs1_data[16] -pin core|ID rs1_data[16] -pin core|ID_EX id_rs1_data[16]
load net core|id_rs1_data[17] -attr @rip(#000000) rs1_data[17] -attr @name id_rs1_data[17] -pin core|ID rs1_data[17] -pin core|ID_EX id_rs1_data[17]
load net core|id_rs1_data[18] -attr @rip(#000000) rs1_data[18] -attr @name id_rs1_data[18] -pin core|ID rs1_data[18] -pin core|ID_EX id_rs1_data[18]
load net core|id_rs1_data[19] -attr @rip(#000000) rs1_data[19] -attr @name id_rs1_data[19] -pin core|ID rs1_data[19] -pin core|ID_EX id_rs1_data[19]
load net core|id_rs1_data[1] -attr @rip(#000000) rs1_data[1] -attr @name id_rs1_data[1] -pin core|ID rs1_data[1] -pin core|ID_EX id_rs1_data[1]
load net core|id_rs1_data[20] -attr @rip(#000000) rs1_data[20] -attr @name id_rs1_data[20] -pin core|ID rs1_data[20] -pin core|ID_EX id_rs1_data[20]
load net core|id_rs1_data[21] -attr @rip(#000000) rs1_data[21] -attr @name id_rs1_data[21] -pin core|ID rs1_data[21] -pin core|ID_EX id_rs1_data[21]
load net core|id_rs1_data[22] -attr @rip(#000000) rs1_data[22] -attr @name id_rs1_data[22] -pin core|ID rs1_data[22] -pin core|ID_EX id_rs1_data[22]
load net core|id_rs1_data[23] -attr @rip(#000000) rs1_data[23] -attr @name id_rs1_data[23] -pin core|ID rs1_data[23] -pin core|ID_EX id_rs1_data[23]
load net core|id_rs1_data[24] -attr @rip(#000000) rs1_data[24] -attr @name id_rs1_data[24] -pin core|ID rs1_data[24] -pin core|ID_EX id_rs1_data[24]
load net core|id_rs1_data[25] -attr @rip(#000000) rs1_data[25] -attr @name id_rs1_data[25] -pin core|ID rs1_data[25] -pin core|ID_EX id_rs1_data[25]
load net core|id_rs1_data[26] -attr @rip(#000000) rs1_data[26] -attr @name id_rs1_data[26] -pin core|ID rs1_data[26] -pin core|ID_EX id_rs1_data[26]
load net core|id_rs1_data[27] -attr @rip(#000000) rs1_data[27] -attr @name id_rs1_data[27] -pin core|ID rs1_data[27] -pin core|ID_EX id_rs1_data[27]
load net core|id_rs1_data[28] -attr @rip(#000000) rs1_data[28] -attr @name id_rs1_data[28] -pin core|ID rs1_data[28] -pin core|ID_EX id_rs1_data[28]
load net core|id_rs1_data[29] -attr @rip(#000000) rs1_data[29] -attr @name id_rs1_data[29] -pin core|ID rs1_data[29] -pin core|ID_EX id_rs1_data[29]
load net core|id_rs1_data[2] -attr @rip(#000000) rs1_data[2] -attr @name id_rs1_data[2] -pin core|ID rs1_data[2] -pin core|ID_EX id_rs1_data[2]
load net core|id_rs1_data[30] -attr @rip(#000000) rs1_data[30] -attr @name id_rs1_data[30] -pin core|ID rs1_data[30] -pin core|ID_EX id_rs1_data[30]
load net core|id_rs1_data[31] -attr @rip(#000000) rs1_data[31] -attr @name id_rs1_data[31] -pin core|ID rs1_data[31] -pin core|ID_EX id_rs1_data[31]
load net core|id_rs1_data[3] -attr @rip(#000000) rs1_data[3] -attr @name id_rs1_data[3] -pin core|ID rs1_data[3] -pin core|ID_EX id_rs1_data[3]
load net core|id_rs1_data[4] -attr @rip(#000000) rs1_data[4] -attr @name id_rs1_data[4] -pin core|ID rs1_data[4] -pin core|ID_EX id_rs1_data[4]
load net core|id_rs1_data[5] -attr @rip(#000000) rs1_data[5] -attr @name id_rs1_data[5] -pin core|ID rs1_data[5] -pin core|ID_EX id_rs1_data[5]
load net core|id_rs1_data[6] -attr @rip(#000000) rs1_data[6] -attr @name id_rs1_data[6] -pin core|ID rs1_data[6] -pin core|ID_EX id_rs1_data[6]
load net core|id_rs1_data[7] -attr @rip(#000000) rs1_data[7] -attr @name id_rs1_data[7] -pin core|ID rs1_data[7] -pin core|ID_EX id_rs1_data[7]
load net core|id_rs1_data[8] -attr @rip(#000000) rs1_data[8] -attr @name id_rs1_data[8] -pin core|ID rs1_data[8] -pin core|ID_EX id_rs1_data[8]
load net core|id_rs1_data[9] -attr @rip(#000000) rs1_data[9] -attr @name id_rs1_data[9] -pin core|ID rs1_data[9] -pin core|ID_EX id_rs1_data[9]
load net core|id_rs2[0] -attr @rip(#000000) rs2[0] -attr @name id_rs2[0] -pin core|ID rs2[0] -pin core|ID_EX id_rs2[0] -pin core|hazard_stall1_i__1 I1[0]
load net core|id_rs2[1] -attr @rip(#000000) rs2[1] -attr @name id_rs2[1] -pin core|ID rs2[1] -pin core|ID_EX id_rs2[1] -pin core|hazard_stall1_i__1 I1[1]
load net core|id_rs2[2] -attr @rip(#000000) rs2[2] -attr @name id_rs2[2] -pin core|ID rs2[2] -pin core|ID_EX id_rs2[2] -pin core|hazard_stall1_i__1 I1[2]
load net core|id_rs2[3] -attr @rip(#000000) rs2[3] -attr @name id_rs2[3] -pin core|ID rs2[3] -pin core|ID_EX id_rs2[3] -pin core|hazard_stall1_i__1 I1[3]
load net core|id_rs2[4] -attr @rip(#000000) rs2[4] -attr @name id_rs2[4] -pin core|ID rs2[4] -pin core|ID_EX id_rs2[4] -pin core|hazard_stall1_i__1 I1[4]
load net core|id_rs2_data[0] -attr @rip(#000000) rs2_data[0] -attr @name id_rs2_data[0] -pin core|ID rs2_data[0] -pin core|ID_EX id_rs2_data[0]
load net core|id_rs2_data[10] -attr @rip(#000000) rs2_data[10] -attr @name id_rs2_data[10] -pin core|ID rs2_data[10] -pin core|ID_EX id_rs2_data[10]
load net core|id_rs2_data[11] -attr @rip(#000000) rs2_data[11] -attr @name id_rs2_data[11] -pin core|ID rs2_data[11] -pin core|ID_EX id_rs2_data[11]
load net core|id_rs2_data[12] -attr @rip(#000000) rs2_data[12] -attr @name id_rs2_data[12] -pin core|ID rs2_data[12] -pin core|ID_EX id_rs2_data[12]
load net core|id_rs2_data[13] -attr @rip(#000000) rs2_data[13] -attr @name id_rs2_data[13] -pin core|ID rs2_data[13] -pin core|ID_EX id_rs2_data[13]
load net core|id_rs2_data[14] -attr @rip(#000000) rs2_data[14] -attr @name id_rs2_data[14] -pin core|ID rs2_data[14] -pin core|ID_EX id_rs2_data[14]
load net core|id_rs2_data[15] -attr @rip(#000000) rs2_data[15] -attr @name id_rs2_data[15] -pin core|ID rs2_data[15] -pin core|ID_EX id_rs2_data[15]
load net core|id_rs2_data[16] -attr @rip(#000000) rs2_data[16] -attr @name id_rs2_data[16] -pin core|ID rs2_data[16] -pin core|ID_EX id_rs2_data[16]
load net core|id_rs2_data[17] -attr @rip(#000000) rs2_data[17] -attr @name id_rs2_data[17] -pin core|ID rs2_data[17] -pin core|ID_EX id_rs2_data[17]
load net core|id_rs2_data[18] -attr @rip(#000000) rs2_data[18] -attr @name id_rs2_data[18] -pin core|ID rs2_data[18] -pin core|ID_EX id_rs2_data[18]
load net core|id_rs2_data[19] -attr @rip(#000000) rs2_data[19] -attr @name id_rs2_data[19] -pin core|ID rs2_data[19] -pin core|ID_EX id_rs2_data[19]
load net core|id_rs2_data[1] -attr @rip(#000000) rs2_data[1] -attr @name id_rs2_data[1] -pin core|ID rs2_data[1] -pin core|ID_EX id_rs2_data[1]
load net core|id_rs2_data[20] -attr @rip(#000000) rs2_data[20] -attr @name id_rs2_data[20] -pin core|ID rs2_data[20] -pin core|ID_EX id_rs2_data[20]
load net core|id_rs2_data[21] -attr @rip(#000000) rs2_data[21] -attr @name id_rs2_data[21] -pin core|ID rs2_data[21] -pin core|ID_EX id_rs2_data[21]
load net core|id_rs2_data[22] -attr @rip(#000000) rs2_data[22] -attr @name id_rs2_data[22] -pin core|ID rs2_data[22] -pin core|ID_EX id_rs2_data[22]
load net core|id_rs2_data[23] -attr @rip(#000000) rs2_data[23] -attr @name id_rs2_data[23] -pin core|ID rs2_data[23] -pin core|ID_EX id_rs2_data[23]
load net core|id_rs2_data[24] -attr @rip(#000000) rs2_data[24] -attr @name id_rs2_data[24] -pin core|ID rs2_data[24] -pin core|ID_EX id_rs2_data[24]
load net core|id_rs2_data[25] -attr @rip(#000000) rs2_data[25] -attr @name id_rs2_data[25] -pin core|ID rs2_data[25] -pin core|ID_EX id_rs2_data[25]
load net core|id_rs2_data[26] -attr @rip(#000000) rs2_data[26] -attr @name id_rs2_data[26] -pin core|ID rs2_data[26] -pin core|ID_EX id_rs2_data[26]
load net core|id_rs2_data[27] -attr @rip(#000000) rs2_data[27] -attr @name id_rs2_data[27] -pin core|ID rs2_data[27] -pin core|ID_EX id_rs2_data[27]
load net core|id_rs2_data[28] -attr @rip(#000000) rs2_data[28] -attr @name id_rs2_data[28] -pin core|ID rs2_data[28] -pin core|ID_EX id_rs2_data[28]
load net core|id_rs2_data[29] -attr @rip(#000000) rs2_data[29] -attr @name id_rs2_data[29] -pin core|ID rs2_data[29] -pin core|ID_EX id_rs2_data[29]
load net core|id_rs2_data[2] -attr @rip(#000000) rs2_data[2] -attr @name id_rs2_data[2] -pin core|ID rs2_data[2] -pin core|ID_EX id_rs2_data[2]
load net core|id_rs2_data[30] -attr @rip(#000000) rs2_data[30] -attr @name id_rs2_data[30] -pin core|ID rs2_data[30] -pin core|ID_EX id_rs2_data[30]
load net core|id_rs2_data[31] -attr @rip(#000000) rs2_data[31] -attr @name id_rs2_data[31] -pin core|ID rs2_data[31] -pin core|ID_EX id_rs2_data[31]
load net core|id_rs2_data[3] -attr @rip(#000000) rs2_data[3] -attr @name id_rs2_data[3] -pin core|ID rs2_data[3] -pin core|ID_EX id_rs2_data[3]
load net core|id_rs2_data[4] -attr @rip(#000000) rs2_data[4] -attr @name id_rs2_data[4] -pin core|ID rs2_data[4] -pin core|ID_EX id_rs2_data[4]
load net core|id_rs2_data[5] -attr @rip(#000000) rs2_data[5] -attr @name id_rs2_data[5] -pin core|ID rs2_data[5] -pin core|ID_EX id_rs2_data[5]
load net core|id_rs2_data[6] -attr @rip(#000000) rs2_data[6] -attr @name id_rs2_data[6] -pin core|ID rs2_data[6] -pin core|ID_EX id_rs2_data[6]
load net core|id_rs2_data[7] -attr @rip(#000000) rs2_data[7] -attr @name id_rs2_data[7] -pin core|ID rs2_data[7] -pin core|ID_EX id_rs2_data[7]
load net core|id_rs2_data[8] -attr @rip(#000000) rs2_data[8] -attr @name id_rs2_data[8] -pin core|ID rs2_data[8] -pin core|ID_EX id_rs2_data[8]
load net core|id_rs2_data[9] -attr @rip(#000000) rs2_data[9] -attr @name id_rs2_data[9] -pin core|ID rs2_data[9] -pin core|ID_EX id_rs2_data[9]
load net core|if_flush -attr @name if_flush -pin core|ID_EX flush -pin core|IF flush -pin core|IF_ID flush -pin core|if_flush_i O
netloc core|if_flush 1 4 8 2590 1298 3020 1278 3380J 1178 NJ 1178 NJ 1178 NJ 1178 NJ 1178 5160
load net core|if_instr[0] -attr @rip(#000000) instr_out[0] -attr @name if_instr[0] -pin core|IF instr_out[0] -pin core|IF_ID if_instr[0]
load net core|if_instr[10] -attr @rip(#000000) instr_out[10] -attr @name if_instr[10] -pin core|IF instr_out[10] -pin core|IF_ID if_instr[10]
load net core|if_instr[11] -attr @rip(#000000) instr_out[11] -attr @name if_instr[11] -pin core|IF instr_out[11] -pin core|IF_ID if_instr[11]
load net core|if_instr[12] -attr @rip(#000000) instr_out[12] -attr @name if_instr[12] -pin core|IF instr_out[12] -pin core|IF_ID if_instr[12]
load net core|if_instr[13] -attr @rip(#000000) instr_out[13] -attr @name if_instr[13] -pin core|IF instr_out[13] -pin core|IF_ID if_instr[13]
load net core|if_instr[14] -attr @rip(#000000) instr_out[14] -attr @name if_instr[14] -pin core|IF instr_out[14] -pin core|IF_ID if_instr[14]
load net core|if_instr[15] -attr @rip(#000000) instr_out[15] -attr @name if_instr[15] -pin core|IF instr_out[15] -pin core|IF_ID if_instr[15]
load net core|if_instr[16] -attr @rip(#000000) instr_out[16] -attr @name if_instr[16] -pin core|IF instr_out[16] -pin core|IF_ID if_instr[16]
load net core|if_instr[17] -attr @rip(#000000) instr_out[17] -attr @name if_instr[17] -pin core|IF instr_out[17] -pin core|IF_ID if_instr[17]
load net core|if_instr[18] -attr @rip(#000000) instr_out[18] -attr @name if_instr[18] -pin core|IF instr_out[18] -pin core|IF_ID if_instr[18]
load net core|if_instr[19] -attr @rip(#000000) instr_out[19] -attr @name if_instr[19] -pin core|IF instr_out[19] -pin core|IF_ID if_instr[19]
load net core|if_instr[1] -attr @rip(#000000) instr_out[1] -attr @name if_instr[1] -pin core|IF instr_out[1] -pin core|IF_ID if_instr[1]
load net core|if_instr[20] -attr @rip(#000000) instr_out[20] -attr @name if_instr[20] -pin core|IF instr_out[20] -pin core|IF_ID if_instr[20]
load net core|if_instr[21] -attr @rip(#000000) instr_out[21] -attr @name if_instr[21] -pin core|IF instr_out[21] -pin core|IF_ID if_instr[21]
load net core|if_instr[22] -attr @rip(#000000) instr_out[22] -attr @name if_instr[22] -pin core|IF instr_out[22] -pin core|IF_ID if_instr[22]
load net core|if_instr[23] -attr @rip(#000000) instr_out[23] -attr @name if_instr[23] -pin core|IF instr_out[23] -pin core|IF_ID if_instr[23]
load net core|if_instr[24] -attr @rip(#000000) instr_out[24] -attr @name if_instr[24] -pin core|IF instr_out[24] -pin core|IF_ID if_instr[24]
load net core|if_instr[25] -attr @rip(#000000) instr_out[25] -attr @name if_instr[25] -pin core|IF instr_out[25] -pin core|IF_ID if_instr[25]
load net core|if_instr[26] -attr @rip(#000000) instr_out[26] -attr @name if_instr[26] -pin core|IF instr_out[26] -pin core|IF_ID if_instr[26]
load net core|if_instr[27] -attr @rip(#000000) instr_out[27] -attr @name if_instr[27] -pin core|IF instr_out[27] -pin core|IF_ID if_instr[27]
load net core|if_instr[28] -attr @rip(#000000) instr_out[28] -attr @name if_instr[28] -pin core|IF instr_out[28] -pin core|IF_ID if_instr[28]
load net core|if_instr[29] -attr @rip(#000000) instr_out[29] -attr @name if_instr[29] -pin core|IF instr_out[29] -pin core|IF_ID if_instr[29]
load net core|if_instr[2] -attr @rip(#000000) instr_out[2] -attr @name if_instr[2] -pin core|IF instr_out[2] -pin core|IF_ID if_instr[2]
load net core|if_instr[30] -attr @rip(#000000) instr_out[30] -attr @name if_instr[30] -pin core|IF instr_out[30] -pin core|IF_ID if_instr[30]
load net core|if_instr[31] -attr @rip(#000000) instr_out[31] -attr @name if_instr[31] -pin core|IF instr_out[31] -pin core|IF_ID if_instr[31]
load net core|if_instr[3] -attr @rip(#000000) instr_out[3] -attr @name if_instr[3] -pin core|IF instr_out[3] -pin core|IF_ID if_instr[3]
load net core|if_instr[4] -attr @rip(#000000) instr_out[4] -attr @name if_instr[4] -pin core|IF instr_out[4] -pin core|IF_ID if_instr[4]
load net core|if_instr[5] -attr @rip(#000000) instr_out[5] -attr @name if_instr[5] -pin core|IF instr_out[5] -pin core|IF_ID if_instr[5]
load net core|if_instr[6] -attr @rip(#000000) instr_out[6] -attr @name if_instr[6] -pin core|IF instr_out[6] -pin core|IF_ID if_instr[6]
load net core|if_instr[7] -attr @rip(#000000) instr_out[7] -attr @name if_instr[7] -pin core|IF instr_out[7] -pin core|IF_ID if_instr[7]
load net core|if_instr[8] -attr @rip(#000000) instr_out[8] -attr @name if_instr[8] -pin core|IF instr_out[8] -pin core|IF_ID if_instr[8]
load net core|if_instr[9] -attr @rip(#000000) instr_out[9] -attr @name if_instr[9] -pin core|IF instr_out[9] -pin core|IF_ID if_instr[9]
load net core|if_pc[0] -attr @rip(#000000) pc_out[0] -attr @name if_pc[0] -pin core|IF pc_out[0] -pin core|IF_ID if_pc[0]
load net core|if_pc[10] -attr @rip(#000000) pc_out[10] -attr @name if_pc[10] -pin core|IF pc_out[10] -pin core|IF_ID if_pc[10]
load net core|if_pc[11] -attr @rip(#000000) pc_out[11] -attr @name if_pc[11] -pin core|IF pc_out[11] -pin core|IF_ID if_pc[11]
load net core|if_pc[12] -attr @rip(#000000) pc_out[12] -attr @name if_pc[12] -pin core|IF pc_out[12] -pin core|IF_ID if_pc[12]
load net core|if_pc[13] -attr @rip(#000000) pc_out[13] -attr @name if_pc[13] -pin core|IF pc_out[13] -pin core|IF_ID if_pc[13]
load net core|if_pc[14] -attr @rip(#000000) pc_out[14] -attr @name if_pc[14] -pin core|IF pc_out[14] -pin core|IF_ID if_pc[14]
load net core|if_pc[15] -attr @rip(#000000) pc_out[15] -attr @name if_pc[15] -pin core|IF pc_out[15] -pin core|IF_ID if_pc[15]
load net core|if_pc[16] -attr @rip(#000000) pc_out[16] -attr @name if_pc[16] -pin core|IF pc_out[16] -pin core|IF_ID if_pc[16]
load net core|if_pc[17] -attr @rip(#000000) pc_out[17] -attr @name if_pc[17] -pin core|IF pc_out[17] -pin core|IF_ID if_pc[17]
load net core|if_pc[18] -attr @rip(#000000) pc_out[18] -attr @name if_pc[18] -pin core|IF pc_out[18] -pin core|IF_ID if_pc[18]
load net core|if_pc[19] -attr @rip(#000000) pc_out[19] -attr @name if_pc[19] -pin core|IF pc_out[19] -pin core|IF_ID if_pc[19]
load net core|if_pc[1] -attr @rip(#000000) pc_out[1] -attr @name if_pc[1] -pin core|IF pc_out[1] -pin core|IF_ID if_pc[1]
load net core|if_pc[20] -attr @rip(#000000) pc_out[20] -attr @name if_pc[20] -pin core|IF pc_out[20] -pin core|IF_ID if_pc[20]
load net core|if_pc[21] -attr @rip(#000000) pc_out[21] -attr @name if_pc[21] -pin core|IF pc_out[21] -pin core|IF_ID if_pc[21]
load net core|if_pc[22] -attr @rip(#000000) pc_out[22] -attr @name if_pc[22] -pin core|IF pc_out[22] -pin core|IF_ID if_pc[22]
load net core|if_pc[23] -attr @rip(#000000) pc_out[23] -attr @name if_pc[23] -pin core|IF pc_out[23] -pin core|IF_ID if_pc[23]
load net core|if_pc[24] -attr @rip(#000000) pc_out[24] -attr @name if_pc[24] -pin core|IF pc_out[24] -pin core|IF_ID if_pc[24]
load net core|if_pc[25] -attr @rip(#000000) pc_out[25] -attr @name if_pc[25] -pin core|IF pc_out[25] -pin core|IF_ID if_pc[25]
load net core|if_pc[26] -attr @rip(#000000) pc_out[26] -attr @name if_pc[26] -pin core|IF pc_out[26] -pin core|IF_ID if_pc[26]
load net core|if_pc[27] -attr @rip(#000000) pc_out[27] -attr @name if_pc[27] -pin core|IF pc_out[27] -pin core|IF_ID if_pc[27]
load net core|if_pc[28] -attr @rip(#000000) pc_out[28] -attr @name if_pc[28] -pin core|IF pc_out[28] -pin core|IF_ID if_pc[28]
load net core|if_pc[29] -attr @rip(#000000) pc_out[29] -attr @name if_pc[29] -pin core|IF pc_out[29] -pin core|IF_ID if_pc[29]
load net core|if_pc[2] -attr @rip(#000000) pc_out[2] -attr @name if_pc[2] -pin core|IF pc_out[2] -pin core|IF_ID if_pc[2]
load net core|if_pc[30] -attr @rip(#000000) pc_out[30] -attr @name if_pc[30] -pin core|IF pc_out[30] -pin core|IF_ID if_pc[30]
load net core|if_pc[31] -attr @rip(#000000) pc_out[31] -attr @name if_pc[31] -pin core|IF pc_out[31] -pin core|IF_ID if_pc[31]
load net core|if_pc[3] -attr @rip(#000000) pc_out[3] -attr @name if_pc[3] -pin core|IF pc_out[3] -pin core|IF_ID if_pc[3]
load net core|if_pc[4] -attr @rip(#000000) pc_out[4] -attr @name if_pc[4] -pin core|IF pc_out[4] -pin core|IF_ID if_pc[4]
load net core|if_pc[5] -attr @rip(#000000) pc_out[5] -attr @name if_pc[5] -pin core|IF pc_out[5] -pin core|IF_ID if_pc[5]
load net core|if_pc[6] -attr @rip(#000000) pc_out[6] -attr @name if_pc[6] -pin core|IF pc_out[6] -pin core|IF_ID if_pc[6]
load net core|if_pc[7] -attr @rip(#000000) pc_out[7] -attr @name if_pc[7] -pin core|IF pc_out[7] -pin core|IF_ID if_pc[7]
load net core|if_pc[8] -attr @rip(#000000) pc_out[8] -attr @name if_pc[8] -pin core|IF pc_out[8] -pin core|IF_ID if_pc[8]
load net core|if_pc[9] -attr @rip(#000000) pc_out[9] -attr @name if_pc[9] -pin core|IF pc_out[9] -pin core|IF_ID if_pc[9]
load net core|imem_addr[0] -attr @rip(#000000) imem_addr[0] -attr @name imem_addr[0] -hierPin core imem_addr[0] -pin core|IF imem_addr[0]
load net core|imem_addr[10] -attr @rip(#000000) imem_addr[10] -attr @name imem_addr[10] -hierPin core imem_addr[10] -pin core|IF imem_addr[10]
load net core|imem_addr[11] -attr @rip(#000000) imem_addr[11] -attr @name imem_addr[11] -hierPin core imem_addr[11] -pin core|IF imem_addr[11]
load net core|imem_addr[12] -attr @rip(#000000) imem_addr[12] -attr @name imem_addr[12] -hierPin core imem_addr[12] -pin core|IF imem_addr[12]
load net core|imem_addr[13] -attr @rip(#000000) imem_addr[13] -attr @name imem_addr[13] -hierPin core imem_addr[13] -pin core|IF imem_addr[13]
load net core|imem_addr[14] -attr @rip(#000000) imem_addr[14] -attr @name imem_addr[14] -hierPin core imem_addr[14] -pin core|IF imem_addr[14]
load net core|imem_addr[15] -attr @rip(#000000) imem_addr[15] -attr @name imem_addr[15] -hierPin core imem_addr[15] -pin core|IF imem_addr[15]
load net core|imem_addr[16] -attr @rip(#000000) imem_addr[16] -attr @name imem_addr[16] -hierPin core imem_addr[16] -pin core|IF imem_addr[16]
load net core|imem_addr[17] -attr @rip(#000000) imem_addr[17] -attr @name imem_addr[17] -hierPin core imem_addr[17] -pin core|IF imem_addr[17]
load net core|imem_addr[18] -attr @rip(#000000) imem_addr[18] -attr @name imem_addr[18] -hierPin core imem_addr[18] -pin core|IF imem_addr[18]
load net core|imem_addr[19] -attr @rip(#000000) imem_addr[19] -attr @name imem_addr[19] -hierPin core imem_addr[19] -pin core|IF imem_addr[19]
load net core|imem_addr[1] -attr @rip(#000000) imem_addr[1] -attr @name imem_addr[1] -hierPin core imem_addr[1] -pin core|IF imem_addr[1]
load net core|imem_addr[20] -attr @rip(#000000) imem_addr[20] -attr @name imem_addr[20] -hierPin core imem_addr[20] -pin core|IF imem_addr[20]
load net core|imem_addr[21] -attr @rip(#000000) imem_addr[21] -attr @name imem_addr[21] -hierPin core imem_addr[21] -pin core|IF imem_addr[21]
load net core|imem_addr[22] -attr @rip(#000000) imem_addr[22] -attr @name imem_addr[22] -hierPin core imem_addr[22] -pin core|IF imem_addr[22]
load net core|imem_addr[23] -attr @rip(#000000) imem_addr[23] -attr @name imem_addr[23] -hierPin core imem_addr[23] -pin core|IF imem_addr[23]
load net core|imem_addr[24] -attr @rip(#000000) imem_addr[24] -attr @name imem_addr[24] -hierPin core imem_addr[24] -pin core|IF imem_addr[24]
load net core|imem_addr[25] -attr @rip(#000000) imem_addr[25] -attr @name imem_addr[25] -hierPin core imem_addr[25] -pin core|IF imem_addr[25]
load net core|imem_addr[26] -attr @rip(#000000) imem_addr[26] -attr @name imem_addr[26] -hierPin core imem_addr[26] -pin core|IF imem_addr[26]
load net core|imem_addr[27] -attr @rip(#000000) imem_addr[27] -attr @name imem_addr[27] -hierPin core imem_addr[27] -pin core|IF imem_addr[27]
load net core|imem_addr[28] -attr @rip(#000000) imem_addr[28] -attr @name imem_addr[28] -hierPin core imem_addr[28] -pin core|IF imem_addr[28]
load net core|imem_addr[29] -attr @rip(#000000) imem_addr[29] -attr @name imem_addr[29] -hierPin core imem_addr[29] -pin core|IF imem_addr[29]
load net core|imem_addr[2] -attr @rip(#000000) imem_addr[2] -attr @name imem_addr[2] -hierPin core imem_addr[2] -pin core|IF imem_addr[2]
load net core|imem_addr[30] -attr @rip(#000000) imem_addr[30] -attr @name imem_addr[30] -hierPin core imem_addr[30] -pin core|IF imem_addr[30]
load net core|imem_addr[31] -attr @rip(#000000) imem_addr[31] -attr @name imem_addr[31] -hierPin core imem_addr[31] -pin core|IF imem_addr[31]
load net core|imem_addr[3] -attr @rip(#000000) imem_addr[3] -attr @name imem_addr[3] -hierPin core imem_addr[3] -pin core|IF imem_addr[3]
load net core|imem_addr[4] -attr @rip(#000000) imem_addr[4] -attr @name imem_addr[4] -hierPin core imem_addr[4] -pin core|IF imem_addr[4]
load net core|imem_addr[5] -attr @rip(#000000) imem_addr[5] -attr @name imem_addr[5] -hierPin core imem_addr[5] -pin core|IF imem_addr[5]
load net core|imem_addr[6] -attr @rip(#000000) imem_addr[6] -attr @name imem_addr[6] -hierPin core imem_addr[6] -pin core|IF imem_addr[6]
load net core|imem_addr[7] -attr @rip(#000000) imem_addr[7] -attr @name imem_addr[7] -hierPin core imem_addr[7] -pin core|IF imem_addr[7]
load net core|imem_addr[8] -attr @rip(#000000) imem_addr[8] -attr @name imem_addr[8] -hierPin core imem_addr[8] -pin core|IF imem_addr[8]
load net core|imem_addr[9] -attr @rip(#000000) imem_addr[9] -attr @name imem_addr[9] -hierPin core imem_addr[9] -pin core|IF imem_addr[9]
load net core|imem_rdata[0] -attr @rip(#000000) imem_rdata[0] -attr @name imem_rdata[0] -hierPin core imem_rdata[0] -pin core|IF imem_rdata[0]
load net core|imem_rdata[10] -attr @rip(#000000) imem_rdata[10] -attr @name imem_rdata[10] -hierPin core imem_rdata[10] -pin core|IF imem_rdata[10]
load net core|imem_rdata[11] -attr @rip(#000000) imem_rdata[11] -attr @name imem_rdata[11] -hierPin core imem_rdata[11] -pin core|IF imem_rdata[11]
load net core|imem_rdata[12] -attr @rip(#000000) imem_rdata[12] -attr @name imem_rdata[12] -hierPin core imem_rdata[12] -pin core|IF imem_rdata[12]
load net core|imem_rdata[13] -attr @rip(#000000) imem_rdata[13] -attr @name imem_rdata[13] -hierPin core imem_rdata[13] -pin core|IF imem_rdata[13]
load net core|imem_rdata[14] -attr @rip(#000000) imem_rdata[14] -attr @name imem_rdata[14] -hierPin core imem_rdata[14] -pin core|IF imem_rdata[14]
load net core|imem_rdata[15] -attr @rip(#000000) imem_rdata[15] -attr @name imem_rdata[15] -hierPin core imem_rdata[15] -pin core|IF imem_rdata[15]
load net core|imem_rdata[16] -attr @rip(#000000) imem_rdata[16] -attr @name imem_rdata[16] -hierPin core imem_rdata[16] -pin core|IF imem_rdata[16]
load net core|imem_rdata[17] -attr @rip(#000000) imem_rdata[17] -attr @name imem_rdata[17] -hierPin core imem_rdata[17] -pin core|IF imem_rdata[17]
load net core|imem_rdata[18] -attr @rip(#000000) imem_rdata[18] -attr @name imem_rdata[18] -hierPin core imem_rdata[18] -pin core|IF imem_rdata[18]
load net core|imem_rdata[19] -attr @rip(#000000) imem_rdata[19] -attr @name imem_rdata[19] -hierPin core imem_rdata[19] -pin core|IF imem_rdata[19]
load net core|imem_rdata[1] -attr @rip(#000000) imem_rdata[1] -attr @name imem_rdata[1] -hierPin core imem_rdata[1] -pin core|IF imem_rdata[1]
load net core|imem_rdata[20] -attr @rip(#000000) imem_rdata[20] -attr @name imem_rdata[20] -hierPin core imem_rdata[20] -pin core|IF imem_rdata[20]
load net core|imem_rdata[21] -attr @rip(#000000) imem_rdata[21] -attr @name imem_rdata[21] -hierPin core imem_rdata[21] -pin core|IF imem_rdata[21]
load net core|imem_rdata[22] -attr @rip(#000000) imem_rdata[22] -attr @name imem_rdata[22] -hierPin core imem_rdata[22] -pin core|IF imem_rdata[22]
load net core|imem_rdata[23] -attr @rip(#000000) imem_rdata[23] -attr @name imem_rdata[23] -hierPin core imem_rdata[23] -pin core|IF imem_rdata[23]
load net core|imem_rdata[24] -attr @rip(#000000) imem_rdata[24] -attr @name imem_rdata[24] -hierPin core imem_rdata[24] -pin core|IF imem_rdata[24]
load net core|imem_rdata[25] -attr @rip(#000000) imem_rdata[25] -attr @name imem_rdata[25] -hierPin core imem_rdata[25] -pin core|IF imem_rdata[25]
load net core|imem_rdata[26] -attr @rip(#000000) imem_rdata[26] -attr @name imem_rdata[26] -hierPin core imem_rdata[26] -pin core|IF imem_rdata[26]
load net core|imem_rdata[27] -attr @rip(#000000) imem_rdata[27] -attr @name imem_rdata[27] -hierPin core imem_rdata[27] -pin core|IF imem_rdata[27]
load net core|imem_rdata[28] -attr @rip(#000000) imem_rdata[28] -attr @name imem_rdata[28] -hierPin core imem_rdata[28] -pin core|IF imem_rdata[28]
load net core|imem_rdata[29] -attr @rip(#000000) imem_rdata[29] -attr @name imem_rdata[29] -hierPin core imem_rdata[29] -pin core|IF imem_rdata[29]
load net core|imem_rdata[2] -attr @rip(#000000) imem_rdata[2] -attr @name imem_rdata[2] -hierPin core imem_rdata[2] -pin core|IF imem_rdata[2]
load net core|imem_rdata[30] -attr @rip(#000000) imem_rdata[30] -attr @name imem_rdata[30] -hierPin core imem_rdata[30] -pin core|IF imem_rdata[30]
load net core|imem_rdata[31] -attr @rip(#000000) imem_rdata[31] -attr @name imem_rdata[31] -hierPin core imem_rdata[31] -pin core|IF imem_rdata[31]
load net core|imem_rdata[3] -attr @rip(#000000) imem_rdata[3] -attr @name imem_rdata[3] -hierPin core imem_rdata[3] -pin core|IF imem_rdata[3]
load net core|imem_rdata[4] -attr @rip(#000000) imem_rdata[4] -attr @name imem_rdata[4] -hierPin core imem_rdata[4] -pin core|IF imem_rdata[4]
load net core|imem_rdata[5] -attr @rip(#000000) imem_rdata[5] -attr @name imem_rdata[5] -hierPin core imem_rdata[5] -pin core|IF imem_rdata[5]
load net core|imem_rdata[6] -attr @rip(#000000) imem_rdata[6] -attr @name imem_rdata[6] -hierPin core imem_rdata[6] -pin core|IF imem_rdata[6]
load net core|imem_rdata[7] -attr @rip(#000000) imem_rdata[7] -attr @name imem_rdata[7] -hierPin core imem_rdata[7] -pin core|IF imem_rdata[7]
load net core|imem_rdata[8] -attr @rip(#000000) imem_rdata[8] -attr @name imem_rdata[8] -hierPin core imem_rdata[8] -pin core|IF imem_rdata[8]
load net core|imem_rdata[9] -attr @rip(#000000) imem_rdata[9] -attr @name imem_rdata[9] -hierPin core imem_rdata[9] -pin core|IF imem_rdata[9]
load net core|mem_alu_result[0] -attr @rip(#000000) mem_alu_result[0] -attr @name mem_alu_result[0] -pin core|EX exmem_alu_result[0] -pin core|EX_MEM mem_alu_result[0] -pin core|MEM mem_alu_result[0]
load net core|mem_alu_result[10] -attr @rip(#000000) mem_alu_result[10] -attr @name mem_alu_result[10] -pin core|EX exmem_alu_result[10] -pin core|EX_MEM mem_alu_result[10] -pin core|MEM mem_alu_result[10]
load net core|mem_alu_result[11] -attr @rip(#000000) mem_alu_result[11] -attr @name mem_alu_result[11] -pin core|EX exmem_alu_result[11] -pin core|EX_MEM mem_alu_result[11] -pin core|MEM mem_alu_result[11]
load net core|mem_alu_result[12] -attr @rip(#000000) mem_alu_result[12] -attr @name mem_alu_result[12] -pin core|EX exmem_alu_result[12] -pin core|EX_MEM mem_alu_result[12] -pin core|MEM mem_alu_result[12]
load net core|mem_alu_result[13] -attr @rip(#000000) mem_alu_result[13] -attr @name mem_alu_result[13] -pin core|EX exmem_alu_result[13] -pin core|EX_MEM mem_alu_result[13] -pin core|MEM mem_alu_result[13]
load net core|mem_alu_result[14] -attr @rip(#000000) mem_alu_result[14] -attr @name mem_alu_result[14] -pin core|EX exmem_alu_result[14] -pin core|EX_MEM mem_alu_result[14] -pin core|MEM mem_alu_result[14]
load net core|mem_alu_result[15] -attr @rip(#000000) mem_alu_result[15] -attr @name mem_alu_result[15] -pin core|EX exmem_alu_result[15] -pin core|EX_MEM mem_alu_result[15] -pin core|MEM mem_alu_result[15]
load net core|mem_alu_result[16] -attr @rip(#000000) mem_alu_result[16] -attr @name mem_alu_result[16] -pin core|EX exmem_alu_result[16] -pin core|EX_MEM mem_alu_result[16] -pin core|MEM mem_alu_result[16]
load net core|mem_alu_result[17] -attr @rip(#000000) mem_alu_result[17] -attr @name mem_alu_result[17] -pin core|EX exmem_alu_result[17] -pin core|EX_MEM mem_alu_result[17] -pin core|MEM mem_alu_result[17]
load net core|mem_alu_result[18] -attr @rip(#000000) mem_alu_result[18] -attr @name mem_alu_result[18] -pin core|EX exmem_alu_result[18] -pin core|EX_MEM mem_alu_result[18] -pin core|MEM mem_alu_result[18]
load net core|mem_alu_result[19] -attr @rip(#000000) mem_alu_result[19] -attr @name mem_alu_result[19] -pin core|EX exmem_alu_result[19] -pin core|EX_MEM mem_alu_result[19] -pin core|MEM mem_alu_result[19]
load net core|mem_alu_result[1] -attr @rip(#000000) mem_alu_result[1] -attr @name mem_alu_result[1] -pin core|EX exmem_alu_result[1] -pin core|EX_MEM mem_alu_result[1] -pin core|MEM mem_alu_result[1]
load net core|mem_alu_result[20] -attr @rip(#000000) mem_alu_result[20] -attr @name mem_alu_result[20] -pin core|EX exmem_alu_result[20] -pin core|EX_MEM mem_alu_result[20] -pin core|MEM mem_alu_result[20]
load net core|mem_alu_result[21] -attr @rip(#000000) mem_alu_result[21] -attr @name mem_alu_result[21] -pin core|EX exmem_alu_result[21] -pin core|EX_MEM mem_alu_result[21] -pin core|MEM mem_alu_result[21]
load net core|mem_alu_result[22] -attr @rip(#000000) mem_alu_result[22] -attr @name mem_alu_result[22] -pin core|EX exmem_alu_result[22] -pin core|EX_MEM mem_alu_result[22] -pin core|MEM mem_alu_result[22]
load net core|mem_alu_result[23] -attr @rip(#000000) mem_alu_result[23] -attr @name mem_alu_result[23] -pin core|EX exmem_alu_result[23] -pin core|EX_MEM mem_alu_result[23] -pin core|MEM mem_alu_result[23]
load net core|mem_alu_result[24] -attr @rip(#000000) mem_alu_result[24] -attr @name mem_alu_result[24] -pin core|EX exmem_alu_result[24] -pin core|EX_MEM mem_alu_result[24] -pin core|MEM mem_alu_result[24]
load net core|mem_alu_result[25] -attr @rip(#000000) mem_alu_result[25] -attr @name mem_alu_result[25] -pin core|EX exmem_alu_result[25] -pin core|EX_MEM mem_alu_result[25] -pin core|MEM mem_alu_result[25]
load net core|mem_alu_result[26] -attr @rip(#000000) mem_alu_result[26] -attr @name mem_alu_result[26] -pin core|EX exmem_alu_result[26] -pin core|EX_MEM mem_alu_result[26] -pin core|MEM mem_alu_result[26]
load net core|mem_alu_result[27] -attr @rip(#000000) mem_alu_result[27] -attr @name mem_alu_result[27] -pin core|EX exmem_alu_result[27] -pin core|EX_MEM mem_alu_result[27] -pin core|MEM mem_alu_result[27]
load net core|mem_alu_result[28] -attr @rip(#000000) mem_alu_result[28] -attr @name mem_alu_result[28] -pin core|EX exmem_alu_result[28] -pin core|EX_MEM mem_alu_result[28] -pin core|MEM mem_alu_result[28]
load net core|mem_alu_result[29] -attr @rip(#000000) mem_alu_result[29] -attr @name mem_alu_result[29] -pin core|EX exmem_alu_result[29] -pin core|EX_MEM mem_alu_result[29] -pin core|MEM mem_alu_result[29]
load net core|mem_alu_result[2] -attr @rip(#000000) mem_alu_result[2] -attr @name mem_alu_result[2] -pin core|EX exmem_alu_result[2] -pin core|EX_MEM mem_alu_result[2] -pin core|MEM mem_alu_result[2]
load net core|mem_alu_result[30] -attr @rip(#000000) mem_alu_result[30] -attr @name mem_alu_result[30] -pin core|EX exmem_alu_result[30] -pin core|EX_MEM mem_alu_result[30] -pin core|MEM mem_alu_result[30]
load net core|mem_alu_result[31] -attr @rip(#000000) mem_alu_result[31] -attr @name mem_alu_result[31] -pin core|EX exmem_alu_result[31] -pin core|EX_MEM mem_alu_result[31] -pin core|MEM mem_alu_result[31]
load net core|mem_alu_result[3] -attr @rip(#000000) mem_alu_result[3] -attr @name mem_alu_result[3] -pin core|EX exmem_alu_result[3] -pin core|EX_MEM mem_alu_result[3] -pin core|MEM mem_alu_result[3]
load net core|mem_alu_result[4] -attr @rip(#000000) mem_alu_result[4] -attr @name mem_alu_result[4] -pin core|EX exmem_alu_result[4] -pin core|EX_MEM mem_alu_result[4] -pin core|MEM mem_alu_result[4]
load net core|mem_alu_result[5] -attr @rip(#000000) mem_alu_result[5] -attr @name mem_alu_result[5] -pin core|EX exmem_alu_result[5] -pin core|EX_MEM mem_alu_result[5] -pin core|MEM mem_alu_result[5]
load net core|mem_alu_result[6] -attr @rip(#000000) mem_alu_result[6] -attr @name mem_alu_result[6] -pin core|EX exmem_alu_result[6] -pin core|EX_MEM mem_alu_result[6] -pin core|MEM mem_alu_result[6]
load net core|mem_alu_result[7] -attr @rip(#000000) mem_alu_result[7] -attr @name mem_alu_result[7] -pin core|EX exmem_alu_result[7] -pin core|EX_MEM mem_alu_result[7] -pin core|MEM mem_alu_result[7]
load net core|mem_alu_result[8] -attr @rip(#000000) mem_alu_result[8] -attr @name mem_alu_result[8] -pin core|EX exmem_alu_result[8] -pin core|EX_MEM mem_alu_result[8] -pin core|MEM mem_alu_result[8]
load net core|mem_alu_result[9] -attr @rip(#000000) mem_alu_result[9] -attr @name mem_alu_result[9] -pin core|EX exmem_alu_result[9] -pin core|EX_MEM mem_alu_result[9] -pin core|MEM mem_alu_result[9]
load net core|mem_memread -attr @name mem_memread -pin core|EX_MEM mem_memread -pin core|MEM mem_memread
netloc core|mem_memread 1 13 1 6290 698n
load net core|mem_memtoreg -attr @name mem_memtoreg -pin core|EX_MEM mem_memtoreg -pin core|MEM mem_memtoreg
netloc core|mem_memtoreg 1 13 1 6250 718n
load net core|mem_memwrite -attr @name mem_memwrite -pin core|EX_MEM mem_memwrite -pin core|MEM mem_memwrite
netloc core|mem_memwrite 1 13 1 6230 738n
load net core|mem_rd[0] -attr @rip(#000000) mem_rd[0] -attr @name mem_rd[0] -pin core|EX_MEM mem_rd[0] -pin core|FU exmem_rd[0] -pin core|MEM mem_rd[0]
load net core|mem_rd[1] -attr @rip(#000000) mem_rd[1] -attr @name mem_rd[1] -pin core|EX_MEM mem_rd[1] -pin core|FU exmem_rd[1] -pin core|MEM mem_rd[1]
load net core|mem_rd[2] -attr @rip(#000000) mem_rd[2] -attr @name mem_rd[2] -pin core|EX_MEM mem_rd[2] -pin core|FU exmem_rd[2] -pin core|MEM mem_rd[2]
load net core|mem_rd[3] -attr @rip(#000000) mem_rd[3] -attr @name mem_rd[3] -pin core|EX_MEM mem_rd[3] -pin core|FU exmem_rd[3] -pin core|MEM mem_rd[3]
load net core|mem_rd[4] -attr @rip(#000000) mem_rd[4] -attr @name mem_rd[4] -pin core|EX_MEM mem_rd[4] -pin core|FU exmem_rd[4] -pin core|MEM mem_rd[4]
load net core|mem_regwrite -attr @name mem_regwrite -pin core|EX_MEM mem_regwrite -pin core|FU exmem_regwrite -pin core|MEM mem_regwrite
netloc core|mem_regwrite 1 2 12 1530 898 NJ 898 NJ 898 NJ 898 NJ 898 NJ 898 NJ 898 NJ 898 NJ 898 5200J 918 NJ 918 6170
load net core|mem_store_data[0] -attr @rip(#000000) mem_store_data[0] -attr @name mem_store_data[0] -pin core|EX_MEM mem_store_data[0] -pin core|MEM mem_store_data[0]
load net core|mem_store_data[10] -attr @rip(#000000) mem_store_data[10] -attr @name mem_store_data[10] -pin core|EX_MEM mem_store_data[10] -pin core|MEM mem_store_data[10]
load net core|mem_store_data[11] -attr @rip(#000000) mem_store_data[11] -attr @name mem_store_data[11] -pin core|EX_MEM mem_store_data[11] -pin core|MEM mem_store_data[11]
load net core|mem_store_data[12] -attr @rip(#000000) mem_store_data[12] -attr @name mem_store_data[12] -pin core|EX_MEM mem_store_data[12] -pin core|MEM mem_store_data[12]
load net core|mem_store_data[13] -attr @rip(#000000) mem_store_data[13] -attr @name mem_store_data[13] -pin core|EX_MEM mem_store_data[13] -pin core|MEM mem_store_data[13]
load net core|mem_store_data[14] -attr @rip(#000000) mem_store_data[14] -attr @name mem_store_data[14] -pin core|EX_MEM mem_store_data[14] -pin core|MEM mem_store_data[14]
load net core|mem_store_data[15] -attr @rip(#000000) mem_store_data[15] -attr @name mem_store_data[15] -pin core|EX_MEM mem_store_data[15] -pin core|MEM mem_store_data[15]
load net core|mem_store_data[16] -attr @rip(#000000) mem_store_data[16] -attr @name mem_store_data[16] -pin core|EX_MEM mem_store_data[16] -pin core|MEM mem_store_data[16]
load net core|mem_store_data[17] -attr @rip(#000000) mem_store_data[17] -attr @name mem_store_data[17] -pin core|EX_MEM mem_store_data[17] -pin core|MEM mem_store_data[17]
load net core|mem_store_data[18] -attr @rip(#000000) mem_store_data[18] -attr @name mem_store_data[18] -pin core|EX_MEM mem_store_data[18] -pin core|MEM mem_store_data[18]
load net core|mem_store_data[19] -attr @rip(#000000) mem_store_data[19] -attr @name mem_store_data[19] -pin core|EX_MEM mem_store_data[19] -pin core|MEM mem_store_data[19]
load net core|mem_store_data[1] -attr @rip(#000000) mem_store_data[1] -attr @name mem_store_data[1] -pin core|EX_MEM mem_store_data[1] -pin core|MEM mem_store_data[1]
load net core|mem_store_data[20] -attr @rip(#000000) mem_store_data[20] -attr @name mem_store_data[20] -pin core|EX_MEM mem_store_data[20] -pin core|MEM mem_store_data[20]
load net core|mem_store_data[21] -attr @rip(#000000) mem_store_data[21] -attr @name mem_store_data[21] -pin core|EX_MEM mem_store_data[21] -pin core|MEM mem_store_data[21]
load net core|mem_store_data[22] -attr @rip(#000000) mem_store_data[22] -attr @name mem_store_data[22] -pin core|EX_MEM mem_store_data[22] -pin core|MEM mem_store_data[22]
load net core|mem_store_data[23] -attr @rip(#000000) mem_store_data[23] -attr @name mem_store_data[23] -pin core|EX_MEM mem_store_data[23] -pin core|MEM mem_store_data[23]
load net core|mem_store_data[24] -attr @rip(#000000) mem_store_data[24] -attr @name mem_store_data[24] -pin core|EX_MEM mem_store_data[24] -pin core|MEM mem_store_data[24]
load net core|mem_store_data[25] -attr @rip(#000000) mem_store_data[25] -attr @name mem_store_data[25] -pin core|EX_MEM mem_store_data[25] -pin core|MEM mem_store_data[25]
load net core|mem_store_data[26] -attr @rip(#000000) mem_store_data[26] -attr @name mem_store_data[26] -pin core|EX_MEM mem_store_data[26] -pin core|MEM mem_store_data[26]
load net core|mem_store_data[27] -attr @rip(#000000) mem_store_data[27] -attr @name mem_store_data[27] -pin core|EX_MEM mem_store_data[27] -pin core|MEM mem_store_data[27]
load net core|mem_store_data[28] -attr @rip(#000000) mem_store_data[28] -attr @name mem_store_data[28] -pin core|EX_MEM mem_store_data[28] -pin core|MEM mem_store_data[28]
load net core|mem_store_data[29] -attr @rip(#000000) mem_store_data[29] -attr @name mem_store_data[29] -pin core|EX_MEM mem_store_data[29] -pin core|MEM mem_store_data[29]
load net core|mem_store_data[2] -attr @rip(#000000) mem_store_data[2] -attr @name mem_store_data[2] -pin core|EX_MEM mem_store_data[2] -pin core|MEM mem_store_data[2]
load net core|mem_store_data[30] -attr @rip(#000000) mem_store_data[30] -attr @name mem_store_data[30] -pin core|EX_MEM mem_store_data[30] -pin core|MEM mem_store_data[30]
load net core|mem_store_data[31] -attr @rip(#000000) mem_store_data[31] -attr @name mem_store_data[31] -pin core|EX_MEM mem_store_data[31] -pin core|MEM mem_store_data[31]
load net core|mem_store_data[3] -attr @rip(#000000) mem_store_data[3] -attr @name mem_store_data[3] -pin core|EX_MEM mem_store_data[3] -pin core|MEM mem_store_data[3]
load net core|mem_store_data[4] -attr @rip(#000000) mem_store_data[4] -attr @name mem_store_data[4] -pin core|EX_MEM mem_store_data[4] -pin core|MEM mem_store_data[4]
load net core|mem_store_data[5] -attr @rip(#000000) mem_store_data[5] -attr @name mem_store_data[5] -pin core|EX_MEM mem_store_data[5] -pin core|MEM mem_store_data[5]
load net core|mem_store_data[6] -attr @rip(#000000) mem_store_data[6] -attr @name mem_store_data[6] -pin core|EX_MEM mem_store_data[6] -pin core|MEM mem_store_data[6]
load net core|mem_store_data[7] -attr @rip(#000000) mem_store_data[7] -attr @name mem_store_data[7] -pin core|EX_MEM mem_store_data[7] -pin core|MEM mem_store_data[7]
load net core|mem_store_data[8] -attr @rip(#000000) mem_store_data[8] -attr @name mem_store_data[8] -pin core|EX_MEM mem_store_data[8] -pin core|MEM mem_store_data[8]
load net core|mem_store_data[9] -attr @rip(#000000) mem_store_data[9] -attr @name mem_store_data[9] -pin core|EX_MEM mem_store_data[9] -pin core|MEM mem_store_data[9]
load net core|mem_wb_alu_result[0] -attr @rip(#000000) wb_alu_result[0] -attr @name mem_wb_alu_result[0] -pin core|MEM wb_alu_result[0] -pin core|MEM_WB mem_alu_result[0]
load net core|mem_wb_alu_result[10] -attr @rip(#000000) wb_alu_result[10] -attr @name mem_wb_alu_result[10] -pin core|MEM wb_alu_result[10] -pin core|MEM_WB mem_alu_result[10]
load net core|mem_wb_alu_result[11] -attr @rip(#000000) wb_alu_result[11] -attr @name mem_wb_alu_result[11] -pin core|MEM wb_alu_result[11] -pin core|MEM_WB mem_alu_result[11]
load net core|mem_wb_alu_result[12] -attr @rip(#000000) wb_alu_result[12] -attr @name mem_wb_alu_result[12] -pin core|MEM wb_alu_result[12] -pin core|MEM_WB mem_alu_result[12]
load net core|mem_wb_alu_result[13] -attr @rip(#000000) wb_alu_result[13] -attr @name mem_wb_alu_result[13] -pin core|MEM wb_alu_result[13] -pin core|MEM_WB mem_alu_result[13]
load net core|mem_wb_alu_result[14] -attr @rip(#000000) wb_alu_result[14] -attr @name mem_wb_alu_result[14] -pin core|MEM wb_alu_result[14] -pin core|MEM_WB mem_alu_result[14]
load net core|mem_wb_alu_result[15] -attr @rip(#000000) wb_alu_result[15] -attr @name mem_wb_alu_result[15] -pin core|MEM wb_alu_result[15] -pin core|MEM_WB mem_alu_result[15]
load net core|mem_wb_alu_result[16] -attr @rip(#000000) wb_alu_result[16] -attr @name mem_wb_alu_result[16] -pin core|MEM wb_alu_result[16] -pin core|MEM_WB mem_alu_result[16]
load net core|mem_wb_alu_result[17] -attr @rip(#000000) wb_alu_result[17] -attr @name mem_wb_alu_result[17] -pin core|MEM wb_alu_result[17] -pin core|MEM_WB mem_alu_result[17]
load net core|mem_wb_alu_result[18] -attr @rip(#000000) wb_alu_result[18] -attr @name mem_wb_alu_result[18] -pin core|MEM wb_alu_result[18] -pin core|MEM_WB mem_alu_result[18]
load net core|mem_wb_alu_result[19] -attr @rip(#000000) wb_alu_result[19] -attr @name mem_wb_alu_result[19] -pin core|MEM wb_alu_result[19] -pin core|MEM_WB mem_alu_result[19]
load net core|mem_wb_alu_result[1] -attr @rip(#000000) wb_alu_result[1] -attr @name mem_wb_alu_result[1] -pin core|MEM wb_alu_result[1] -pin core|MEM_WB mem_alu_result[1]
load net core|mem_wb_alu_result[20] -attr @rip(#000000) wb_alu_result[20] -attr @name mem_wb_alu_result[20] -pin core|MEM wb_alu_result[20] -pin core|MEM_WB mem_alu_result[20]
load net core|mem_wb_alu_result[21] -attr @rip(#000000) wb_alu_result[21] -attr @name mem_wb_alu_result[21] -pin core|MEM wb_alu_result[21] -pin core|MEM_WB mem_alu_result[21]
load net core|mem_wb_alu_result[22] -attr @rip(#000000) wb_alu_result[22] -attr @name mem_wb_alu_result[22] -pin core|MEM wb_alu_result[22] -pin core|MEM_WB mem_alu_result[22]
load net core|mem_wb_alu_result[23] -attr @rip(#000000) wb_alu_result[23] -attr @name mem_wb_alu_result[23] -pin core|MEM wb_alu_result[23] -pin core|MEM_WB mem_alu_result[23]
load net core|mem_wb_alu_result[24] -attr @rip(#000000) wb_alu_result[24] -attr @name mem_wb_alu_result[24] -pin core|MEM wb_alu_result[24] -pin core|MEM_WB mem_alu_result[24]
load net core|mem_wb_alu_result[25] -attr @rip(#000000) wb_alu_result[25] -attr @name mem_wb_alu_result[25] -pin core|MEM wb_alu_result[25] -pin core|MEM_WB mem_alu_result[25]
load net core|mem_wb_alu_result[26] -attr @rip(#000000) wb_alu_result[26] -attr @name mem_wb_alu_result[26] -pin core|MEM wb_alu_result[26] -pin core|MEM_WB mem_alu_result[26]
load net core|mem_wb_alu_result[27] -attr @rip(#000000) wb_alu_result[27] -attr @name mem_wb_alu_result[27] -pin core|MEM wb_alu_result[27] -pin core|MEM_WB mem_alu_result[27]
load net core|mem_wb_alu_result[28] -attr @rip(#000000) wb_alu_result[28] -attr @name mem_wb_alu_result[28] -pin core|MEM wb_alu_result[28] -pin core|MEM_WB mem_alu_result[28]
load net core|mem_wb_alu_result[29] -attr @rip(#000000) wb_alu_result[29] -attr @name mem_wb_alu_result[29] -pin core|MEM wb_alu_result[29] -pin core|MEM_WB mem_alu_result[29]
load net core|mem_wb_alu_result[2] -attr @rip(#000000) wb_alu_result[2] -attr @name mem_wb_alu_result[2] -pin core|MEM wb_alu_result[2] -pin core|MEM_WB mem_alu_result[2]
load net core|mem_wb_alu_result[30] -attr @rip(#000000) wb_alu_result[30] -attr @name mem_wb_alu_result[30] -pin core|MEM wb_alu_result[30] -pin core|MEM_WB mem_alu_result[30]
load net core|mem_wb_alu_result[31] -attr @rip(#000000) wb_alu_result[31] -attr @name mem_wb_alu_result[31] -pin core|MEM wb_alu_result[31] -pin core|MEM_WB mem_alu_result[31]
load net core|mem_wb_alu_result[3] -attr @rip(#000000) wb_alu_result[3] -attr @name mem_wb_alu_result[3] -pin core|MEM wb_alu_result[3] -pin core|MEM_WB mem_alu_result[3]
load net core|mem_wb_alu_result[4] -attr @rip(#000000) wb_alu_result[4] -attr @name mem_wb_alu_result[4] -pin core|MEM wb_alu_result[4] -pin core|MEM_WB mem_alu_result[4]
load net core|mem_wb_alu_result[5] -attr @rip(#000000) wb_alu_result[5] -attr @name mem_wb_alu_result[5] -pin core|MEM wb_alu_result[5] -pin core|MEM_WB mem_alu_result[5]
load net core|mem_wb_alu_result[6] -attr @rip(#000000) wb_alu_result[6] -attr @name mem_wb_alu_result[6] -pin core|MEM wb_alu_result[6] -pin core|MEM_WB mem_alu_result[6]
load net core|mem_wb_alu_result[7] -attr @rip(#000000) wb_alu_result[7] -attr @name mem_wb_alu_result[7] -pin core|MEM wb_alu_result[7] -pin core|MEM_WB mem_alu_result[7]
load net core|mem_wb_alu_result[8] -attr @rip(#000000) wb_alu_result[8] -attr @name mem_wb_alu_result[8] -pin core|MEM wb_alu_result[8] -pin core|MEM_WB mem_alu_result[8]
load net core|mem_wb_alu_result[9] -attr @rip(#000000) wb_alu_result[9] -attr @name mem_wb_alu_result[9] -pin core|MEM wb_alu_result[9] -pin core|MEM_WB mem_alu_result[9]
load net core|mem_wb_mem_data[0] -attr @rip(#000000) wb_mem_data[0] -attr @name mem_wb_mem_data[0] -pin core|MEM wb_mem_data[0] -pin core|MEM_WB mem_mem_data[0]
load net core|mem_wb_mem_data[10] -attr @rip(#000000) wb_mem_data[10] -attr @name mem_wb_mem_data[10] -pin core|MEM wb_mem_data[10] -pin core|MEM_WB mem_mem_data[10]
load net core|mem_wb_mem_data[11] -attr @rip(#000000) wb_mem_data[11] -attr @name mem_wb_mem_data[11] -pin core|MEM wb_mem_data[11] -pin core|MEM_WB mem_mem_data[11]
load net core|mem_wb_mem_data[12] -attr @rip(#000000) wb_mem_data[12] -attr @name mem_wb_mem_data[12] -pin core|MEM wb_mem_data[12] -pin core|MEM_WB mem_mem_data[12]
load net core|mem_wb_mem_data[13] -attr @rip(#000000) wb_mem_data[13] -attr @name mem_wb_mem_data[13] -pin core|MEM wb_mem_data[13] -pin core|MEM_WB mem_mem_data[13]
load net core|mem_wb_mem_data[14] -attr @rip(#000000) wb_mem_data[14] -attr @name mem_wb_mem_data[14] -pin core|MEM wb_mem_data[14] -pin core|MEM_WB mem_mem_data[14]
load net core|mem_wb_mem_data[15] -attr @rip(#000000) wb_mem_data[15] -attr @name mem_wb_mem_data[15] -pin core|MEM wb_mem_data[15] -pin core|MEM_WB mem_mem_data[15]
load net core|mem_wb_mem_data[16] -attr @rip(#000000) wb_mem_data[16] -attr @name mem_wb_mem_data[16] -pin core|MEM wb_mem_data[16] -pin core|MEM_WB mem_mem_data[16]
load net core|mem_wb_mem_data[17] -attr @rip(#000000) wb_mem_data[17] -attr @name mem_wb_mem_data[17] -pin core|MEM wb_mem_data[17] -pin core|MEM_WB mem_mem_data[17]
load net core|mem_wb_mem_data[18] -attr @rip(#000000) wb_mem_data[18] -attr @name mem_wb_mem_data[18] -pin core|MEM wb_mem_data[18] -pin core|MEM_WB mem_mem_data[18]
load net core|mem_wb_mem_data[19] -attr @rip(#000000) wb_mem_data[19] -attr @name mem_wb_mem_data[19] -pin core|MEM wb_mem_data[19] -pin core|MEM_WB mem_mem_data[19]
load net core|mem_wb_mem_data[1] -attr @rip(#000000) wb_mem_data[1] -attr @name mem_wb_mem_data[1] -pin core|MEM wb_mem_data[1] -pin core|MEM_WB mem_mem_data[1]
load net core|mem_wb_mem_data[20] -attr @rip(#000000) wb_mem_data[20] -attr @name mem_wb_mem_data[20] -pin core|MEM wb_mem_data[20] -pin core|MEM_WB mem_mem_data[20]
load net core|mem_wb_mem_data[21] -attr @rip(#000000) wb_mem_data[21] -attr @name mem_wb_mem_data[21] -pin core|MEM wb_mem_data[21] -pin core|MEM_WB mem_mem_data[21]
load net core|mem_wb_mem_data[22] -attr @rip(#000000) wb_mem_data[22] -attr @name mem_wb_mem_data[22] -pin core|MEM wb_mem_data[22] -pin core|MEM_WB mem_mem_data[22]
load net core|mem_wb_mem_data[23] -attr @rip(#000000) wb_mem_data[23] -attr @name mem_wb_mem_data[23] -pin core|MEM wb_mem_data[23] -pin core|MEM_WB mem_mem_data[23]
load net core|mem_wb_mem_data[24] -attr @rip(#000000) wb_mem_data[24] -attr @name mem_wb_mem_data[24] -pin core|MEM wb_mem_data[24] -pin core|MEM_WB mem_mem_data[24]
load net core|mem_wb_mem_data[25] -attr @rip(#000000) wb_mem_data[25] -attr @name mem_wb_mem_data[25] -pin core|MEM wb_mem_data[25] -pin core|MEM_WB mem_mem_data[25]
load net core|mem_wb_mem_data[26] -attr @rip(#000000) wb_mem_data[26] -attr @name mem_wb_mem_data[26] -pin core|MEM wb_mem_data[26] -pin core|MEM_WB mem_mem_data[26]
load net core|mem_wb_mem_data[27] -attr @rip(#000000) wb_mem_data[27] -attr @name mem_wb_mem_data[27] -pin core|MEM wb_mem_data[27] -pin core|MEM_WB mem_mem_data[27]
load net core|mem_wb_mem_data[28] -attr @rip(#000000) wb_mem_data[28] -attr @name mem_wb_mem_data[28] -pin core|MEM wb_mem_data[28] -pin core|MEM_WB mem_mem_data[28]
load net core|mem_wb_mem_data[29] -attr @rip(#000000) wb_mem_data[29] -attr @name mem_wb_mem_data[29] -pin core|MEM wb_mem_data[29] -pin core|MEM_WB mem_mem_data[29]
load net core|mem_wb_mem_data[2] -attr @rip(#000000) wb_mem_data[2] -attr @name mem_wb_mem_data[2] -pin core|MEM wb_mem_data[2] -pin core|MEM_WB mem_mem_data[2]
load net core|mem_wb_mem_data[30] -attr @rip(#000000) wb_mem_data[30] -attr @name mem_wb_mem_data[30] -pin core|MEM wb_mem_data[30] -pin core|MEM_WB mem_mem_data[30]
load net core|mem_wb_mem_data[31] -attr @rip(#000000) wb_mem_data[31] -attr @name mem_wb_mem_data[31] -pin core|MEM wb_mem_data[31] -pin core|MEM_WB mem_mem_data[31]
load net core|mem_wb_mem_data[3] -attr @rip(#000000) wb_mem_data[3] -attr @name mem_wb_mem_data[3] -pin core|MEM wb_mem_data[3] -pin core|MEM_WB mem_mem_data[3]
load net core|mem_wb_mem_data[4] -attr @rip(#000000) wb_mem_data[4] -attr @name mem_wb_mem_data[4] -pin core|MEM wb_mem_data[4] -pin core|MEM_WB mem_mem_data[4]
load net core|mem_wb_mem_data[5] -attr @rip(#000000) wb_mem_data[5] -attr @name mem_wb_mem_data[5] -pin core|MEM wb_mem_data[5] -pin core|MEM_WB mem_mem_data[5]
load net core|mem_wb_mem_data[6] -attr @rip(#000000) wb_mem_data[6] -attr @name mem_wb_mem_data[6] -pin core|MEM wb_mem_data[6] -pin core|MEM_WB mem_mem_data[6]
load net core|mem_wb_mem_data[7] -attr @rip(#000000) wb_mem_data[7] -attr @name mem_wb_mem_data[7] -pin core|MEM wb_mem_data[7] -pin core|MEM_WB mem_mem_data[7]
load net core|mem_wb_mem_data[8] -attr @rip(#000000) wb_mem_data[8] -attr @name mem_wb_mem_data[8] -pin core|MEM wb_mem_data[8] -pin core|MEM_WB mem_mem_data[8]
load net core|mem_wb_mem_data[9] -attr @rip(#000000) wb_mem_data[9] -attr @name mem_wb_mem_data[9] -pin core|MEM wb_mem_data[9] -pin core|MEM_WB mem_mem_data[9]
load net core|mem_wb_memtoreg -attr @name mem_wb_memtoreg -pin core|MEM wb_memtoreg -pin core|MEM_WB mem_memtoreg
netloc core|mem_wb_memtoreg 1 0 15 580 1138 970J 958 NJ 958 NJ 958 NJ 958 NJ 958 NJ 958 NJ 958 NJ 958 NJ 958 NJ 958 5100J 978 NJ 978 NJ 978 6720
load net core|mem_wb_rd[0] -attr @rip(#000000) wb_rd[0] -attr @name mem_wb_rd[0] -pin core|MEM wb_rd[0] -pin core|MEM_WB mem_rd[0]
load net core|mem_wb_rd[1] -attr @rip(#000000) wb_rd[1] -attr @name mem_wb_rd[1] -pin core|MEM wb_rd[1] -pin core|MEM_WB mem_rd[1]
load net core|mem_wb_rd[2] -attr @rip(#000000) wb_rd[2] -attr @name mem_wb_rd[2] -pin core|MEM wb_rd[2] -pin core|MEM_WB mem_rd[2]
load net core|mem_wb_rd[3] -attr @rip(#000000) wb_rd[3] -attr @name mem_wb_rd[3] -pin core|MEM wb_rd[3] -pin core|MEM_WB mem_rd[3]
load net core|mem_wb_rd[4] -attr @rip(#000000) wb_rd[4] -attr @name mem_wb_rd[4] -pin core|MEM wb_rd[4] -pin core|MEM_WB mem_rd[4]
load net core|mem_wb_regwrite -attr @name mem_wb_regwrite -pin core|MEM wb_regwrite -pin core|MEM_WB mem_regwrite
netloc core|mem_wb_regwrite 1 0 15 620 1178 1030J 998 NJ 998 NJ 998 NJ 998 NJ 998 NJ 998 NJ 998 NJ 998 NJ 998 NJ 998 5060J 1018 NJ 1018 NJ 1018 6680
load net core|rst -attr @name rst -hierPin core rst -pin core|CSR rst -pin core|EX_MEM rst -pin core|ID rst -pin core|ID_EX rst -pin core|IF rst -pin core|IF_ID rst -pin core|MEM rst -pin core|MEM_WB rst
netloc core|rst 1 0 14 560 1318 NJ 1318 NJ 1318 NJ 1318 2550 1318 3000 1078 3440 1278 3810 1078 NJ 1078 NJ 1078 NJ 1078 5240 878 5820 878 NJ
load net core|take_branch -attr @name take_branch -pin core|EX branch_taken -pin core|EX_MEM flush -pin core|IF branch_taken -pin core|if_flush_i I1
netloc core|take_branch 1 4 9 2510 1358 NJ 1358 3500J 1238 NJ 1238 NJ 1238 4670J 1318 4880 1298 NJ 1298 5800J
load net core|wb_alu_result_r[0] -attr @rip(#000000) wb_alu_result[0] -attr @name wb_alu_result_r[0] -pin core|MEM_WB wb_alu_result[0] -pin core|WB wb_alu_result[0]
load net core|wb_alu_result_r[10] -attr @rip(#000000) wb_alu_result[10] -attr @name wb_alu_result_r[10] -pin core|MEM_WB wb_alu_result[10] -pin core|WB wb_alu_result[10]
load net core|wb_alu_result_r[11] -attr @rip(#000000) wb_alu_result[11] -attr @name wb_alu_result_r[11] -pin core|MEM_WB wb_alu_result[11] -pin core|WB wb_alu_result[11]
load net core|wb_alu_result_r[12] -attr @rip(#000000) wb_alu_result[12] -attr @name wb_alu_result_r[12] -pin core|MEM_WB wb_alu_result[12] -pin core|WB wb_alu_result[12]
load net core|wb_alu_result_r[13] -attr @rip(#000000) wb_alu_result[13] -attr @name wb_alu_result_r[13] -pin core|MEM_WB wb_alu_result[13] -pin core|WB wb_alu_result[13]
load net core|wb_alu_result_r[14] -attr @rip(#000000) wb_alu_result[14] -attr @name wb_alu_result_r[14] -pin core|MEM_WB wb_alu_result[14] -pin core|WB wb_alu_result[14]
load net core|wb_alu_result_r[15] -attr @rip(#000000) wb_alu_result[15] -attr @name wb_alu_result_r[15] -pin core|MEM_WB wb_alu_result[15] -pin core|WB wb_alu_result[15]
load net core|wb_alu_result_r[16] -attr @rip(#000000) wb_alu_result[16] -attr @name wb_alu_result_r[16] -pin core|MEM_WB wb_alu_result[16] -pin core|WB wb_alu_result[16]
load net core|wb_alu_result_r[17] -attr @rip(#000000) wb_alu_result[17] -attr @name wb_alu_result_r[17] -pin core|MEM_WB wb_alu_result[17] -pin core|WB wb_alu_result[17]
load net core|wb_alu_result_r[18] -attr @rip(#000000) wb_alu_result[18] -attr @name wb_alu_result_r[18] -pin core|MEM_WB wb_alu_result[18] -pin core|WB wb_alu_result[18]
load net core|wb_alu_result_r[19] -attr @rip(#000000) wb_alu_result[19] -attr @name wb_alu_result_r[19] -pin core|MEM_WB wb_alu_result[19] -pin core|WB wb_alu_result[19]
load net core|wb_alu_result_r[1] -attr @rip(#000000) wb_alu_result[1] -attr @name wb_alu_result_r[1] -pin core|MEM_WB wb_alu_result[1] -pin core|WB wb_alu_result[1]
load net core|wb_alu_result_r[20] -attr @rip(#000000) wb_alu_result[20] -attr @name wb_alu_result_r[20] -pin core|MEM_WB wb_alu_result[20] -pin core|WB wb_alu_result[20]
load net core|wb_alu_result_r[21] -attr @rip(#000000) wb_alu_result[21] -attr @name wb_alu_result_r[21] -pin core|MEM_WB wb_alu_result[21] -pin core|WB wb_alu_result[21]
load net core|wb_alu_result_r[22] -attr @rip(#000000) wb_alu_result[22] -attr @name wb_alu_result_r[22] -pin core|MEM_WB wb_alu_result[22] -pin core|WB wb_alu_result[22]
load net core|wb_alu_result_r[23] -attr @rip(#000000) wb_alu_result[23] -attr @name wb_alu_result_r[23] -pin core|MEM_WB wb_alu_result[23] -pin core|WB wb_alu_result[23]
load net core|wb_alu_result_r[24] -attr @rip(#000000) wb_alu_result[24] -attr @name wb_alu_result_r[24] -pin core|MEM_WB wb_alu_result[24] -pin core|WB wb_alu_result[24]
load net core|wb_alu_result_r[25] -attr @rip(#000000) wb_alu_result[25] -attr @name wb_alu_result_r[25] -pin core|MEM_WB wb_alu_result[25] -pin core|WB wb_alu_result[25]
load net core|wb_alu_result_r[26] -attr @rip(#000000) wb_alu_result[26] -attr @name wb_alu_result_r[26] -pin core|MEM_WB wb_alu_result[26] -pin core|WB wb_alu_result[26]
load net core|wb_alu_result_r[27] -attr @rip(#000000) wb_alu_result[27] -attr @name wb_alu_result_r[27] -pin core|MEM_WB wb_alu_result[27] -pin core|WB wb_alu_result[27]
load net core|wb_alu_result_r[28] -attr @rip(#000000) wb_alu_result[28] -attr @name wb_alu_result_r[28] -pin core|MEM_WB wb_alu_result[28] -pin core|WB wb_alu_result[28]
load net core|wb_alu_result_r[29] -attr @rip(#000000) wb_alu_result[29] -attr @name wb_alu_result_r[29] -pin core|MEM_WB wb_alu_result[29] -pin core|WB wb_alu_result[29]
load net core|wb_alu_result_r[2] -attr @rip(#000000) wb_alu_result[2] -attr @name wb_alu_result_r[2] -pin core|MEM_WB wb_alu_result[2] -pin core|WB wb_alu_result[2]
load net core|wb_alu_result_r[30] -attr @rip(#000000) wb_alu_result[30] -attr @name wb_alu_result_r[30] -pin core|MEM_WB wb_alu_result[30] -pin core|WB wb_alu_result[30]
load net core|wb_alu_result_r[31] -attr @rip(#000000) wb_alu_result[31] -attr @name wb_alu_result_r[31] -pin core|MEM_WB wb_alu_result[31] -pin core|WB wb_alu_result[31]
load net core|wb_alu_result_r[3] -attr @rip(#000000) wb_alu_result[3] -attr @name wb_alu_result_r[3] -pin core|MEM_WB wb_alu_result[3] -pin core|WB wb_alu_result[3]
load net core|wb_alu_result_r[4] -attr @rip(#000000) wb_alu_result[4] -attr @name wb_alu_result_r[4] -pin core|MEM_WB wb_alu_result[4] -pin core|WB wb_alu_result[4]
load net core|wb_alu_result_r[5] -attr @rip(#000000) wb_alu_result[5] -attr @name wb_alu_result_r[5] -pin core|MEM_WB wb_alu_result[5] -pin core|WB wb_alu_result[5]
load net core|wb_alu_result_r[6] -attr @rip(#000000) wb_alu_result[6] -attr @name wb_alu_result_r[6] -pin core|MEM_WB wb_alu_result[6] -pin core|WB wb_alu_result[6]
load net core|wb_alu_result_r[7] -attr @rip(#000000) wb_alu_result[7] -attr @name wb_alu_result_r[7] -pin core|MEM_WB wb_alu_result[7] -pin core|WB wb_alu_result[7]
load net core|wb_alu_result_r[8] -attr @rip(#000000) wb_alu_result[8] -attr @name wb_alu_result_r[8] -pin core|MEM_WB wb_alu_result[8] -pin core|WB wb_alu_result[8]
load net core|wb_alu_result_r[9] -attr @rip(#000000) wb_alu_result[9] -attr @name wb_alu_result_r[9] -pin core|MEM_WB wb_alu_result[9] -pin core|WB wb_alu_result[9]
load net core|wb_mem_data_r[0] -attr @rip(#000000) wb_mem_data[0] -attr @name wb_mem_data_r[0] -pin core|MEM_WB wb_mem_data[0] -pin core|WB wb_mem_data[0]
load net core|wb_mem_data_r[10] -attr @rip(#000000) wb_mem_data[10] -attr @name wb_mem_data_r[10] -pin core|MEM_WB wb_mem_data[10] -pin core|WB wb_mem_data[10]
load net core|wb_mem_data_r[11] -attr @rip(#000000) wb_mem_data[11] -attr @name wb_mem_data_r[11] -pin core|MEM_WB wb_mem_data[11] -pin core|WB wb_mem_data[11]
load net core|wb_mem_data_r[12] -attr @rip(#000000) wb_mem_data[12] -attr @name wb_mem_data_r[12] -pin core|MEM_WB wb_mem_data[12] -pin core|WB wb_mem_data[12]
load net core|wb_mem_data_r[13] -attr @rip(#000000) wb_mem_data[13] -attr @name wb_mem_data_r[13] -pin core|MEM_WB wb_mem_data[13] -pin core|WB wb_mem_data[13]
load net core|wb_mem_data_r[14] -attr @rip(#000000) wb_mem_data[14] -attr @name wb_mem_data_r[14] -pin core|MEM_WB wb_mem_data[14] -pin core|WB wb_mem_data[14]
load net core|wb_mem_data_r[15] -attr @rip(#000000) wb_mem_data[15] -attr @name wb_mem_data_r[15] -pin core|MEM_WB wb_mem_data[15] -pin core|WB wb_mem_data[15]
load net core|wb_mem_data_r[16] -attr @rip(#000000) wb_mem_data[16] -attr @name wb_mem_data_r[16] -pin core|MEM_WB wb_mem_data[16] -pin core|WB wb_mem_data[16]
load net core|wb_mem_data_r[17] -attr @rip(#000000) wb_mem_data[17] -attr @name wb_mem_data_r[17] -pin core|MEM_WB wb_mem_data[17] -pin core|WB wb_mem_data[17]
load net core|wb_mem_data_r[18] -attr @rip(#000000) wb_mem_data[18] -attr @name wb_mem_data_r[18] -pin core|MEM_WB wb_mem_data[18] -pin core|WB wb_mem_data[18]
load net core|wb_mem_data_r[19] -attr @rip(#000000) wb_mem_data[19] -attr @name wb_mem_data_r[19] -pin core|MEM_WB wb_mem_data[19] -pin core|WB wb_mem_data[19]
load net core|wb_mem_data_r[1] -attr @rip(#000000) wb_mem_data[1] -attr @name wb_mem_data_r[1] -pin core|MEM_WB wb_mem_data[1] -pin core|WB wb_mem_data[1]
load net core|wb_mem_data_r[20] -attr @rip(#000000) wb_mem_data[20] -attr @name wb_mem_data_r[20] -pin core|MEM_WB wb_mem_data[20] -pin core|WB wb_mem_data[20]
load net core|wb_mem_data_r[21] -attr @rip(#000000) wb_mem_data[21] -attr @name wb_mem_data_r[21] -pin core|MEM_WB wb_mem_data[21] -pin core|WB wb_mem_data[21]
load net core|wb_mem_data_r[22] -attr @rip(#000000) wb_mem_data[22] -attr @name wb_mem_data_r[22] -pin core|MEM_WB wb_mem_data[22] -pin core|WB wb_mem_data[22]
load net core|wb_mem_data_r[23] -attr @rip(#000000) wb_mem_data[23] -attr @name wb_mem_data_r[23] -pin core|MEM_WB wb_mem_data[23] -pin core|WB wb_mem_data[23]
load net core|wb_mem_data_r[24] -attr @rip(#000000) wb_mem_data[24] -attr @name wb_mem_data_r[24] -pin core|MEM_WB wb_mem_data[24] -pin core|WB wb_mem_data[24]
load net core|wb_mem_data_r[25] -attr @rip(#000000) wb_mem_data[25] -attr @name wb_mem_data_r[25] -pin core|MEM_WB wb_mem_data[25] -pin core|WB wb_mem_data[25]
load net core|wb_mem_data_r[26] -attr @rip(#000000) wb_mem_data[26] -attr @name wb_mem_data_r[26] -pin core|MEM_WB wb_mem_data[26] -pin core|WB wb_mem_data[26]
load net core|wb_mem_data_r[27] -attr @rip(#000000) wb_mem_data[27] -attr @name wb_mem_data_r[27] -pin core|MEM_WB wb_mem_data[27] -pin core|WB wb_mem_data[27]
load net core|wb_mem_data_r[28] -attr @rip(#000000) wb_mem_data[28] -attr @name wb_mem_data_r[28] -pin core|MEM_WB wb_mem_data[28] -pin core|WB wb_mem_data[28]
load net core|wb_mem_data_r[29] -attr @rip(#000000) wb_mem_data[29] -attr @name wb_mem_data_r[29] -pin core|MEM_WB wb_mem_data[29] -pin core|WB wb_mem_data[29]
load net core|wb_mem_data_r[2] -attr @rip(#000000) wb_mem_data[2] -attr @name wb_mem_data_r[2] -pin core|MEM_WB wb_mem_data[2] -pin core|WB wb_mem_data[2]
load net core|wb_mem_data_r[30] -attr @rip(#000000) wb_mem_data[30] -attr @name wb_mem_data_r[30] -pin core|MEM_WB wb_mem_data[30] -pin core|WB wb_mem_data[30]
load net core|wb_mem_data_r[31] -attr @rip(#000000) wb_mem_data[31] -attr @name wb_mem_data_r[31] -pin core|MEM_WB wb_mem_data[31] -pin core|WB wb_mem_data[31]
load net core|wb_mem_data_r[3] -attr @rip(#000000) wb_mem_data[3] -attr @name wb_mem_data_r[3] -pin core|MEM_WB wb_mem_data[3] -pin core|WB wb_mem_data[3]
load net core|wb_mem_data_r[4] -attr @rip(#000000) wb_mem_data[4] -attr @name wb_mem_data_r[4] -pin core|MEM_WB wb_mem_data[4] -pin core|WB wb_mem_data[4]
load net core|wb_mem_data_r[5] -attr @rip(#000000) wb_mem_data[5] -attr @name wb_mem_data_r[5] -pin core|MEM_WB wb_mem_data[5] -pin core|WB wb_mem_data[5]
load net core|wb_mem_data_r[6] -attr @rip(#000000) wb_mem_data[6] -attr @name wb_mem_data_r[6] -pin core|MEM_WB wb_mem_data[6] -pin core|WB wb_mem_data[6]
load net core|wb_mem_data_r[7] -attr @rip(#000000) wb_mem_data[7] -attr @name wb_mem_data_r[7] -pin core|MEM_WB wb_mem_data[7] -pin core|WB wb_mem_data[7]
load net core|wb_mem_data_r[8] -attr @rip(#000000) wb_mem_data[8] -attr @name wb_mem_data_r[8] -pin core|MEM_WB wb_mem_data[8] -pin core|WB wb_mem_data[8]
load net core|wb_mem_data_r[9] -attr @rip(#000000) wb_mem_data[9] -attr @name wb_mem_data_r[9] -pin core|MEM_WB wb_mem_data[9] -pin core|WB wb_mem_data[9]
load net core|wb_memtoreg -attr @name wb_memtoreg -pin core|MEM_WB wb_memtoreg -pin core|WB wb_memtoreg
netloc core|wb_memtoreg 1 1 1 1070 1038n
load net core|wb_rd[0] -attr @rip(#000000) rd_out[0] -attr @name wb_rd[0] -pin core|FU memwb_rd[0] -pin core|ID wb_rd[0] -pin core|MEM_WB wb_rd[0] -pin core|WB rd_out[0] -pin core|WB wb_rd[0]
load net core|wb_rd[1] -attr @rip(#000000) rd_out[1] -attr @name wb_rd[1] -pin core|FU memwb_rd[1] -pin core|ID wb_rd[1] -pin core|MEM_WB wb_rd[1] -pin core|WB rd_out[1] -pin core|WB wb_rd[1]
load net core|wb_rd[2] -attr @rip(#000000) rd_out[2] -attr @name wb_rd[2] -pin core|FU memwb_rd[2] -pin core|ID wb_rd[2] -pin core|MEM_WB wb_rd[2] -pin core|WB rd_out[2] -pin core|WB wb_rd[2]
load net core|wb_rd[3] -attr @rip(#000000) rd_out[3] -attr @name wb_rd[3] -pin core|FU memwb_rd[3] -pin core|ID wb_rd[3] -pin core|MEM_WB wb_rd[3] -pin core|WB rd_out[3] -pin core|WB wb_rd[3]
load net core|wb_rd[4] -attr @rip(#000000) rd_out[4] -attr @name wb_rd[4] -pin core|FU memwb_rd[4] -pin core|ID wb_rd[4] -pin core|MEM_WB wb_rd[4] -pin core|WB rd_out[4] -pin core|WB wb_rd[4]
load net core|wb_regwrite -attr @name wb_regwrite -pin core|FU memwb_regwrite -pin core|ID wb_regwrite -pin core|MEM_WB wb_regwrite -pin core|WB regwrite_out -pin core|WB wb_regwrite
netloc core|wb_regwrite 1 1 6 1050 1178 1490 818 NJ 818 NJ 818 NJ 818 3380
load net core|wb_wdata[0] -attr @rip(#000000) wdata_out[0] -attr @name wb_wdata[0] -pin core|EX wb_wdata[0] -pin core|ID wb_wdata[0] -pin core|WB wdata_out[0]
load net core|wb_wdata[10] -attr @rip(#000000) wdata_out[10] -attr @name wb_wdata[10] -pin core|EX wb_wdata[10] -pin core|ID wb_wdata[10] -pin core|WB wdata_out[10]
load net core|wb_wdata[11] -attr @rip(#000000) wdata_out[11] -attr @name wb_wdata[11] -pin core|EX wb_wdata[11] -pin core|ID wb_wdata[11] -pin core|WB wdata_out[11]
load net core|wb_wdata[12] -attr @rip(#000000) wdata_out[12] -attr @name wb_wdata[12] -pin core|EX wb_wdata[12] -pin core|ID wb_wdata[12] -pin core|WB wdata_out[12]
load net core|wb_wdata[13] -attr @rip(#000000) wdata_out[13] -attr @name wb_wdata[13] -pin core|EX wb_wdata[13] -pin core|ID wb_wdata[13] -pin core|WB wdata_out[13]
load net core|wb_wdata[14] -attr @rip(#000000) wdata_out[14] -attr @name wb_wdata[14] -pin core|EX wb_wdata[14] -pin core|ID wb_wdata[14] -pin core|WB wdata_out[14]
load net core|wb_wdata[15] -attr @rip(#000000) wdata_out[15] -attr @name wb_wdata[15] -pin core|EX wb_wdata[15] -pin core|ID wb_wdata[15] -pin core|WB wdata_out[15]
load net core|wb_wdata[16] -attr @rip(#000000) wdata_out[16] -attr @name wb_wdata[16] -pin core|EX wb_wdata[16] -pin core|ID wb_wdata[16] -pin core|WB wdata_out[16]
load net core|wb_wdata[17] -attr @rip(#000000) wdata_out[17] -attr @name wb_wdata[17] -pin core|EX wb_wdata[17] -pin core|ID wb_wdata[17] -pin core|WB wdata_out[17]
load net core|wb_wdata[18] -attr @rip(#000000) wdata_out[18] -attr @name wb_wdata[18] -pin core|EX wb_wdata[18] -pin core|ID wb_wdata[18] -pin core|WB wdata_out[18]
load net core|wb_wdata[19] -attr @rip(#000000) wdata_out[19] -attr @name wb_wdata[19] -pin core|EX wb_wdata[19] -pin core|ID wb_wdata[19] -pin core|WB wdata_out[19]
load net core|wb_wdata[1] -attr @rip(#000000) wdata_out[1] -attr @name wb_wdata[1] -pin core|EX wb_wdata[1] -pin core|ID wb_wdata[1] -pin core|WB wdata_out[1]
load net core|wb_wdata[20] -attr @rip(#000000) wdata_out[20] -attr @name wb_wdata[20] -pin core|EX wb_wdata[20] -pin core|ID wb_wdata[20] -pin core|WB wdata_out[20]
load net core|wb_wdata[21] -attr @rip(#000000) wdata_out[21] -attr @name wb_wdata[21] -pin core|EX wb_wdata[21] -pin core|ID wb_wdata[21] -pin core|WB wdata_out[21]
load net core|wb_wdata[22] -attr @rip(#000000) wdata_out[22] -attr @name wb_wdata[22] -pin core|EX wb_wdata[22] -pin core|ID wb_wdata[22] -pin core|WB wdata_out[22]
load net core|wb_wdata[23] -attr @rip(#000000) wdata_out[23] -attr @name wb_wdata[23] -pin core|EX wb_wdata[23] -pin core|ID wb_wdata[23] -pin core|WB wdata_out[23]
load net core|wb_wdata[24] -attr @rip(#000000) wdata_out[24] -attr @name wb_wdata[24] -pin core|EX wb_wdata[24] -pin core|ID wb_wdata[24] -pin core|WB wdata_out[24]
load net core|wb_wdata[25] -attr @rip(#000000) wdata_out[25] -attr @name wb_wdata[25] -pin core|EX wb_wdata[25] -pin core|ID wb_wdata[25] -pin core|WB wdata_out[25]
load net core|wb_wdata[26] -attr @rip(#000000) wdata_out[26] -attr @name wb_wdata[26] -pin core|EX wb_wdata[26] -pin core|ID wb_wdata[26] -pin core|WB wdata_out[26]
load net core|wb_wdata[27] -attr @rip(#000000) wdata_out[27] -attr @name wb_wdata[27] -pin core|EX wb_wdata[27] -pin core|ID wb_wdata[27] -pin core|WB wdata_out[27]
load net core|wb_wdata[28] -attr @rip(#000000) wdata_out[28] -attr @name wb_wdata[28] -pin core|EX wb_wdata[28] -pin core|ID wb_wdata[28] -pin core|WB wdata_out[28]
load net core|wb_wdata[29] -attr @rip(#000000) wdata_out[29] -attr @name wb_wdata[29] -pin core|EX wb_wdata[29] -pin core|ID wb_wdata[29] -pin core|WB wdata_out[29]
load net core|wb_wdata[2] -attr @rip(#000000) wdata_out[2] -attr @name wb_wdata[2] -pin core|EX wb_wdata[2] -pin core|ID wb_wdata[2] -pin core|WB wdata_out[2]
load net core|wb_wdata[30] -attr @rip(#000000) wdata_out[30] -attr @name wb_wdata[30] -pin core|EX wb_wdata[30] -pin core|ID wb_wdata[30] -pin core|WB wdata_out[30]
load net core|wb_wdata[31] -attr @rip(#000000) wdata_out[31] -attr @name wb_wdata[31] -pin core|EX wb_wdata[31] -pin core|ID wb_wdata[31] -pin core|WB wdata_out[31]
load net core|wb_wdata[3] -attr @rip(#000000) wdata_out[3] -attr @name wb_wdata[3] -pin core|EX wb_wdata[3] -pin core|ID wb_wdata[3] -pin core|WB wdata_out[3]
load net core|wb_wdata[4] -attr @rip(#000000) wdata_out[4] -attr @name wb_wdata[4] -pin core|EX wb_wdata[4] -pin core|ID wb_wdata[4] -pin core|WB wdata_out[4]
load net core|wb_wdata[5] -attr @rip(#000000) wdata_out[5] -attr @name wb_wdata[5] -pin core|EX wb_wdata[5] -pin core|ID wb_wdata[5] -pin core|WB wdata_out[5]
load net core|wb_wdata[6] -attr @rip(#000000) wdata_out[6] -attr @name wb_wdata[6] -pin core|EX wb_wdata[6] -pin core|ID wb_wdata[6] -pin core|WB wdata_out[6]
load net core|wb_wdata[7] -attr @rip(#000000) wdata_out[7] -attr @name wb_wdata[7] -pin core|EX wb_wdata[7] -pin core|ID wb_wdata[7] -pin core|WB wdata_out[7]
load net core|wb_wdata[8] -attr @rip(#000000) wdata_out[8] -attr @name wb_wdata[8] -pin core|EX wb_wdata[8] -pin core|ID wb_wdata[8] -pin core|WB wdata_out[8]
load net core|wb_wdata[9] -attr @rip(#000000) wdata_out[9] -attr @name wb_wdata[9] -pin core|EX wb_wdata[9] -pin core|ID wb_wdata[9] -pin core|WB wdata_out[9]
load netBundle @core|dmem_rdata 32 core|dmem_rdata[31] core|dmem_rdata[30] core|dmem_rdata[29] core|dmem_rdata[28] core|dmem_rdata[27] core|dmem_rdata[26] core|dmem_rdata[25] core|dmem_rdata[24] core|dmem_rdata[23] core|dmem_rdata[22] core|dmem_rdata[21] core|dmem_rdata[20] core|dmem_rdata[19] core|dmem_rdata[18] core|dmem_rdata[17] core|dmem_rdata[16] core|dmem_rdata[15] core|dmem_rdata[14] core|dmem_rdata[13] core|dmem_rdata[12] core|dmem_rdata[11] core|dmem_rdata[10] core|dmem_rdata[9] core|dmem_rdata[8] core|dmem_rdata[7] core|dmem_rdata[6] core|dmem_rdata[5] core|dmem_rdata[4] core|dmem_rdata[3] core|dmem_rdata[2] core|dmem_rdata[1] core|dmem_rdata[0] -autobundled
netbloc @core|dmem_rdata 1 0 14 NJ 1278 NJ 1278 NJ 1278 NJ 1278 2470J 1338 3040J 1298 3460J 1198 NJ 1198 NJ 1198 NJ 1198 NJ 1198 NJ 1198 NJ 1198 6270
load netBundle @core|imem_rdata 32 core|imem_rdata[31] core|imem_rdata[30] core|imem_rdata[29] core|imem_rdata[28] core|imem_rdata[27] core|imem_rdata[26] core|imem_rdata[25] core|imem_rdata[24] core|imem_rdata[23] core|imem_rdata[22] core|imem_rdata[21] core|imem_rdata[20] core|imem_rdata[19] core|imem_rdata[18] core|imem_rdata[17] core|imem_rdata[16] core|imem_rdata[15] core|imem_rdata[14] core|imem_rdata[13] core|imem_rdata[12] core|imem_rdata[11] core|imem_rdata[10] core|imem_rdata[9] core|imem_rdata[8] core|imem_rdata[7] core|imem_rdata[6] core|imem_rdata[5] core|imem_rdata[4] core|imem_rdata[3] core|imem_rdata[2] core|imem_rdata[1] core|imem_rdata[0] -autobundled
netbloc @core|imem_rdata 1 0 5 NJ 1298 NJ 1298 NJ 1298 NJ 1298 2530
load netBundle @core|ex_alu_result 32 core|ex_alu_result[31] core|ex_alu_result[30] core|ex_alu_result[29] core|ex_alu_result[28] core|ex_alu_result[27] core|ex_alu_result[26] core|ex_alu_result[25] core|ex_alu_result[24] core|ex_alu_result[23] core|ex_alu_result[22] core|ex_alu_result[21] core|ex_alu_result[20] core|ex_alu_result[19] core|ex_alu_result[18] core|ex_alu_result[17] core|ex_alu_result[16] core|ex_alu_result[15] core|ex_alu_result[14] core|ex_alu_result[13] core|ex_alu_result[12] core|ex_alu_result[11] core|ex_alu_result[10] core|ex_alu_result[9] core|ex_alu_result[8] core|ex_alu_result[7] core|ex_alu_result[6] core|ex_alu_result[5] core|ex_alu_result[4] core|ex_alu_result[3] core|ex_alu_result[2] core|ex_alu_result[1] core|ex_alu_result[0] -autobundled
netbloc @core|ex_alu_result 1 4 9 NJ 418 NJ 418 3300J 278 NJ 278 NJ 278 NJ 278 NJ 278 5140J 238 5800
load netBundle @core|branch_target 32 core|branch_target[31] core|branch_target[30] core|branch_target[29] core|branch_target[28] core|branch_target[27] core|branch_target[26] core|branch_target[25] core|branch_target[24] core|branch_target[23] core|branch_target[22] core|branch_target[21] core|branch_target[20] core|branch_target[19] core|branch_target[18] core|branch_target[17] core|branch_target[16] core|branch_target[15] core|branch_target[14] core|branch_target[13] core|branch_target[12] core|branch_target[11] core|branch_target[10] core|branch_target[9] core|branch_target[8] core|branch_target[7] core|branch_target[6] core|branch_target[5] core|branch_target[4] core|branch_target[3] core|branch_target[2] core|branch_target[1] core|branch_target[0] -autobundled
netbloc @core|branch_target 1 4 1 2550 458n
load netBundle @core|ex_rd_out 5 core|ex_rd_out[4] core|ex_rd_out[3] core|ex_rd_out[2] core|ex_rd_out[1] core|ex_rd_out[0] -autobundled
netbloc @core|ex_rd_out 1 4 9 2570J 578 NJ 578 3400J 698 NJ 698 NJ 698 NJ 698 NJ 698 NJ 698 5620
load netBundle @core|ex_store_data 32 core|ex_store_data[31] core|ex_store_data[30] core|ex_store_data[29] core|ex_store_data[28] core|ex_store_data[27] core|ex_store_data[26] core|ex_store_data[25] core|ex_store_data[24] core|ex_store_data[23] core|ex_store_data[22] core|ex_store_data[21] core|ex_store_data[20] core|ex_store_data[19] core|ex_store_data[18] core|ex_store_data[17] core|ex_store_data[16] core|ex_store_data[15] core|ex_store_data[14] core|ex_store_data[13] core|ex_store_data[12] core|ex_store_data[11] core|ex_store_data[10] core|ex_store_data[9] core|ex_store_data[8] core|ex_store_data[7] core|ex_store_data[6] core|ex_store_data[5] core|ex_store_data[4] core|ex_store_data[3] core|ex_store_data[2] core|ex_store_data[1] core|ex_store_data[0] -autobundled
netbloc @core|ex_store_data 1 4 9 2530J 778 NJ 778 3340J 798 NJ 798 NJ 798 NJ 798 NJ 798 5100J 778 5660
load netBundle @core|mem_alu_result 32 core|mem_alu_result[31] core|mem_alu_result[30] core|mem_alu_result[29] core|mem_alu_result[28] core|mem_alu_result[27] core|mem_alu_result[26] core|mem_alu_result[25] core|mem_alu_result[24] core|mem_alu_result[23] core|mem_alu_result[22] core|mem_alu_result[21] core|mem_alu_result[20] core|mem_alu_result[19] core|mem_alu_result[18] core|mem_alu_result[17] core|mem_alu_result[16] core|mem_alu_result[15] core|mem_alu_result[14] core|mem_alu_result[13] core|mem_alu_result[12] core|mem_alu_result[11] core|mem_alu_result[10] core|mem_alu_result[9] core|mem_alu_result[8] core|mem_alu_result[7] core|mem_alu_result[6] core|mem_alu_result[5] core|mem_alu_result[4] core|mem_alu_result[3] core|mem_alu_result[2] core|mem_alu_result[1] core|mem_alu_result[0] -autobundled
netbloc @core|mem_alu_result 1 3 11 2090 838 NJ 838 NJ 838 3400J 818 NJ 818 NJ 818 NJ 818 NJ 818 5120J 798 5640J 598 6310
load netBundle @core|mem_rd 5 core|mem_rd[4] core|mem_rd[3] core|mem_rd[2] core|mem_rd[1] core|mem_rd[0] -autobundled
netbloc @core|mem_rd 1 2 12 1510 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 NJ 878 5220J 898 NJ 898 6190
load netBundle @core|mem_store_data 32 core|mem_store_data[31] core|mem_store_data[30] core|mem_store_data[29] core|mem_store_data[28] core|mem_store_data[27] core|mem_store_data[26] core|mem_store_data[25] core|mem_store_data[24] core|mem_store_data[23] core|mem_store_data[22] core|mem_store_data[21] core|mem_store_data[20] core|mem_store_data[19] core|mem_store_data[18] core|mem_store_data[17] core|mem_store_data[16] core|mem_store_data[15] core|mem_store_data[14] core|mem_store_data[13] core|mem_store_data[12] core|mem_store_data[11] core|mem_store_data[10] core|mem_store_data[9] core|mem_store_data[8] core|mem_store_data[7] core|mem_store_data[6] core|mem_store_data[5] core|mem_store_data[4] core|mem_store_data[3] core|mem_store_data[2] core|mem_store_data[1] core|mem_store_data[0] -autobundled
netbloc @core|mem_store_data 1 13 1 6210 798n
load netBundle @core|forward_a 2 core|forward_a[1] core|forward_a[0] -autobundled
netbloc @core|forward_a 1 3 1 1870 618n
load netBundle @core|forward_b 2 core|forward_b[1] core|forward_b[0] -autobundled
netbloc @core|forward_b 1 3 1 1910 638n
load netBundle @core|id_aluop 2 core|id_aluop[1] core|id_aluop[0] -autobundled
netbloc @core|id_aluop 1 7 5 N 338 NJ 338 NJ 338 NJ 338 NJ
load netBundle @core|id_funct3 3 core|id_funct3[2] core|id_funct3[1] core|id_funct3[0] -autobundled
netbloc @core|id_funct3 1 7 5 N 398 NJ 398 NJ 398 NJ 398 NJ
load netBundle @core|id_funct7 7 core|id_funct7[6] core|id_funct7[5] core|id_funct7[4] core|id_funct7[3] core|id_funct7[2] core|id_funct7[1] core|id_funct7[0] -autobundled
netbloc @core|id_funct7 1 7 5 N 418 NJ 418 NJ 418 NJ 418 NJ
load netBundle @core|id_imm 32 core|id_imm[31] core|id_imm[30] core|id_imm[29] core|id_imm[28] core|id_imm[27] core|id_imm[26] core|id_imm[25] core|id_imm[24] core|id_imm[23] core|id_imm[22] core|id_imm[21] core|id_imm[20] core|id_imm[19] core|id_imm[18] core|id_imm[17] core|id_imm[16] core|id_imm[15] core|id_imm[14] core|id_imm[13] core|id_imm[12] core|id_imm[11] core|id_imm[10] core|id_imm[9] core|id_imm[8] core|id_imm[7] core|id_imm[6] core|id_imm[5] core|id_imm[4] core|id_imm[3] core|id_imm[2] core|id_imm[1] core|id_imm[0] -autobundled
netbloc @core|id_imm 1 7 5 N 438 NJ 438 NJ 438 NJ 438 NJ
load netBundle @core|id_rd 5 core|id_rd[4] core|id_rd[3] core|id_rd[2] core|id_rd[1] core|id_rd[0] -autobundled
netbloc @core|id_rd 1 7 5 3990 538 NJ 538 NJ 538 NJ 538 NJ
load netBundle @core|id_rs1 5 core|id_rs1[4] core|id_rs1[3] core|id_rs1[2] core|id_rs1[1] core|id_rs1[0] -autobundled
netbloc @core|id_rs1 1 7 5 3870 1018 NJ 1018 NJ 1018 NJ 1018 5040
load netBundle @core|id_rs1_data 32 core|id_rs1_data[31] core|id_rs1_data[30] core|id_rs1_data[29] core|id_rs1_data[28] core|id_rs1_data[27] core|id_rs1_data[26] core|id_rs1_data[25] core|id_rs1_data[24] core|id_rs1_data[23] core|id_rs1_data[22] core|id_rs1_data[21] core|id_rs1_data[20] core|id_rs1_data[19] core|id_rs1_data[18] core|id_rs1_data[17] core|id_rs1_data[16] core|id_rs1_data[15] core|id_rs1_data[14] core|id_rs1_data[13] core|id_rs1_data[12] core|id_rs1_data[11] core|id_rs1_data[10] core|id_rs1_data[9] core|id_rs1_data[8] core|id_rs1_data[7] core|id_rs1_data[6] core|id_rs1_data[5] core|id_rs1_data[4] core|id_rs1_data[3] core|id_rs1_data[2] core|id_rs1_data[1] core|id_rs1_data[0] -autobundled
netbloc @core|id_rs1_data 1 7 5 3970 598 NJ 598 NJ 598 NJ 598 NJ
load netBundle @core|id_rs2 5 core|id_rs2[4] core|id_rs2[3] core|id_rs2[2] core|id_rs2[1] core|id_rs2[0] -autobundled
netbloc @core|id_rs2 1 7 5 3850 1038 NJ 1038 NJ 1038 NJ 1038 5180
load netBundle @core|id_rs2_data 32 core|id_rs2_data[31] core|id_rs2_data[30] core|id_rs2_data[29] core|id_rs2_data[28] core|id_rs2_data[27] core|id_rs2_data[26] core|id_rs2_data[25] core|id_rs2_data[24] core|id_rs2_data[23] core|id_rs2_data[22] core|id_rs2_data[21] core|id_rs2_data[20] core|id_rs2_data[19] core|id_rs2_data[18] core|id_rs2_data[17] core|id_rs2_data[16] core|id_rs2_data[15] core|id_rs2_data[14] core|id_rs2_data[13] core|id_rs2_data[12] core|id_rs2_data[11] core|id_rs2_data[10] core|id_rs2_data[9] core|id_rs2_data[8] core|id_rs2_data[7] core|id_rs2_data[6] core|id_rs2_data[5] core|id_rs2_data[4] core|id_rs2_data[3] core|id_rs2_data[2] core|id_rs2_data[1] core|id_rs2_data[0] -autobundled
netbloc @core|id_rs2_data 1 7 5 3970 638 NJ 638 NJ 638 NJ 638 NJ
load netBundle @core|ex_aluop 2 core|ex_aluop[1] core|ex_aluop[0] -autobundled
netbloc @core|ex_aluop 1 3 10 1870 58 NJ 58 NJ 58 NJ 58 NJ 58 NJ 58 NJ 58 NJ 58 NJ 58 5760
load netBundle @core|ex_funct3 3 core|ex_funct3[2] core|ex_funct3[1] core|ex_funct3[0] -autobundled
netbloc @core|ex_funct3 1 3 10 1990 118 NJ 118 NJ 118 NJ 118 NJ 118 NJ 118 NJ 118 NJ 118 NJ 118 5660
load netBundle @core|ex_funct7 7 core|ex_funct7[6] core|ex_funct7[5] core|ex_funct7[4] core|ex_funct7[3] core|ex_funct7[2] core|ex_funct7[1] core|ex_funct7[0] -autobundled
netbloc @core|ex_funct7 1 3 10 2010 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 NJ 138 5600
load netBundle @core|ex_imm 32 core|ex_imm[31] core|ex_imm[30] core|ex_imm[29] core|ex_imm[28] core|ex_imm[27] core|ex_imm[26] core|ex_imm[25] core|ex_imm[24] core|ex_imm[23] core|ex_imm[22] core|ex_imm[21] core|ex_imm[20] core|ex_imm[19] core|ex_imm[18] core|ex_imm[17] core|ex_imm[16] core|ex_imm[15] core|ex_imm[14] core|ex_imm[13] core|ex_imm[12] core|ex_imm[11] core|ex_imm[10] core|ex_imm[9] core|ex_imm[8] core|ex_imm[7] core|ex_imm[6] core|ex_imm[5] core|ex_imm[4] core|ex_imm[3] core|ex_imm[2] core|ex_imm[1] core|ex_imm[0] -autobundled
netbloc @core|ex_imm 1 3 10 2030 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 NJ 158 5560
load netBundle @core|ex_pc 32 core|ex_pc[31] core|ex_pc[30] core|ex_pc[29] core|ex_pc[28] core|ex_pc[27] core|ex_pc[26] core|ex_pc[25] core|ex_pc[24] core|ex_pc[23] core|ex_pc[22] core|ex_pc[21] core|ex_pc[20] core|ex_pc[19] core|ex_pc[18] core|ex_pc[17] core|ex_pc[16] core|ex_pc[15] core|ex_pc[14] core|ex_pc[13] core|ex_pc[12] core|ex_pc[11] core|ex_pc[10] core|ex_pc[9] core|ex_pc[8] core|ex_pc[7] core|ex_pc[6] core|ex_pc[5] core|ex_pc[4] core|ex_pc[3] core|ex_pc[2] core|ex_pc[1] core|ex_pc[0] -autobundled
netbloc @core|ex_pc 1 3 10 1990 1378 NJ 1378 NJ 1378 NJ 1378 4050 1358 NJ 1358 NJ 1358 NJ 1358 NJ 1358 5700
load netBundle @core|ex_rd 5 core|ex_rd[4] core|ex_rd[3] core|ex_rd[2] core|ex_rd[1] core|ex_rd[0] -autobundled
netbloc @core|ex_rd 1 3 10 2010 1058 2530J 1038 NJ 1038 NJ 1038 3830 1058 NJ 1058 NJ 1058 NJ 1058 NJ 1058 5680
load netBundle @core|ex_rs1 5 core|ex_rs1[4] core|ex_rs1[3] core|ex_rs1[2] core|ex_rs1[1] core|ex_rs1[0] -autobundled
netbloc @core|ex_rs1 1 2 11 1550 738 1890 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 NJ 738 5660
load netBundle @core|ex_rs1_data 32 core|ex_rs1_data[31] core|ex_rs1_data[30] core|ex_rs1_data[29] core|ex_rs1_data[28] core|ex_rs1_data[27] core|ex_rs1_data[26] core|ex_rs1_data[25] core|ex_rs1_data[24] core|ex_rs1_data[23] core|ex_rs1_data[22] core|ex_rs1_data[21] core|ex_rs1_data[20] core|ex_rs1_data[19] core|ex_rs1_data[18] core|ex_rs1_data[17] core|ex_rs1_data[16] core|ex_rs1_data[15] core|ex_rs1_data[14] core|ex_rs1_data[13] core|ex_rs1_data[12] core|ex_rs1_data[11] core|ex_rs1_data[10] core|ex_rs1_data[9] core|ex_rs1_data[8] core|ex_rs1_data[7] core|ex_rs1_data[6] core|ex_rs1_data[5] core|ex_rs1_data[4] core|ex_rs1_data[3] core|ex_rs1_data[2] core|ex_rs1_data[1] core|ex_rs1_data[0] -autobundled
netbloc @core|ex_rs1_data 1 3 10 2110 718 NJ 718 NJ 718 NJ 718 NJ 718 NJ 718 NJ 718 NJ 718 NJ 718 5600
load netBundle @core|ex_rs2 5 core|ex_rs2[4] core|ex_rs2[3] core|ex_rs2[2] core|ex_rs2[1] core|ex_rs2[0] -autobundled
netbloc @core|ex_rs2 1 2 11 1570 758 1930 758 NJ 758 NJ 758 NJ 758 NJ 758 NJ 758 NJ 758 NJ 758 NJ 758 5560
load netBundle @core|ex_rs2_data 32 core|ex_rs2_data[31] core|ex_rs2_data[30] core|ex_rs2_data[29] core|ex_rs2_data[28] core|ex_rs2_data[27] core|ex_rs2_data[26] core|ex_rs2_data[25] core|ex_rs2_data[24] core|ex_rs2_data[23] core|ex_rs2_data[22] core|ex_rs2_data[21] core|ex_rs2_data[20] core|ex_rs2_data[19] core|ex_rs2_data[18] core|ex_rs2_data[17] core|ex_rs2_data[16] core|ex_rs2_data[15] core|ex_rs2_data[14] core|ex_rs2_data[13] core|ex_rs2_data[12] core|ex_rs2_data[11] core|ex_rs2_data[10] core|ex_rs2_data[9] core|ex_rs2_data[8] core|ex_rs2_data[7] core|ex_rs2_data[6] core|ex_rs2_data[5] core|ex_rs2_data[4] core|ex_rs2_data[3] core|ex_rs2_data[2] core|ex_rs2_data[1] core|ex_rs2_data[0] -autobundled
netbloc @core|ex_rs2_data 1 3 10 2090 218 NJ 218 NJ 218 NJ 218 NJ 218 NJ 218 NJ 218 NJ 218 NJ 218 5580
load netBundle @core|imem_addr 32 core|imem_addr[31] core|imem_addr[30] core|imem_addr[29] core|imem_addr[28] core|imem_addr[27] core|imem_addr[26] core|imem_addr[25] core|imem_addr[24] core|imem_addr[23] core|imem_addr[22] core|imem_addr[21] core|imem_addr[20] core|imem_addr[19] core|imem_addr[18] core|imem_addr[17] core|imem_addr[16] core|imem_addr[15] core|imem_addr[14] core|imem_addr[13] core|imem_addr[12] core|imem_addr[11] core|imem_addr[10] core|imem_addr[9] core|imem_addr[8] core|imem_addr[7] core|imem_addr[6] core|imem_addr[5] core|imem_addr[4] core|imem_addr[3] core|imem_addr[2] core|imem_addr[1] core|imem_addr[0] -autobundled
netbloc @core|imem_addr 1 5 10 2920 1738 NJ 1738 NJ 1738 4470J 1728 NJ 1728 NJ 1728 NJ 1728 NJ 1728 NJ 1728 NJ
load netBundle @core|if_instr 32 core|if_instr[31] core|if_instr[30] core|if_instr[29] core|if_instr[28] core|if_instr[27] core|if_instr[26] core|if_instr[25] core|if_instr[24] core|if_instr[23] core|if_instr[22] core|if_instr[21] core|if_instr[20] core|if_instr[19] core|if_instr[18] core|if_instr[17] core|if_instr[16] core|if_instr[15] core|if_instr[14] core|if_instr[13] core|if_instr[12] core|if_instr[11] core|if_instr[10] core|if_instr[9] core|if_instr[8] core|if_instr[7] core|if_instr[6] core|if_instr[5] core|if_instr[4] core|if_instr[3] core|if_instr[2] core|if_instr[1] core|if_instr[0] -autobundled
netbloc @core|if_instr 1 5 1 2960 1178n
load netBundle @core|if_pc 32 core|if_pc[31] core|if_pc[30] core|if_pc[29] core|if_pc[28] core|if_pc[27] core|if_pc[26] core|if_pc[25] core|if_pc[24] core|if_pc[23] core|if_pc[22] core|if_pc[21] core|if_pc[20] core|if_pc[19] core|if_pc[18] core|if_pc[17] core|if_pc[16] core|if_pc[15] core|if_pc[14] core|if_pc[13] core|if_pc[12] core|if_pc[11] core|if_pc[10] core|if_pc[9] core|if_pc[8] core|if_pc[7] core|if_pc[6] core|if_pc[5] core|if_pc[4] core|if_pc[3] core|if_pc[2] core|if_pc[1] core|if_pc[0] -autobundled
netbloc @core|if_pc 1 5 1 2980 1198n
load netBundle @core|id_instr 32 core|id_instr[31] core|id_instr[30] core|id_instr[29] core|id_instr[28] core|id_instr[27] core|id_instr[26] core|id_instr[25] core|id_instr[24] core|id_instr[23] core|id_instr[22] core|id_instr[21] core|id_instr[20] core|id_instr[19] core|id_instr[18] core|id_instr[17] core|id_instr[16] core|id_instr[15] core|id_instr[14] core|id_instr[13] core|id_instr[12] core|id_instr[11] core|id_instr[10] core|id_instr[9] core|id_instr[8] core|id_instr[7] core|id_instr[6] core|id_instr[5] core|id_instr[4] core|id_instr[3] core|id_instr[2] core|id_instr[1] core|id_instr[0] -autobundled
netbloc @core|id_instr 1 6 1 3300 458n
load netBundle @core|id_pc 32 core|id_pc[31] core|id_pc[30] core|id_pc[29] core|id_pc[28] core|id_pc[27] core|id_pc[26] core|id_pc[25] core|id_pc[24] core|id_pc[23] core|id_pc[22] core|id_pc[21] core|id_pc[20] core|id_pc[19] core|id_pc[18] core|id_pc[17] core|id_pc[16] core|id_pc[15] core|id_pc[14] core|id_pc[13] core|id_pc[12] core|id_pc[11] core|id_pc[10] core|id_pc[9] core|id_pc[8] core|id_pc[7] core|id_pc[6] core|id_pc[5] core|id_pc[4] core|id_pc[3] core|id_pc[2] core|id_pc[1] core|id_pc[0] -autobundled
netbloc @core|id_pc 1 6 6 3360 778 NJ 778 NJ 778 NJ 778 NJ 778 5020
load netBundle @core|dmem_addr 32 core|dmem_addr[31] core|dmem_addr[30] core|dmem_addr[29] core|dmem_addr[28] core|dmem_addr[27] core|dmem_addr[26] core|dmem_addr[25] core|dmem_addr[24] core|dmem_addr[23] core|dmem_addr[22] core|dmem_addr[21] core|dmem_addr[20] core|dmem_addr[19] core|dmem_addr[18] core|dmem_addr[17] core|dmem_addr[16] core|dmem_addr[15] core|dmem_addr[14] core|dmem_addr[13] core|dmem_addr[12] core|dmem_addr[11] core|dmem_addr[10] core|dmem_addr[9] core|dmem_addr[8] core|dmem_addr[7] core|dmem_addr[6] core|dmem_addr[5] core|dmem_addr[4] core|dmem_addr[3] core|dmem_addr[2] core|dmem_addr[1] core|dmem_addr[0] -autobundled
netbloc @core|dmem_addr 1 14 1 N 718
load netBundle @core|dmem_wdata 32 core|dmem_wdata[31] core|dmem_wdata[30] core|dmem_wdata[29] core|dmem_wdata[28] core|dmem_wdata[27] core|dmem_wdata[26] core|dmem_wdata[25] core|dmem_wdata[24] core|dmem_wdata[23] core|dmem_wdata[22] core|dmem_wdata[21] core|dmem_wdata[20] core|dmem_wdata[19] core|dmem_wdata[18] core|dmem_wdata[17] core|dmem_wdata[16] core|dmem_wdata[15] core|dmem_wdata[14] core|dmem_wdata[13] core|dmem_wdata[12] core|dmem_wdata[11] core|dmem_wdata[10] core|dmem_wdata[9] core|dmem_wdata[8] core|dmem_wdata[7] core|dmem_wdata[6] core|dmem_wdata[5] core|dmem_wdata[4] core|dmem_wdata[3] core|dmem_wdata[2] core|dmem_wdata[1] core|dmem_wdata[0] -autobundled
netbloc @core|dmem_wdata 1 14 1 N 738
load netBundle @core|mem_wb_alu_result 32 core|mem_wb_alu_result[31] core|mem_wb_alu_result[30] core|mem_wb_alu_result[29] core|mem_wb_alu_result[28] core|mem_wb_alu_result[27] core|mem_wb_alu_result[26] core|mem_wb_alu_result[25] core|mem_wb_alu_result[24] core|mem_wb_alu_result[23] core|mem_wb_alu_result[22] core|mem_wb_alu_result[21] core|mem_wb_alu_result[20] core|mem_wb_alu_result[19] core|mem_wb_alu_result[18] core|mem_wb_alu_result[17] core|mem_wb_alu_result[16] core|mem_wb_alu_result[15] core|mem_wb_alu_result[14] core|mem_wb_alu_result[13] core|mem_wb_alu_result[12] core|mem_wb_alu_result[11] core|mem_wb_alu_result[10] core|mem_wb_alu_result[9] core|mem_wb_alu_result[8] core|mem_wb_alu_result[7] core|mem_wb_alu_result[6] core|mem_wb_alu_result[5] core|mem_wb_alu_result[4] core|mem_wb_alu_result[3] core|mem_wb_alu_result[2] core|mem_wb_alu_result[1] core|mem_wb_alu_result[0] -autobundled
netbloc @core|mem_wb_alu_result 1 0 15 600 898 NJ 898 1470J 918 NJ 918 NJ 918 NJ 918 NJ 918 NJ 918 NJ 918 NJ 918 NJ 918 5140J 938 NJ 938 NJ 938 6760
load netBundle @core|mem_wb_mem_data 32 core|mem_wb_mem_data[31] core|mem_wb_mem_data[30] core|mem_wb_mem_data[29] core|mem_wb_mem_data[28] core|mem_wb_mem_data[27] core|mem_wb_mem_data[26] core|mem_wb_mem_data[25] core|mem_wb_mem_data[24] core|mem_wb_mem_data[23] core|mem_wb_mem_data[22] core|mem_wb_mem_data[21] core|mem_wb_mem_data[20] core|mem_wb_mem_data[19] core|mem_wb_mem_data[18] core|mem_wb_mem_data[17] core|mem_wb_mem_data[16] core|mem_wb_mem_data[15] core|mem_wb_mem_data[14] core|mem_wb_mem_data[13] core|mem_wb_mem_data[12] core|mem_wb_mem_data[11] core|mem_wb_mem_data[10] core|mem_wb_mem_data[9] core|mem_wb_mem_data[8] core|mem_wb_mem_data[7] core|mem_wb_mem_data[6] core|mem_wb_mem_data[5] core|mem_wb_mem_data[4] core|mem_wb_mem_data[3] core|mem_wb_mem_data[2] core|mem_wb_mem_data[1] core|mem_wb_mem_data[0] -autobundled
netbloc @core|mem_wb_mem_data 1 0 15 620 918 NJ 918 1450J 938 NJ 938 NJ 938 NJ 938 NJ 938 NJ 938 NJ 938 NJ 938 NJ 938 5120J 958 NJ 958 NJ 958 6740
load netBundle @core|mem_wb_rd 5 core|mem_wb_rd[4] core|mem_wb_rd[3] core|mem_wb_rd[2] core|mem_wb_rd[1] core|mem_wb_rd[0] -autobundled
netbloc @core|mem_wb_rd 1 0 15 600 1158 1090J 978 NJ 978 NJ 978 NJ 978 NJ 978 NJ 978 NJ 978 NJ 978 NJ 978 NJ 978 5080J 998 NJ 998 NJ 998 6700
load netBundle @core|wb_alu_result_r 32 core|wb_alu_result_r[31] core|wb_alu_result_r[30] core|wb_alu_result_r[29] core|wb_alu_result_r[28] core|wb_alu_result_r[27] core|wb_alu_result_r[26] core|wb_alu_result_r[25] core|wb_alu_result_r[24] core|wb_alu_result_r[23] core|wb_alu_result_r[22] core|wb_alu_result_r[21] core|wb_alu_result_r[20] core|wb_alu_result_r[19] core|wb_alu_result_r[18] core|wb_alu_result_r[17] core|wb_alu_result_r[16] core|wb_alu_result_r[15] core|wb_alu_result_r[14] core|wb_alu_result_r[13] core|wb_alu_result_r[12] core|wb_alu_result_r[11] core|wb_alu_result_r[10] core|wb_alu_result_r[9] core|wb_alu_result_r[8] core|wb_alu_result_r[7] core|wb_alu_result_r[6] core|wb_alu_result_r[5] core|wb_alu_result_r[4] core|wb_alu_result_r[3] core|wb_alu_result_r[2] core|wb_alu_result_r[1] core|wb_alu_result_r[0] -autobundled
netbloc @core|wb_alu_result_r 1 1 1 1010 998n
load netBundle @core|wb_mem_data_r 32 core|wb_mem_data_r[31] core|wb_mem_data_r[30] core|wb_mem_data_r[29] core|wb_mem_data_r[28] core|wb_mem_data_r[27] core|wb_mem_data_r[26] core|wb_mem_data_r[25] core|wb_mem_data_r[24] core|wb_mem_data_r[23] core|wb_mem_data_r[22] core|wb_mem_data_r[21] core|wb_mem_data_r[20] core|wb_mem_data_r[19] core|wb_mem_data_r[18] core|wb_mem_data_r[17] core|wb_mem_data_r[16] core|wb_mem_data_r[15] core|wb_mem_data_r[14] core|wb_mem_data_r[13] core|wb_mem_data_r[12] core|wb_mem_data_r[11] core|wb_mem_data_r[10] core|wb_mem_data_r[9] core|wb_mem_data_r[8] core|wb_mem_data_r[7] core|wb_mem_data_r[6] core|wb_mem_data_r[5] core|wb_mem_data_r[4] core|wb_mem_data_r[3] core|wb_mem_data_r[2] core|wb_mem_data_r[1] core|wb_mem_data_r[0] -autobundled
netbloc @core|wb_mem_data_r 1 1 1 1110 1018n
load netBundle @core|wb_rd 5 core|wb_rd[4] core|wb_rd[3] core|wb_rd[2] core|wb_rd[1] core|wb_rd[0] -autobundled
netbloc @core|wb_rd 1 1 6 990 938 1430 798 NJ 798 NJ 798 NJ 798 3320
load netBundle @core|wb_wdata 32 core|wb_wdata[31] core|wb_wdata[30] core|wb_wdata[29] core|wb_wdata[28] core|wb_wdata[27] core|wb_wdata[26] core|wb_wdata[25] core|wb_wdata[24] core|wb_wdata[23] core|wb_wdata[22] core|wb_wdata[21] core|wb_wdata[20] core|wb_wdata[19] core|wb_wdata[18] core|wb_wdata[17] core|wb_wdata[16] core|wb_wdata[15] core|wb_wdata[14] core|wb_wdata[13] core|wb_wdata[12] core|wb_wdata[11] core|wb_wdata[10] core|wb_wdata[9] core|wb_wdata[8] core|wb_wdata[7] core|wb_wdata[6] core|wb_wdata[5] core|wb_wdata[4] core|wb_wdata[3] core|wb_wdata[2] core|wb_wdata[1] core|wb_wdata[0] -autobundled
netbloc @core|wb_wdata 1 2 5 NJ 1118 1950 698 2470J 558 NJ 558 NJ
load netBundle @dmem_rdata 32 dmem_rdata[31] dmem_rdata[30] dmem_rdata[29] dmem_rdata[28] dmem_rdata[27] dmem_rdata[26] dmem_rdata[25] dmem_rdata[24] dmem_rdata[23] dmem_rdata[22] dmem_rdata[21] dmem_rdata[20] dmem_rdata[19] dmem_rdata[18] dmem_rdata[17] dmem_rdata[16] dmem_rdata[15] dmem_rdata[14] dmem_rdata[13] dmem_rdata[12] dmem_rdata[11] dmem_rdata[10] dmem_rdata[9] dmem_rdata[8] dmem_rdata[7] dmem_rdata[6] dmem_rdata[5] dmem_rdata[4] dmem_rdata[3] dmem_rdata[2] dmem_rdata[1] dmem_rdata[0] -autobundled
netbloc @dmem_rdata 1 1 3 380 1988 7030J 300 7280
load netBundle @imem_rdata 32 imem_rdata[31] imem_rdata[30] imem_rdata[29] imem_rdata[28] imem_rdata[27] imem_rdata[26] imem_rdata[25] imem_rdata[24] imem_rdata[23] imem_rdata[22] imem_rdata[21] imem_rdata[20] imem_rdata[19] imem_rdata[18] imem_rdata[17] imem_rdata[16] imem_rdata[15] imem_rdata[14] imem_rdata[13] imem_rdata[12] imem_rdata[11] imem_rdata[10] imem_rdata[9] imem_rdata[8] imem_rdata[7] imem_rdata[6] imem_rdata[5] imem_rdata[4] imem_rdata[3] imem_rdata[2] imem_rdata[1] imem_rdata[0] -autobundled
netbloc @imem_rdata 1 1 1 360 80n
load netBundle @dmem_addr 32 dmem_addr[31] dmem_addr[30] dmem_addr[29] dmem_addr[28] dmem_addr[27] dmem_addr[26] dmem_addr[25] dmem_addr[24] dmem_addr[23] dmem_addr[22] dmem_addr[21] dmem_addr[20] dmem_addr[19] dmem_addr[18] dmem_addr[17] dmem_addr[16] dmem_addr[15] dmem_addr[14] dmem_addr[13] dmem_addr[12] dmem_addr[11] dmem_addr[10] dmem_addr[9] dmem_addr[8] dmem_addr[7] dmem_addr[6] dmem_addr[5] dmem_addr[4] dmem_addr[3] dmem_addr[2] dmem_addr[1] dmem_addr[0] -autobundled
netbloc @dmem_addr 1 2 1 6930 180n
load netBundle @dmem_wdata 32 dmem_wdata[31] dmem_wdata[30] dmem_wdata[29] dmem_wdata[28] dmem_wdata[27] dmem_wdata[26] dmem_wdata[25] dmem_wdata[24] dmem_wdata[23] dmem_wdata[22] dmem_wdata[21] dmem_wdata[20] dmem_wdata[19] dmem_wdata[18] dmem_wdata[17] dmem_wdata[16] dmem_wdata[15] dmem_wdata[14] dmem_wdata[13] dmem_wdata[12] dmem_wdata[11] dmem_wdata[10] dmem_wdata[9] dmem_wdata[8] dmem_wdata[7] dmem_wdata[6] dmem_wdata[5] dmem_wdata[4] dmem_wdata[3] dmem_wdata[2] dmem_wdata[1] dmem_wdata[0] -autobundled
netbloc @dmem_wdata 1 2 1 6970 240n
load netBundle @imem_addr 32 imem_addr[31] imem_addr[30] imem_addr[29] imem_addr[28] imem_addr[27] imem_addr[26] imem_addr[25] imem_addr[24] imem_addr[23] imem_addr[22] imem_addr[21] imem_addr[20] imem_addr[19] imem_addr[18] imem_addr[17] imem_addr[16] imem_addr[15] imem_addr[14] imem_addr[13] imem_addr[12] imem_addr[11] imem_addr[10] imem_addr[9] imem_addr[8] imem_addr[7] imem_addr[6] imem_addr[5] imem_addr[4] imem_addr[3] imem_addr[2] imem_addr[1] imem_addr[0] -autobundled
netbloc @imem_addr 1 0 3 60 180 320J 1868 6930
levelinfo -pg 1 0 150 510 7130 7300
levelinfo -hier core * 770 1250 1700 2270 2730 3140 3620 4290 4520 4740 4930 5370 5960 6480 *
pagesize -pg 1 -db -bbox -sgen -70 0 7300 2000
pagesize -hier core -db -bbox -sgen 510 48 6790 1838
show
zoom 1.84866
scrollpos 6000 473
#
# initialize ictrl to current module soc_test_top work:soc_test_top:NOFILE
ictrl init topinfo |
