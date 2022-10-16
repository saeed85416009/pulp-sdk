RULES_DIR   is /home/sapo273663/project/pulp-sdk/tools/rules
PULPOS_HOME   is /home/sapo273663/project/pulp-sdk/rtos/pulpos/common
PULPOS_HOME   is /home/sapo273663/project/pulp-sdk/rtos/pulpos/common
PULPOS_TARGET   is pulp and 1 is /home/sapo273663/project/pulp-sdk/rtos/pulpos/pulp
PULPOS_PLATFORM is  platform is 
riscv32-unknown-elf-objdump -Mmarch=rv32imcxgap9 -d /home/sapo273663/project/pulp-sdk/tests/hello/BUILD/PULP/GCC_RISCV//test/test

/home/sapo273663/project/pulp-sdk/tests/hello/BUILD/PULP/GCC_RISCV//test/test:     file format elf32-littleriscv


Disassembly of section .vectors:

1c008000 <__irq_vector_base>:
1c008000:	08c0006f          	j	1c00808c <pos_illegal_instr>
1c008004:	08c0006f          	j	1c008090 <pos_no_irq_handler>
1c008008:	0880006f          	j	1c008090 <pos_no_irq_handler>
1c00800c:	0840006f          	j	1c008090 <pos_no_irq_handler>
1c008010:	0800006f          	j	1c008090 <pos_no_irq_handler>
1c008014:	07c0006f          	j	1c008090 <pos_no_irq_handler>
1c008018:	0780006f          	j	1c008090 <pos_no_irq_handler>
1c00801c:	0740006f          	j	1c008090 <pos_no_irq_handler>
1c008020:	0700006f          	j	1c008090 <pos_no_irq_handler>
1c008024:	06c0006f          	j	1c008090 <pos_no_irq_handler>
1c008028:	0680006f          	j	1c008090 <pos_no_irq_handler>
1c00802c:	0640006f          	j	1c008090 <pos_no_irq_handler>
1c008030:	0600006f          	j	1c008090 <pos_no_irq_handler>
1c008034:	05c0006f          	j	1c008090 <pos_no_irq_handler>
1c008038:	0580006f          	j	1c008090 <pos_no_irq_handler>
1c00803c:	0540006f          	j	1c008090 <pos_no_irq_handler>
1c008040:	0500006f          	j	1c008090 <pos_no_irq_handler>
1c008044:	04c0006f          	j	1c008090 <pos_no_irq_handler>
1c008048:	0480006f          	j	1c008090 <pos_no_irq_handler>
1c00804c:	0440006f          	j	1c008090 <pos_no_irq_handler>
1c008050:	0400006f          	j	1c008090 <pos_no_irq_handler>
1c008054:	03c0006f          	j	1c008090 <pos_no_irq_handler>
1c008058:	0380006f          	j	1c008090 <pos_no_irq_handler>
1c00805c:	0340006f          	j	1c008090 <pos_no_irq_handler>
1c008060:	0300006f          	j	1c008090 <pos_no_irq_handler>
1c008064:	02c0006f          	j	1c008090 <pos_no_irq_handler>
1c008068:	0280006f          	j	1c008090 <pos_no_irq_handler>
1c00806c:	0240006f          	j	1c008090 <pos_no_irq_handler>
1c008070:	0200006f          	j	1c008090 <pos_no_irq_handler>
1c008074:	01c0006f          	j	1c008090 <pos_no_irq_handler>
1c008078:	0180006f          	j	1c008090 <pos_no_irq_handler>
1c00807c:	0140006f          	j	1c008090 <pos_no_irq_handler>

1c008080 <_start>:
1c008080:	00000517          	auipc	a0,0x0
1c008084:	57a50513          	addi	a0,a0,1402 # 1c0085fa <pos_init_entry>
1c008088:	00050067          	jr	a0

1c00808c <pos_illegal_instr>:
1c00808c:	0000006f          	j	1c00808c <pos_illegal_instr>

1c008090 <pos_no_irq_handler>:
1c008090:	30200073          	mret

1c008094 <pos_semihosting_call>:
1c008094:	00100073          	ebreak
1c008098:	00008067          	ret

Disassembly of section .text:

1c00809c <main>:
1c00809c:	100107b7          	lui	a5,0x10010
1c0080a0:	4721                	li	a4,8
1c0080a2:	fee7a823          	sw	a4,-16(a5) # 1000fff0 <__l1_end+0xffd8>
1c0080a6:	4501                	li	a0,0
1c0080a8:	8082                	ret

1c0080aa <pos_fll_set_freq>:
1c0080aa:	100596b3          	p.fl1	a3,a1
1c0080ae:	47f5                	li	a5,29
1c0080b0:	872a                	mv	a4,a0
1c0080b2:	82d7b7db          	p.subun	a5,a5,a3,1
1c0080b6:	4505                	li	a0,1
1c0080b8:	04f567b3          	p.max	a5,a0,a5
1c0080bc:	fff78693          	addi	a3,a5,-1
1c0080c0:	00f595b3          	sll	a1,a1,a5
1c0080c4:	00d51533          	sll	a0,a0,a3
1c0080c8:	dc05b6b3          	p.bclr	a3,a1,14,0
1c0080cc:	c0f6a55b          	p.addunr	a0,a3,a5
1c0080d0:	1c0006b7          	lui	a3,0x1c000
1c0080d4:	00068693          	mv	a3,a3
1c0080d8:	00271613          	slli	a2,a4,0x2
1c0080dc:	00a6e623          	p.sw	a0,a2(a3)
1c0080e0:	96ba                	add	a3,a3,a4
1c0080e2:	00c6c683          	lbu	a3,12(a3) # 1c00000c <pos_fll_is_on>
1c0080e6:	ce99                	beqz	a3,1c008104 <pos_fll_set_freq+0x5a>
1c0080e8:	0712                	slli	a4,a4,0x4
1c0080ea:	0711                	addi	a4,a4,4
1c0080ec:	1a100637          	lui	a2,0x1a100
1c0080f0:	20e67683          	p.lw	a3,a4(a2)
1c0080f4:	81bd                	srli	a1,a1,0xf
1c0080f6:	de05a6b3          	p.insert	a3,a1,15,0
1c0080fa:	0785                	addi	a5,a5,1
1c0080fc:	c7a7a6b3          	p.insert	a3,a5,3,26
1c008100:	00d66723          	p.sw	a3,a4(a2)
1c008104:	8082                	ret

1c008106 <pos_fll_init>:
1c008106:	1141                	addi	sp,sp,-16
1c008108:	00451613          	slli	a2,a0,0x4
1c00810c:	c04a                	sw	s2,0(sp)
1c00810e:	00460813          	addi	a6,a2,4 # 1a100004 <__l1_end+0xa0fffec>
1c008112:	892a                	mv	s2,a0
1c008114:	1a1006b7          	lui	a3,0x1a100
1c008118:	c606                	sw	ra,12(sp)
1c00811a:	c422                	sw	s0,8(sp)
1c00811c:	c226                	sw	s1,4(sp)
1c00811e:	2106f703          	p.lw	a4,a6(a3)
1c008122:	87ba                	mv	a5,a4
1c008124:	04074163          	bltz	a4,1c008166 <pos_fll_init+0x60>
1c008128:	00860893          	addi	a7,a2,8
1c00812c:	2116f503          	p.lw	a0,a7(a3)
1c008130:	4599                	li	a1,6
1c008132:	caa5a533          	p.insert	a0,a1,5,10
1c008136:	05000593          	li	a1,80
1c00813a:	d705a533          	p.insert	a0,a1,11,16
1c00813e:	1a1005b7          	lui	a1,0x1a100
1c008142:	00a5e8a3          	p.sw	a0,a7(a1)
1c008146:	0631                	addi	a2,a2,12
1c008148:	20c6f683          	p.lw	a3,a2(a3)
1c00814c:	14c00513          	li	a0,332
1c008150:	d30526b3          	p.insert	a3,a0,9,16
1c008154:	00d5e623          	p.sw	a3,a2(a1)
1c008158:	4685                	li	a3,1
1c00815a:	c1e6a7b3          	p.insert	a5,a3,0,30
1c00815e:	c1f6a7b3          	p.insert	a5,a3,0,31
1c008162:	00f5e823          	p.sw	a5,a6(a1)
1c008166:	1c000537          	lui	a0,0x1c000
1c00816a:	00050693          	mv	a3,a0
1c00816e:	00291613          	slli	a2,s2,0x2
1c008172:	96b2                	add	a3,a3,a2
1c008174:	4284                	lw	s1,0(a3)
1c008176:	00050413          	mv	s0,a0
1c00817a:	c085                	beqz	s1,1c00819a <pos_fll_init+0x94>
1c00817c:	85a6                	mv	a1,s1
1c00817e:	854a                	mv	a0,s2
1c008180:	372d                	jal	1c0080aa <pos_fll_set_freq>
1c008182:	01240533          	add	a0,s0,s2
1c008186:	4785                	li	a5,1
1c008188:	00f50623          	sb	a5,12(a0) # 1c00000c <pos_fll_is_on>
1c00818c:	40b2                	lw	ra,12(sp)
1c00818e:	4422                	lw	s0,8(sp)
1c008190:	8526                	mv	a0,s1
1c008192:	4902                	lw	s2,0(sp)
1c008194:	4492                	lw	s1,4(sp)
1c008196:	0141                	addi	sp,sp,16
1c008198:	8082                	ret
1c00819a:	10075733          	p.exthz	a4,a4
1c00819e:	c7a797b3          	p.extractu	a5,a5,3,26
1c0081a2:	073e                	slli	a4,a4,0xf
1c0081a4:	17fd                	addi	a5,a5,-1
1c0081a6:	00f754b3          	srl	s1,a4,a5
1c0081aa:	c284                	sw	s1,0(a3)
1c0081ac:	bfd9                	j	1c008182 <pos_fll_init+0x7c>

1c0081ae <pos_fll_constructor>:
1c0081ae:	1c0007b7          	lui	a5,0x1c000
1c0081b2:	00078793          	mv	a5,a5
1c0081b6:	0007a023          	sw	zero,0(a5) # 1c000000 <pos_fll_freq>
1c0081ba:	0007a223          	sw	zero,4(a5)
1c0081be:	0007a423          	sw	zero,8(a5)
1c0081c2:	00079623          	sh	zero,12(a5)
1c0081c6:	00078723          	sb	zero,14(a5)
1c0081ca:	8082                	ret

1c0081cc <pos_soc_init>:
1c0081cc:	1141                	addi	sp,sp,-16
1c0081ce:	c606                	sw	ra,12(sp)
1c0081d0:	c422                	sw	s0,8(sp)
1c0081d2:	3ff1                	jal	1c0081ae <pos_fll_constructor>
1c0081d4:	4501                	li	a0,0
1c0081d6:	3f05                	jal	1c008106 <pos_fll_init>
1c0081d8:	1c000437          	lui	s0,0x1c000
1c0081dc:	00a42823          	sw	a0,16(s0) # 1c000010 <pos_freq_domains>
1c0081e0:	4505                	li	a0,1
1c0081e2:	3715                	jal	1c008106 <pos_fll_init>
1c0081e4:	01040413          	addi	s0,s0,16
1c0081e8:	c408                	sw	a0,8(s0)
1c0081ea:	4509                	li	a0,2
1c0081ec:	3f29                	jal	1c008106 <pos_fll_init>
1c0081ee:	c048                	sw	a0,4(s0)
1c0081f0:	40b2                	lw	ra,12(sp)
1c0081f2:	4422                	lw	s0,8(sp)
1c0081f4:	0141                	addi	sp,sp,16
1c0081f6:	8082                	ret

1c0081f8 <exit>:
1c0081f8:	1101                	addi	sp,sp,-32
1c0081fa:	c62a                	sw	a0,12(sp)
1c0081fc:	ce06                	sw	ra,28(sp)
1c0081fe:	2075                	jal	1c0082aa <pos_init_stop>
1c008200:	4532                	lw	a0,12(sp)
1c008202:	1a1047b7          	lui	a5,0x1a104
1c008206:	c1f54533          	p.bset	a0,a0,0,31
1c00820a:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104088>
1c00820e:	1a10a7b7          	lui	a5,0x1a10a
1c008212:	577d                	li	a4,-1
1c008214:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097f0>
1c008218:	10500073          	wfi
1c00821c:	bff5                	j	1c008218 <exit+0x20>

1c00821e <pos_io_start>:
1c00821e:	4501                	li	a0,0
1c008220:	8082                	ret

1c008222 <pos_io_stop>:
1c008222:	4501                	li	a0,0
1c008224:	8082                	ret

1c008226 <pos_init_start>:
1c008226:	100106b7          	lui	a3,0x10010
1c00822a:	16c1                	addi	a3,a3,-16
1c00822c:	4791                	li	a5,4
1c00822e:	c29c                	sw	a5,0(a3)
1c008230:	4795                	li	a5,5
1c008232:	c29c                	sw	a5,0(a3)
1c008234:	f14027f3          	csrr	a5,mhartid
1c008238:	f1402773          	csrr	a4,mhartid
1c00823c:	ca5797b3          	p.extractu	a5,a5,5,5
1c008240:	1785                	addi	a5,a5,-31
1c008242:	0017b793          	seqz	a5,a5
1c008246:	f4573733          	p.bclr	a4,a4,26,5
1c00824a:	02e79463          	bne	a5,a4,1c008272 <pos_init_start+0x4c>
1c00824e:	102007b7          	lui	a5,0x10200
1c008252:	4705                	li	a4,1
1c008254:	c398                	sw	a4,0(a5)
1c008256:	102017b7          	lui	a5,0x10201
1c00825a:	577d                	li	a4,-1
1c00825c:	40e7a023          	sw	a4,1024(a5) # 10201400 <__l1_end+0x2013e8>
1c008260:	002007b7          	lui	a5,0x200
1c008264:	43b8                	lw	a4,64(a5)
1c008266:	1c0087b7          	lui	a5,0x1c008
1c00826a:	08078793          	addi	a5,a5,128 # 1c008080 <_start>
1c00826e:	c31c                	sw	a5,0(a4)
1c008270:	a001                	j	1c008270 <pos_init_start+0x4a>
1c008272:	eb1d                	bnez	a4,1c0082a8 <pos_init_start+0x82>
1c008274:	1141                	addi	sp,sp,-16
1c008276:	c606                	sw	ra,12(sp)
1c008278:	47a5                	li	a5,9
1c00827a:	c422                	sw	s0,8(sp)
1c00827c:	c29c                	sw	a5,0(a3)
1c00827e:	1c001437          	lui	s0,0x1c001
1c008282:	2251                	jal	1c008406 <pos_irq_init>
1c008284:	84c40413          	addi	s0,s0,-1972 # 1c00084c <ctor_list+0x4>
1c008288:	3791                	jal	1c0081cc <pos_soc_init>
1c00828a:	227d                	jal	1c008438 <pos_soc_event_init>
1c00828c:	20f1                	jal	1c008358 <pos_allocs_init>
1c00828e:	28a1                	jal	1c0082e6 <pos_sched_init>
1c008290:	0044278b          	p.lw	a5,4(s0!)
1c008294:	eb81                	bnez	a5,1c0082a4 <pos_init_start+0x7e>
1c008296:	3761                	jal	1c00821e <pos_io_start>
1c008298:	300467f3          	csrrsi	a5,mstatus,8
1c00829c:	40b2                	lw	ra,12(sp)
1c00829e:	4422                	lw	s0,8(sp)
1c0082a0:	0141                	addi	sp,sp,16
1c0082a2:	8082                	ret
1c0082a4:	9782                	jalr	a5
1c0082a6:	b7ed                	j	1c008290 <pos_init_start+0x6a>
1c0082a8:	8082                	ret

1c0082aa <pos_init_stop>:
1c0082aa:	1141                	addi	sp,sp,-16
1c0082ac:	c422                	sw	s0,8(sp)
1c0082ae:	1c001437          	lui	s0,0x1c001
1c0082b2:	c606                	sw	ra,12(sp)
1c0082b4:	85c40413          	addi	s0,s0,-1956 # 1c00085c <dtor_list+0x4>
1c0082b8:	37ad                	jal	1c008222 <pos_io_stop>
1c0082ba:	0044278b          	p.lw	a5,4(s0!)
1c0082be:	e789                	bnez	a5,1c0082c8 <pos_init_stop+0x1e>
1c0082c0:	40b2                	lw	ra,12(sp)
1c0082c2:	4422                	lw	s0,8(sp)
1c0082c4:	0141                	addi	sp,sp,16
1c0082c6:	8082                	ret
1c0082c8:	9782                	jalr	a5
1c0082ca:	bfc5                	j	1c0082ba <pos_init_stop+0x10>

1c0082cc <pos_cbsys_add>:
1c0082cc:	00259793          	slli	a5,a1,0x2
1c0082d0:	1c0015b7          	lui	a1,0x1c001
1c0082d4:	06058593          	addi	a1,a1,96 # 1c001060 <stack>
1c0082d8:	95be                	add	a1,a1,a5
1c0082da:	419c                	lw	a5,0(a1)
1c0082dc:	c110                	sw	a2,0(a0)
1c0082de:	c154                	sw	a3,4(a0)
1c0082e0:	c51c                	sw	a5,8(a0)
1c0082e2:	c188                	sw	a0,0(a1)
1c0082e4:	8082                	ret

1c0082e6 <pos_sched_init>:
1c0082e6:	1c0007b7          	lui	a5,0x1c000
1c0082ea:	0007ae23          	sw	zero,28(a5) # 1c00001c <pos_sched_first>
1c0082ee:	8082                	ret

1c0082f0 <pos_alloc_init>:
1c0082f0:	00758793          	addi	a5,a1,7
1c0082f4:	c407b7b3          	p.bclr	a5,a5,2,0
1c0082f8:	40b785b3          	sub	a1,a5,a1
1c0082fc:	c11c                	sw	a5,0(a0)
1c0082fe:	8e0d                	sub	a2,a2,a1
1c008300:	00c05763          	blez	a2,1c00830e <pos_alloc_init+0x1e>
1c008304:	c4063633          	p.bclr	a2,a2,2,0
1c008308:	c390                	sw	a2,0(a5)
1c00830a:	0007a223          	sw	zero,4(a5)
1c00830e:	8082                	ret

1c008310 <pos_alloc>:
1c008310:	059d                	addi	a1,a1,7
1c008312:	411c                	lw	a5,0(a0)
1c008314:	c405b5b3          	p.bclr	a1,a1,2,0
1c008318:	4701                	li	a4,0
1c00831a:	cb89                	beqz	a5,1c00832c <pos_alloc+0x1c>
1c00831c:	4394                	lw	a3,0(a5)
1c00831e:	43d0                	lw	a2,4(a5)
1c008320:	00b6c863          	blt	a3,a1,1c008330 <pos_alloc+0x20>
1c008324:	00b69b63          	bne	a3,a1,1c00833a <pos_alloc+0x2a>
1c008328:	c719                	beqz	a4,1c008336 <pos_alloc+0x26>
1c00832a:	c350                	sw	a2,4(a4)
1c00832c:	853e                	mv	a0,a5
1c00832e:	8082                	ret
1c008330:	873e                	mv	a4,a5
1c008332:	87b2                	mv	a5,a2
1c008334:	b7dd                	j	1c00831a <pos_alloc+0xa>
1c008336:	c110                	sw	a2,0(a0)
1c008338:	bfd5                	j	1c00832c <pos_alloc+0x1c>
1c00833a:	00b78833          	add	a6,a5,a1
1c00833e:	40b685b3          	sub	a1,a3,a1
1c008342:	00b82023          	sw	a1,0(a6)
1c008346:	00c82223          	sw	a2,4(a6)
1c00834a:	c701                	beqz	a4,1c008352 <pos_alloc+0x42>
1c00834c:	01072223          	sw	a6,4(a4)
1c008350:	bff1                	j	1c00832c <pos_alloc+0x1c>
1c008352:	01052023          	sw	a6,0(a0)
1c008356:	bfd9                	j	1c00832c <pos_alloc+0x1c>

1c008358 <pos_allocs_init>:
1c008358:	1141                	addi	sp,sp,-16
1c00835a:	1c0015b7          	lui	a1,0x1c001
1c00835e:	c606                	sw	ra,12(sp)
1c008360:	c422                	sw	s0,8(sp)
1c008362:	0cc58793          	addi	a5,a1,204 # 1c0010cc <__l2_priv0_end>
1c008366:	1c008637          	lui	a2,0x1c008
1c00836a:	04c7c363          	blt	a5,a2,1c0083b0 <pos_allocs_init+0x58>
1c00836e:	4581                	li	a1,0
1c008370:	4601                	li	a2,0
1c008372:	1c001437          	lui	s0,0x1c001
1c008376:	0a440513          	addi	a0,s0,164 # 1c0010a4 <pos_alloc_l2>
1c00837a:	3f9d                	jal	1c0082f0 <pos_alloc_init>
1c00837c:	1c0105b7          	lui	a1,0x1c010
1c008380:	16858793          	addi	a5,a1,360 # 1c010168 <__l2_shared_end>
1c008384:	1c080637          	lui	a2,0x1c080
1c008388:	1c001537          	lui	a0,0x1c001
1c00838c:	8e1d                	sub	a2,a2,a5
1c00838e:	16858593          	addi	a1,a1,360
1c008392:	0a850513          	addi	a0,a0,168 # 1c0010a8 <pos_alloc_l2+0x4>
1c008396:	3fa9                	jal	1c0082f0 <pos_alloc_init>
1c008398:	0a440513          	addi	a0,s0,164
1c00839c:	4591                	li	a1,4
1c00839e:	3f8d                	jal	1c008310 <pos_alloc>
1c0083a0:	40b2                	lw	ra,12(sp)
1c0083a2:	4422                	lw	s0,8(sp)
1c0083a4:	1c0017b7          	lui	a5,0x1c001
1c0083a8:	0aa7a023          	sw	a0,160(a5) # 1c0010a0 <_edata>
1c0083ac:	0141                	addi	sp,sp,16
1c0083ae:	8082                	ret
1c0083b0:	8e1d                	sub	a2,a2,a5
1c0083b2:	0cc58593          	addi	a1,a1,204
1c0083b6:	bf75                	j	1c008372 <pos_allocs_init+0x1a>

1c0083b8 <pos_irq_set_handler>:
1c0083b8:	f14027f3          	csrr	a5,mhartid
1c0083bc:	477d                	li	a4,31
1c0083be:	ca5797b3          	p.extractu	a5,a5,5,5
1c0083c2:	02e79e63          	bne	a5,a4,1c0083fe <pos_irq_set_handler+0x46>
1c0083c6:	30502773          	csrr	a4,mtvec
1c0083ca:	c0073733          	p.bclr	a4,a4,0,0
1c0083ce:	050a                	slli	a0,a0,0x2
1c0083d0:	8d89                	sub	a1,a1,a0
1c0083d2:	8d99                	sub	a1,a1,a4
1c0083d4:	c14586b3          	p.extract	a3,a1,0,20
1c0083d8:	06f00793          	li	a5,111
1c0083dc:	c1f6a7b3          	p.insert	a5,a3,0,31
1c0083e0:	d21586b3          	p.extract	a3,a1,9,1
1c0083e4:	d356a7b3          	p.insert	a5,a3,9,21
1c0083e8:	c0b586b3          	p.extract	a3,a1,0,11
1c0083ec:	c146a7b3          	p.insert	a5,a3,0,20
1c0083f0:	cec585b3          	p.extract	a1,a1,7,12
1c0083f4:	cec5a7b3          	p.insert	a5,a1,7,12
1c0083f8:	00f56723          	p.sw	a5,a4(a0)
1c0083fc:	8082                	ret
1c0083fe:	002007b7          	lui	a5,0x200
1c008402:	43b8                	lw	a4,64(a5)
1c008404:	b7e9                	j	1c0083ce <pos_irq_set_handler+0x16>

1c008406 <pos_irq_init>:
1c008406:	1a10a7b7          	lui	a5,0x1a10a
1c00840a:	577d                	li	a4,-1
1c00840c:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097f0>
1c008410:	f1402773          	csrr	a4,mhartid
1c008414:	1c0087b7          	lui	a5,0x1c008
1c008418:	ca571733          	p.extractu	a4,a4,5,5
1c00841c:	46fd                	li	a3,31
1c00841e:	00078793          	mv	a5,a5
1c008422:	00d71763          	bne	a4,a3,1c008430 <pos_irq_init+0x2a>
1c008426:	c007c7b3          	p.bset	a5,a5,0,0
1c00842a:	30579073          	csrw	mtvec,a5
1c00842e:	8082                	ret
1c008430:	00200737          	lui	a4,0x200
1c008434:	c33c                	sw	a5,64(a4)
1c008436:	8082                	ret

1c008438 <pos_soc_event_init>:
1c008438:	1a1067b7          	lui	a5,0x1a106
1c00843c:	1141                	addi	sp,sp,-16
1c00843e:	c606                	sw	ra,12(sp)
1c008440:	577d                	li	a4,-1
1c008442:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fec>
1c008446:	c298                	sw	a4,0(a3)
1c008448:	00878693          	addi	a3,a5,8
1c00844c:	c298                	sw	a4,0(a3)
1c00844e:	00c78693          	addi	a3,a5,12
1c008452:	c298                	sw	a4,0(a3)
1c008454:	01078693          	addi	a3,a5,16
1c008458:	c298                	sw	a4,0(a3)
1c00845a:	01478693          	addi	a3,a5,20
1c00845e:	c298                	sw	a4,0(a3)
1c008460:	01878693          	addi	a3,a5,24
1c008464:	c298                	sw	a4,0(a3)
1c008466:	01c78693          	addi	a3,a5,28
1c00846a:	c298                	sw	a4,0(a3)
1c00846c:	02078793          	addi	a5,a5,32
1c008470:	1c0085b7          	lui	a1,0x1c008
1c008474:	c398                	sw	a4,0(a5)
1c008476:	71c58593          	addi	a1,a1,1820 # 1c00871c <pos_soc_event_handler_asm>
1c00847a:	4569                	li	a0,26
1c00847c:	3f35                	jal	1c0083b8 <pos_irq_set_handler>
1c00847e:	40b2                	lw	ra,12(sp)
1c008480:	1a10a7b7          	lui	a5,0x1a10a
1c008484:	04000737          	lui	a4,0x4000
1c008488:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097ec>
1c00848c:	0141                	addi	sp,sp,16
1c00848e:	8082                	ret

1c008490 <pos_time_poweroff>:
1c008490:	1a10b7b7          	lui	a5,0x1a10b
1c008494:	0791                	addi	a5,a5,4
1c008496:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10aff0>
1c00849a:	1c001737          	lui	a4,0x1c001
1c00849e:	06f72c23          	sw	a5,120(a4) # 1c001078 <pos_time_timer_count>
1c0084a2:	4501                	li	a0,0
1c0084a4:	8082                	ret

1c0084a6 <pos_time_poweron>:
1c0084a6:	1c0017b7          	lui	a5,0x1c001
1c0084aa:	0787a703          	lw	a4,120(a5) # 1c001078 <pos_time_timer_count>
1c0084ae:	1a10b7b7          	lui	a5,0x1a10b
1c0084b2:	0791                	addi	a5,a5,4
1c0084b4:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10aff0>
1c0084b8:	4501                	li	a0,0
1c0084ba:	8082                	ret

1c0084bc <pos_time_timer_handler>:
1c0084bc:	1c0016b7          	lui	a3,0x1c001
1c0084c0:	07868793          	addi	a5,a3,120 # 1c001078 <pos_time_timer_count>
1c0084c4:	43dc                	lw	a5,4(a5)
1c0084c6:	1a10b737          	lui	a4,0x1a10b
1c0084ca:	0711                	addi	a4,a4,4
1c0084cc:	00872703          	lw	a4,8(a4) # 1a10b008 <__l1_end+0xa10aff0>
1c0084d0:	1c0005b7          	lui	a1,0x1c000
1c0084d4:	1c000637          	lui	a2,0x1c000
1c0084d8:	80000e37          	lui	t3,0x80000
1c0084dc:	01c5a803          	lw	a6,28(a1) # 1c00001c <pos_sched_first>
1c0084e0:	02062503          	lw	a0,32(a2) # 1c000020 <pos_sched_last>
1c0084e4:	4881                	li	a7,0
1c0084e6:	4301                	li	t1,0
1c0084e8:	07868693          	addi	a3,a3,120
1c0084ec:	ffee4e13          	xori	t3,t3,-2
1c0084f0:	efb9                	bnez	a5,1c00854e <pos_time_timer_handler+0x92>
1c0084f2:	00030463          	beqz	t1,1c0084fa <pos_time_timer_handler+0x3e>
1c0084f6:	0105ae23          	sw	a6,28(a1)
1c0084fa:	00088463          	beqz	a7,1c008502 <pos_time_timer_handler+0x46>
1c0084fe:	02a62023          	sw	a0,32(a2)
1c008502:	1a10b7b7          	lui	a5,0x1a10b
1c008506:	08100713          	li	a4,129
1c00850a:	0791                	addi	a5,a5,4
1c00850c:	0006a223          	sw	zero,4(a3)
1c008510:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe8>
1c008514:	f1402773          	csrr	a4,mhartid
1c008518:	6785                	lui	a5,0x1
1c00851a:	ca571733          	p.extractu	a4,a4,5,5
1c00851e:	46fd                	li	a3,31
1c008520:	80078793          	addi	a5,a5,-2048 # 800 <__cluster_text_size+0x6b0>
1c008524:	06d71463          	bne	a4,a3,1c00858c <pos_time_timer_handler+0xd0>
1c008528:	1a10a737          	lui	a4,0x1a10a
1c00852c:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097fc>
1c008530:	8082                	ret
1c008532:	0007ae83          	lw	t4,0(a5)
1c008536:	0007a023          	sw	zero,0(a5)
1c00853a:	00080763          	beqz	a6,1c008548 <pos_time_timer_handler+0x8c>
1c00853e:	c11c                	sw	a5,0(a0)
1c008540:	853e                	mv	a0,a5
1c008542:	4885                	li	a7,1
1c008544:	87f6                	mv	a5,t4
1c008546:	b76d                	j	1c0084f0 <pos_time_timer_handler+0x34>
1c008548:	883e                	mv	a6,a5
1c00854a:	4305                	li	t1,1
1c00854c:	bfd5                	j	1c008540 <pos_time_timer_handler+0x84>
1c00854e:	03c7ae83          	lw	t4,60(a5)
1c008552:	41d70eb3          	sub	t4,a4,t4
1c008556:	fdde7ee3          	bleu	t4,t3,1c008532 <pos_time_timer_handler+0x76>
1c00855a:	00030463          	beqz	t1,1c008562 <pos_time_timer_handler+0xa6>
1c00855e:	0105ae23          	sw	a6,28(a1)
1c008562:	00088463          	beqz	a7,1c00856a <pos_time_timer_handler+0xae>
1c008566:	02a62023          	sw	a0,32(a2)
1c00856a:	c2dc                	sw	a5,4(a3)
1c00856c:	1a10b6b7          	lui	a3,0x1a10b
1c008570:	0691                	addi	a3,a3,4
1c008572:	0086a603          	lw	a2,8(a3) # 1a10b008 <__l1_end+0xa10aff0>
1c008576:	5fdc                	lw	a5,60(a5)
1c008578:	40e78733          	sub	a4,a5,a4
1c00857c:	9732                	add	a4,a4,a2
1c00857e:	00e6a823          	sw	a4,16(a3)
1c008582:	08500793          	li	a5,133
1c008586:	00f6a023          	sw	a5,0(a3)
1c00858a:	8082                	ret
1c00858c:	00204737          	lui	a4,0x204
1c008590:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c008594:	8082                	ret

1c008596 <pos_time_init>:
1c008596:	1141                	addi	sp,sp,-16
1c008598:	c422                	sw	s0,8(sp)
1c00859a:	1a10b7b7          	lui	a5,0x1a10b
1c00859e:	1c001437          	lui	s0,0x1c001
1c0085a2:	c606                	sw	ra,12(sp)
1c0085a4:	07840413          	addi	s0,s0,120 # 1c001078 <pos_time_timer_count>
1c0085a8:	08300713          	li	a4,131
1c0085ac:	0791                	addi	a5,a5,4
1c0085ae:	00042223          	sw	zero,4(s0)
1c0085b2:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe8>
1c0085b6:	1c0085b7          	lui	a1,0x1c008
1c0085ba:	6f858593          	addi	a1,a1,1784 # 1c0086f8 <pos_time_timer_handler_asm>
1c0085be:	452d                	li	a0,11
1c0085c0:	3be5                	jal	1c0083b8 <pos_irq_set_handler>
1c0085c2:	6785                	lui	a5,0x1
1c0085c4:	1a10a737          	lui	a4,0x1a10a
1c0085c8:	80078793          	addi	a5,a5,-2048 # 800 <__cluster_text_size+0x6b0>
1c0085cc:	1c008637          	lui	a2,0x1c008
1c0085d0:	00840513          	addi	a0,s0,8
1c0085d4:	4681                	li	a3,0
1c0085d6:	49060613          	addi	a2,a2,1168 # 1c008490 <pos_time_poweroff>
1c0085da:	4589                	li	a1,2
1c0085dc:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097ec>
1c0085e0:	31f5                	jal	1c0082cc <pos_cbsys_add>
1c0085e2:	01840513          	addi	a0,s0,24
1c0085e6:	4422                	lw	s0,8(sp)
1c0085e8:	40b2                	lw	ra,12(sp)
1c0085ea:	1c008637          	lui	a2,0x1c008
1c0085ee:	4681                	li	a3,0
1c0085f0:	4a660613          	addi	a2,a2,1190 # 1c0084a6 <pos_time_poweron>
1c0085f4:	458d                	li	a1,3
1c0085f6:	0141                	addi	sp,sp,16
1c0085f8:	b9d1                	j	1c0082cc <pos_cbsys_add>

1c0085fa <pos_init_entry>:
1c0085fa:	7a101073          	csrw	pcmr,zero
1c0085fe:	f1402573          	csrr	a0,mhartid
1c008602:	01f57593          	andi	a1,a0,31
1c008606:	8115                	srli	a0,a0,0x5
1c008608:	467d                	li	a2,31
1c00860a:	00c50463          	beq	a0,a2,1c008612 <pos_init_entry+0x18>
1c00860e:	1f30706f          	j	1c010000 <__cluster_text_start>
1c008612:	ffff9297          	auipc	t0,0xffff9
1c008616:	a8e28293          	addi	t0,t0,-1394 # 1c0010a0 <_edata>
1c00861a:	ffff9317          	auipc	t1,0xffff9
1c00861e:	ab230313          	addi	t1,t1,-1358 # 1c0010cc <__l2_priv0_end>
1c008622:	0002a023          	sw	zero,0(t0)
1c008626:	0291                	addi	t0,t0,4
1c008628:	fe62ede3          	bltu	t0,t1,1c008622 <pos_init_entry+0x28>
1c00862c:	ffff9117          	auipc	sp,0xffff9
1c008630:	a3410113          	addi	sp,sp,-1484 # 1c001060 <stack>
1c008634:	00000297          	auipc	t0,0x0
1c008638:	bf228293          	addi	t0,t0,-1038 # 1c008226 <pos_init_start>
1c00863c:	000280e7          	jalr	t0
1c008640:	00000513          	li	a0,0
1c008644:	00000593          	li	a1,0
1c008648:	00000397          	auipc	t2,0x0
1c00864c:	a5438393          	addi	t2,t2,-1452 # 1c00809c <main>
1c008650:	000380e7          	jalr	t2
1c008654:	842a                	mv	s0,a0
1c008656:	8522                	mv	a0,s0
1c008658:	00000297          	auipc	t0,0x0
1c00865c:	ba028293          	addi	t0,t0,-1120 # 1c0081f8 <exit>
1c008660:	000280e7          	jalr	t0

1c008664 <pos_irq_call_external_c_function>:
1c008664:	7119                	addi	sp,sp,-128
1c008666:	c006                	sw	ra,0(sp)
1c008668:	c20e                	sw	gp,4(sp)
1c00866a:	c412                	sw	tp,8(sp)
1c00866c:	c616                	sw	t0,12(sp)
1c00866e:	c81a                	sw	t1,16(sp)
1c008670:	ca1e                	sw	t2,20(sp)
1c008672:	d236                	sw	a3,36(sp)
1c008674:	d43a                	sw	a4,40(sp)
1c008676:	d63e                	sw	a5,44(sp)
1c008678:	d842                	sw	a6,48(sp)
1c00867a:	da46                	sw	a7,52(sp)
1c00867c:	dc72                	sw	t3,56(sp)
1c00867e:	de76                	sw	t4,60(sp)
1c008680:	c0fa                	sw	t5,64(sp)
1c008682:	c6fe                	sw	t6,76(sp)
1c008684:	000600e7          	jalr	a2
1c008688:	4082                	lw	ra,0(sp)
1c00868a:	4192                	lw	gp,4(sp)
1c00868c:	4222                	lw	tp,8(sp)
1c00868e:	42b2                	lw	t0,12(sp)
1c008690:	4342                	lw	t1,16(sp)
1c008692:	43d2                	lw	t2,20(sp)
1c008694:	5692                	lw	a3,36(sp)
1c008696:	5722                	lw	a4,40(sp)
1c008698:	57b2                	lw	a5,44(sp)
1c00869a:	5842                	lw	a6,48(sp)
1c00869c:	58d2                	lw	a7,52(sp)
1c00869e:	5e62                	lw	t3,56(sp)
1c0086a0:	5ef2                	lw	t4,60(sp)
1c0086a2:	4f06                	lw	t5,64(sp)
1c0086a4:	4fb6                	lw	t6,76(sp)
1c0086a6:	6109                	addi	sp,sp,128
1c0086a8:	8482                	jr	s1

1c0086aa <pos_irq_call_external_c_function_full>:
1c0086aa:	7119                	addi	sp,sp,-128
1c0086ac:	c006                	sw	ra,0(sp)
1c0086ae:	c20e                	sw	gp,4(sp)
1c0086b0:	c412                	sw	tp,8(sp)
1c0086b2:	c616                	sw	t0,12(sp)
1c0086b4:	c81a                	sw	t1,16(sp)
1c0086b6:	ca1e                	sw	t2,20(sp)
1c0086b8:	cc2a                	sw	a0,24(sp)
1c0086ba:	ce2e                	sw	a1,28(sp)
1c0086bc:	d236                	sw	a3,36(sp)
1c0086be:	d43a                	sw	a4,40(sp)
1c0086c0:	d63e                	sw	a5,44(sp)
1c0086c2:	d842                	sw	a6,48(sp)
1c0086c4:	da46                	sw	a7,52(sp)
1c0086c6:	dc72                	sw	t3,56(sp)
1c0086c8:	de76                	sw	t4,60(sp)
1c0086ca:	c0fa                	sw	t5,64(sp)
1c0086cc:	c6fe                	sw	t6,76(sp)
1c0086ce:	000600e7          	jalr	a2
1c0086d2:	4082                	lw	ra,0(sp)
1c0086d4:	4192                	lw	gp,4(sp)
1c0086d6:	4222                	lw	tp,8(sp)
1c0086d8:	42b2                	lw	t0,12(sp)
1c0086da:	4342                	lw	t1,16(sp)
1c0086dc:	43d2                	lw	t2,20(sp)
1c0086de:	4562                	lw	a0,24(sp)
1c0086e0:	45f2                	lw	a1,28(sp)
1c0086e2:	5692                	lw	a3,36(sp)
1c0086e4:	5722                	lw	a4,40(sp)
1c0086e6:	57b2                	lw	a5,44(sp)
1c0086e8:	5842                	lw	a6,48(sp)
1c0086ea:	58d2                	lw	a7,52(sp)
1c0086ec:	5e62                	lw	t3,56(sp)
1c0086ee:	5ef2                	lw	t4,60(sp)
1c0086f0:	4f06                	lw	t5,64(sp)
1c0086f2:	4fb6                	lw	t6,76(sp)
1c0086f4:	6109                	addi	sp,sp,128
1c0086f6:	8482                	jr	s1

1c0086f8 <pos_time_timer_handler_asm>:
1c0086f8:	1161                	addi	sp,sp,-8
1c0086fa:	c032                	sw	a2,0(sp)
1c0086fc:	c226                	sw	s1,4(sp)
1c0086fe:	00000617          	auipc	a2,0x0
1c008702:	dbe60613          	addi	a2,a2,-578 # 1c0084bc <pos_time_timer_handler>
1c008706:	00000497          	auipc	s1,0x0
1c00870a:	00c48493          	addi	s1,s1,12 # 1c008712 <pos_time_timer_handler_asm_ret>
1c00870e:	f9dff06f          	j	1c0086aa <pos_irq_call_external_c_function_full>

1c008712 <pos_time_timer_handler_asm_ret>:
1c008712:	4492                	lw	s1,4(sp)
1c008714:	4602                	lw	a2,0(sp)
1c008716:	0121                	addi	sp,sp,8
1c008718:	30200073          	mret

1c00871c <pos_soc_event_handler_asm>:
1c00871c:	7119                	addi	sp,sp,-128
1c00871e:	c022                	sw	s0,0(sp)
1c008720:	c226                	sw	s1,4(sp)
1c008722:	c42a                	sw	a0,8(sp)
1c008724:	c62e                	sw	a1,12(sp)
1c008726:	c832                	sw	a2,16(sp)
1c008728:	1a10a437          	lui	s0,0x1a10a
1c00872c:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097e8>
1c008730:	5048                	lw	a0,36(s0)
1c008732:	00251593          	slli	a1,a0,0x2
1c008736:	ffff8297          	auipc	t0,0xffff8
1c00873a:	d0e28293          	addi	t0,t0,-754 # 1c000444 <pos_soc_event_callback>
1c00873e:	2055f603          	p.lw	a2,t0(a1)
1c008742:	ffff8297          	auipc	t0,0xffff8
1c008746:	90228293          	addi	t0,t0,-1790 # 1c000044 <pos_soc_event_callback_arg>
1c00874a:	2055f583          	p.lw	a1,t0(a1)
1c00874e:	00000497          	auipc	s1,0x0
1c008752:	03048493          	addi	s1,s1,48 # 1c00877e <pos_soc_event_handler_end_asm>
1c008756:	f0fff06f          	j	1c008664 <pos_irq_call_external_c_function>

1c00875a <pos_soc_event_no_udma_asm>:
1c00875a:	00555593          	srli	a1,a0,0x5
1c00875e:	058a                	slli	a1,a1,0x2
1c008760:	ffff8297          	auipc	t0,0xffff8
1c008764:	8c428293          	addi	t0,t0,-1852 # 1c000024 <pos_soc_event_status>
1c008768:	2055f603          	p.lw	a2,t0(a1)
1c00876c:	897d                	andi	a0,a0,31
1c00876e:	80a64633          	p.bsetr	a2,a2,a0
1c008772:	ffff8297          	auipc	t0,0xffff8
1c008776:	8b228293          	addi	t0,t0,-1870 # 1c000024 <pos_soc_event_status>
1c00877a:	00c5e2a3          	p.sw	a2,t0(a1)

1c00877e <pos_soc_event_handler_end_asm>:
1c00877e:	4402                	lw	s0,0(sp)
1c008780:	4492                	lw	s1,4(sp)
1c008782:	4522                	lw	a0,8(sp)
1c008784:	45b2                	lw	a1,12(sp)
1c008786:	4642                	lw	a2,16(sp)
1c008788:	6109                	addi	sp,sp,128
1c00878a:	30200073          	mret

1c00878e <_endtext>:
	...

Disassembly of section .l2_data:

1c010000 <__cluster_text_start>:
1c010000:	f1402573          	csrr	a0,mhartid
1c010004:	01f57593          	andi	a1,a0,31
1c010008:	8115                	srli	a0,a0,0x5
1c01000a:	000702b7          	lui	t0,0x70
1c01000e:	00204337          	lui	t1,0x204
1c010012:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f401c>
1c010016:	4381                	li	t2,0
1c010018:	0e759463          	bne	a1,t2,1c010100 <pos_slave_start>
1c01001c:	20000293          	li	t0,512
1c010020:	00204337          	lui	t1,0x204
1c010024:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4030>
1c010028:	f3ff0417          	auipc	s0,0xf3ff0
1c01002c:	fd840413          	addi	s0,s0,-40 # 10000000 <pos_cluster_pool>
1c010030:	002049b7          	lui	s3,0x204
1c010034:	4a09                	li	s4,2
1c010036:	00000a97          	auipc	s5,0x0
1c01003a:	038a8a93          	addi	s5,s5,56 # 1c01006e <pos_master_event>
1c01003e:	ffff1b97          	auipc	s7,0xffff1
1c010042:	06eb8b93          	addi	s7,s7,110 # 1c0010ac <pos_cluster>
1c010046:	02c00393          	li	t2,44
1c01004a:	02a383b3          	mul	t2,t2,a0
1c01004e:	9b9e                	add	s7,s7,t2
1c010050:	0bd1                	addi	s7,s7,20
1c010052:	1a10acb7          	lui	s9,0x1a10a
1c010056:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097f8>
1c01005a:	4c09                	li	s8,2
1c01005c:	00000d17          	auipc	s10,0x0
1c010060:	0e2d0d13          	addi	s10,s10,226 # 1c01013e <pos_set_slave_stack>
1c010064:	001d6d13          	ori	s10,s10,1
1c010068:	30045073          	csrwi	mstatus,8
1c01006c:	a829                	j	1c010086 <pos_master_loop>

1c01006e <pos_master_event>:
1c01006e:	018b2b03          	lw	s6,24(s6)
1c010072:	000b0a63          	beqz	s6,1c010086 <pos_master_loop>

1c010076 <pos_push_event_to_fc_retry>:
1c010076:	000ba283          	lw	t0,0(s7)
1c01007a:	06029c63          	bnez	t0,1c0100f2 <pos_push_event_to_fc_wait>
1c01007e:	016ba023          	sw	s6,0(s7)
1c010082:	018ca023          	sw	s8,0(s9)

1c010086 <pos_master_loop>:
1c010086:	00042b03          	lw	s6,0(s0)
1c01008a:	040b0d63          	beqz	s6,1c0100e4 <pos_master_sleep>

1c01008e <pos_master_loop_update_next>:
1c01008e:	020b2e83          	lw	t4,32(s6)
1c010092:	01d42023          	sw	t4,0(s0)
1c010096:	020b2f03          	lw	t5,32(s6)
1c01009a:	ffee9ae3          	bne	t4,t5,1c01008e <pos_master_loop_update_next>

1c01009e <pos_master_loop_exec_task>:
1c01009e:	004b2503          	lw	a0,4(s6)
1c0100a2:	000b2283          	lw	t0,0(s6)
1c0100a6:	008b2103          	lw	sp,8(s6)
1c0100aa:	00cb2303          	lw	t1,12(s6)
1c0100ae:	010b2383          	lw	t2,16(s6)
1c0100b2:	024b2f03          	lw	t5,36(s6)
1c0100b6:	014b2f83          	lw	t6,20(s6)
1c0100ba:	80d6                	mv	ra,s5
1c0100bc:	911a                	add	sp,sp,t1
1c0100be:	f3ff0e17          	auipc	t3,0xf3ff0
1c0100c2:	f5fe2b23          	sw	t6,-170(t3) # 10000014 <pos_cluster_nb_active_pe>

1c0100c6 <pos_no_stack_check>:
1c0100c6:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a0>
1c0100ca:	21e9a023          	sw	t5,512(s3)
1c0100ce:	21e9a623          	sw	t5,524(s3)

1c0100d2 <pos_master_no_slave_barrier>:
1c0100d2:	000f2863          	p.beqimm	t5,0,1c0100e2 <pos_master_loop_no_slave>
1c0100d6:	09a9a023          	sw	s10,128(s3)
1c0100da:	0879a023          	sw	t2,128(s3)
1c0100de:	0829a023          	sw	sp,128(s3)

1c0100e2 <pos_master_loop_no_slave>:
1c0100e2:	8282                	jr	t0

1c0100e4 <pos_master_sleep>:
1c0100e4:	0149a423          	sw	s4,8(s3)
1c0100e8:	03c9e003          	p.elw	zero,60(s3)
1c0100ec:	0149a223          	sw	s4,4(s3)
1c0100f0:	bf59                	j	1c010086 <pos_master_loop>

1c0100f2 <pos_push_event_to_fc_wait>:
1c0100f2:	0149a423          	sw	s4,8(s3)
1c0100f6:	03c9e003          	p.elw	zero,60(s3)
1c0100fa:	0149a223          	sw	s4,4(s3)
1c0100fe:	bfa5                	j	1c010076 <pos_push_event_to_fc_retry>

1c010100 <pos_slave_start>:
1c010100:	00204937          	lui	s2,0x204
1c010104:	f14029f3          	csrr	s3,mhartid
1c010108:	01f9f993          	andi	s3,s3,31
1c01010c:	00000a17          	auipc	s4,0x0
1c010110:	012a0a13          	addi	s4,s4,18 # 1c01011e <pos_fork_return>
1c010114:	00000a97          	auipc	s5,0x0
1c010118:	00ea8a93          	addi	s5,s5,14 # 1c010122 <pos_wait_for_dispatch>
1c01011c:	a019                	j	1c010122 <pos_wait_for_dispatch>

1c01011e <pos_fork_return>:
1c01011e:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4238>

1c010122 <pos_wait_for_dispatch>:
1c010122:	08096283          	p.elw	t0,128(s2)
1c010126:	08096503          	p.elw	a0,128(s2)
1c01012a:	0012f313          	andi	t1,t0,1
1c01012e:	00031563          	bnez	t1,1c010138 <pos_other_entry>

1c010132 <pos_fork_entry>:
1c010132:	000a00b3          	add	ra,s4,zero
1c010136:	8282                	jr	t0

1c010138 <pos_other_entry>:
1c010138:	000a80b3          	add	ra,s5,zero
1c01013c:	8282                	jr	t0

1c01013e <pos_set_slave_stack>:
1c01013e:	08096283          	p.elw	t0,128(s2)
1c010142:	00098f13          	mv	t5,s3
1c010146:	02af0eb3          	mul	t4,t5,a0
1c01014a:	005e8133          	add	sp,t4,t0
1c01014e:	8082                	ret
