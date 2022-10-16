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
1c008084:	24850513          	addi	a0,a0,584 # 1c0082c8 <pos_init_entry>
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
1c0080a0:	4719                	li	a4,6
1c0080a2:	fee7a823          	sw	a4,-16(a5) # 1000fff0 <__l1_end+0xffd8>
1c0080a6:	4501                	li	a0,0
1c0080a8:	8082                	ret

1c0080aa <exit>:
1c0080aa:	1101                	addi	sp,sp,-32
1c0080ac:	c62a                	sw	a0,12(sp)
1c0080ae:	ce06                	sw	ra,28(sp)
1c0080b0:	2015                	jal	1c0080d4 <pos_init_stop>
1c0080b2:	4532                	lw	a0,12(sp)
1c0080b4:	1a1047b7          	lui	a5,0x1a104
1c0080b8:	c1f54533          	p.bset	a0,a0,0,31
1c0080bc:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa104088>
1c0080c0:	1a10a7b7          	lui	a5,0x1a10a
1c0080c4:	577d                	li	a4,-1
1c0080c6:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097f0>
1c0080ca:	10500073          	wfi
1c0080ce:	bff5                	j	1c0080ca <exit+0x20>

1c0080d0 <pos_io_stop>:
1c0080d0:	4501                	li	a0,0
1c0080d2:	8082                	ret

1c0080d4 <pos_init_stop>:
1c0080d4:	1141                	addi	sp,sp,-16
1c0080d6:	c422                	sw	s0,8(sp)
1c0080d8:	1c000437          	lui	s0,0x1c000
1c0080dc:	c606                	sw	ra,12(sp)
1c0080de:	02040413          	addi	s0,s0,32 # 1c000020 <dtor_list+0x4>
1c0080e2:	37fd                	jal	1c0080d0 <pos_io_stop>
1c0080e4:	0044278b          	p.lw	a5,4(s0!)
1c0080e8:	e789                	bnez	a5,1c0080f2 <pos_init_stop+0x1e>
1c0080ea:	40b2                	lw	ra,12(sp)
1c0080ec:	4422                	lw	s0,8(sp)
1c0080ee:	0141                	addi	sp,sp,16
1c0080f0:	8082                	ret
1c0080f2:	9782                	jalr	a5
1c0080f4:	bfc5                	j	1c0080e4 <pos_init_stop+0x10>

1c0080f6 <pos_cbsys_add>:
1c0080f6:	00259793          	slli	a5,a1,0x2
1c0080fa:	1c0015b7          	lui	a1,0x1c001
1c0080fe:	83058593          	addi	a1,a1,-2000 # 1c000830 <stack>
1c008102:	95be                	add	a1,a1,a5
1c008104:	419c                	lw	a5,0(a1)
1c008106:	c110                	sw	a2,0(a0)
1c008108:	c154                	sw	a3,4(a0)
1c00810a:	c51c                	sw	a5,8(a0)
1c00810c:	c188                	sw	a0,0(a1)
1c00810e:	8082                	ret

1c008110 <pos_irq_set_handler>:
1c008110:	f14027f3          	csrr	a5,mhartid
1c008114:	477d                	li	a4,31
1c008116:	ca5797b3          	p.extractu	a5,a5,5,5
1c00811a:	02e79e63          	bne	a5,a4,1c008156 <pos_irq_set_handler+0x46>
1c00811e:	30502773          	csrr	a4,mtvec
1c008122:	c0073733          	p.bclr	a4,a4,0,0
1c008126:	050a                	slli	a0,a0,0x2
1c008128:	8d89                	sub	a1,a1,a0
1c00812a:	8d99                	sub	a1,a1,a4
1c00812c:	c14586b3          	p.extract	a3,a1,0,20
1c008130:	06f00793          	li	a5,111
1c008134:	c1f6a7b3          	p.insert	a5,a3,0,31
1c008138:	d21586b3          	p.extract	a3,a1,9,1
1c00813c:	d356a7b3          	p.insert	a5,a3,9,21
1c008140:	c0b586b3          	p.extract	a3,a1,0,11
1c008144:	c146a7b3          	p.insert	a5,a3,0,20
1c008148:	cec585b3          	p.extract	a1,a1,7,12
1c00814c:	cec5a7b3          	p.insert	a5,a1,7,12
1c008150:	00f56723          	p.sw	a5,a4(a0)
1c008154:	8082                	ret
1c008156:	002007b7          	lui	a5,0x200
1c00815a:	43b8                	lw	a4,64(a5)
1c00815c:	b7e9                	j	1c008126 <pos_irq_set_handler+0x16>

1c00815e <pos_time_poweroff>:
1c00815e:	1a10b7b7          	lui	a5,0x1a10b
1c008162:	0791                	addi	a5,a5,4
1c008164:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10aff0>
1c008168:	1c001737          	lui	a4,0x1c001
1c00816c:	84f72423          	sw	a5,-1976(a4) # 1c000848 <pos_time_timer_count>
1c008170:	4501                	li	a0,0
1c008172:	8082                	ret

1c008174 <pos_time_poweron>:
1c008174:	1c0017b7          	lui	a5,0x1c001
1c008178:	8487a703          	lw	a4,-1976(a5) # 1c000848 <pos_time_timer_count>
1c00817c:	1a10b7b7          	lui	a5,0x1a10b
1c008180:	0791                	addi	a5,a5,4
1c008182:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10aff0>
1c008186:	4501                	li	a0,0
1c008188:	8082                	ret

1c00818a <pos_time_timer_handler>:
1c00818a:	1c0016b7          	lui	a3,0x1c001
1c00818e:	84868793          	addi	a5,a3,-1976 # 1c000848 <pos_time_timer_count>
1c008192:	43dc                	lw	a5,4(a5)
1c008194:	1a10b737          	lui	a4,0x1a10b
1c008198:	0711                	addi	a4,a4,4
1c00819a:	00872703          	lw	a4,8(a4) # 1a10b008 <__l1_end+0xa10aff0>
1c00819e:	1c0005b7          	lui	a1,0x1c000
1c0081a2:	1c000637          	lui	a2,0x1c000
1c0081a6:	80000e37          	lui	t3,0x80000
1c0081aa:	0005a803          	lw	a6,0(a1) # 1c000000 <pos_sched_first>
1c0081ae:	00462503          	lw	a0,4(a2) # 1c000004 <pos_sched_last>
1c0081b2:	4881                	li	a7,0
1c0081b4:	4301                	li	t1,0
1c0081b6:	84868693          	addi	a3,a3,-1976
1c0081ba:	ffee4e13          	xori	t3,t3,-2
1c0081be:	efb9                	bnez	a5,1c00821c <pos_time_timer_handler+0x92>
1c0081c0:	00030463          	beqz	t1,1c0081c8 <pos_time_timer_handler+0x3e>
1c0081c4:	0105a023          	sw	a6,0(a1)
1c0081c8:	00088463          	beqz	a7,1c0081d0 <pos_time_timer_handler+0x46>
1c0081cc:	00a62223          	sw	a0,4(a2)
1c0081d0:	1a10b7b7          	lui	a5,0x1a10b
1c0081d4:	08100713          	li	a4,129
1c0081d8:	0791                	addi	a5,a5,4
1c0081da:	0006a223          	sw	zero,4(a3)
1c0081de:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe8>
1c0081e2:	f1402773          	csrr	a4,mhartid
1c0081e6:	6785                	lui	a5,0x1
1c0081e8:	ca571733          	p.extractu	a4,a4,5,5
1c0081ec:	46fd                	li	a3,31
1c0081ee:	80078793          	addi	a5,a5,-2048 # 800 <__cluster_text_size+0x6b0>
1c0081f2:	06d71463          	bne	a4,a3,1c00825a <pos_time_timer_handler+0xd0>
1c0081f6:	1a10a737          	lui	a4,0x1a10a
1c0081fa:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097fc>
1c0081fe:	8082                	ret
1c008200:	0007ae83          	lw	t4,0(a5)
1c008204:	0007a023          	sw	zero,0(a5)
1c008208:	00080763          	beqz	a6,1c008216 <pos_time_timer_handler+0x8c>
1c00820c:	c11c                	sw	a5,0(a0)
1c00820e:	853e                	mv	a0,a5
1c008210:	4885                	li	a7,1
1c008212:	87f6                	mv	a5,t4
1c008214:	b76d                	j	1c0081be <pos_time_timer_handler+0x34>
1c008216:	883e                	mv	a6,a5
1c008218:	4305                	li	t1,1
1c00821a:	bfd5                	j	1c00820e <pos_time_timer_handler+0x84>
1c00821c:	03c7ae83          	lw	t4,60(a5)
1c008220:	41d70eb3          	sub	t4,a4,t4
1c008224:	fdde7ee3          	bleu	t4,t3,1c008200 <pos_time_timer_handler+0x76>
1c008228:	00030463          	beqz	t1,1c008230 <pos_time_timer_handler+0xa6>
1c00822c:	0105a023          	sw	a6,0(a1)
1c008230:	00088463          	beqz	a7,1c008238 <pos_time_timer_handler+0xae>
1c008234:	00a62223          	sw	a0,4(a2)
1c008238:	c2dc                	sw	a5,4(a3)
1c00823a:	1a10b6b7          	lui	a3,0x1a10b
1c00823e:	0691                	addi	a3,a3,4
1c008240:	0086a603          	lw	a2,8(a3) # 1a10b008 <__l1_end+0xa10aff0>
1c008244:	5fdc                	lw	a5,60(a5)
1c008246:	40e78733          	sub	a4,a5,a4
1c00824a:	9732                	add	a4,a4,a2
1c00824c:	00e6a823          	sw	a4,16(a3)
1c008250:	08500793          	li	a5,133
1c008254:	00f6a023          	sw	a5,0(a3)
1c008258:	8082                	ret
1c00825a:	00204737          	lui	a4,0x204
1c00825e:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f4044>
1c008262:	8082                	ret

1c008264 <pos_time_init>:
1c008264:	1141                	addi	sp,sp,-16
1c008266:	c422                	sw	s0,8(sp)
1c008268:	1a10b7b7          	lui	a5,0x1a10b
1c00826c:	1c001437          	lui	s0,0x1c001
1c008270:	c606                	sw	ra,12(sp)
1c008272:	84840413          	addi	s0,s0,-1976 # 1c000848 <pos_time_timer_count>
1c008276:	08300713          	li	a4,131
1c00827a:	0791                	addi	a5,a5,4
1c00827c:	00042223          	sw	zero,4(s0)
1c008280:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afe8>
1c008284:	1c0085b7          	lui	a1,0x1c008
1c008288:	3ba58593          	addi	a1,a1,954 # 1c0083ba <pos_time_timer_handler_asm>
1c00828c:	452d                	li	a0,11
1c00828e:	3549                	jal	1c008110 <pos_irq_set_handler>
1c008290:	6785                	lui	a5,0x1
1c008292:	1a10a737          	lui	a4,0x1a10a
1c008296:	80078793          	addi	a5,a5,-2048 # 800 <__cluster_text_size+0x6b0>
1c00829a:	1c008637          	lui	a2,0x1c008
1c00829e:	00840513          	addi	a0,s0,8
1c0082a2:	4681                	li	a3,0
1c0082a4:	15e60613          	addi	a2,a2,350 # 1c00815e <pos_time_poweroff>
1c0082a8:	4589                	li	a1,2
1c0082aa:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097ec>
1c0082ae:	35a1                	jal	1c0080f6 <pos_cbsys_add>
1c0082b0:	01840513          	addi	a0,s0,24
1c0082b4:	4422                	lw	s0,8(sp)
1c0082b6:	40b2                	lw	ra,12(sp)
1c0082b8:	1c008637          	lui	a2,0x1c008
1c0082bc:	4681                	li	a3,0
1c0082be:	17460613          	addi	a2,a2,372 # 1c008174 <pos_time_poweron>
1c0082c2:	458d                	li	a1,3
1c0082c4:	0141                	addi	sp,sp,16
1c0082c6:	bd05                	j	1c0080f6 <pos_cbsys_add>

1c0082c8 <pos_init_entry>:
1c0082c8:	7a101073          	csrw	pcmr,zero
1c0082cc:	f1402573          	csrr	a0,mhartid
1c0082d0:	01f57593          	andi	a1,a0,31
1c0082d4:	8115                	srli	a0,a0,0x5
1c0082d6:	467d                	li	a2,31
1c0082d8:	00c50463          	beq	a0,a2,1c0082e0 <pos_init_entry+0x18>
1c0082dc:	5250706f          	j	1c010000 <__cluster_text_start>
1c0082e0:	0002a023          	sw	zero,0(t0)
1c0082e4:	0291                	addi	t0,t0,4
1c0082e6:	fe62ede3          	bltu	t0,t1,1c0082e0 <pos_init_entry+0x18>
1c0082ea:	ffff8117          	auipc	sp,0xffff8
1c0082ee:	54610113          	addi	sp,sp,1350 # 1c000830 <stack>
1c0082f2:	00000397          	auipc	t2,0x0
1c0082f6:	daa38393          	addi	t2,t2,-598 # 1c00809c <main>
1c0082fa:	000380e7          	jalr	t2
1c0082fe:	842a                	mv	s0,a0
1c008300:	42bd                	li	t0,15
1c008302:	10010337          	lui	t1,0x10010
1c008306:	fe532c23          	sw	t0,-8(t1) # 1000fff8 <__l1_end+0xffe0>
1c00830a:	00000397          	auipc	t2,0x0
1c00830e:	d9238393          	addi	t2,t2,-622 # 1c00809c <main>
1c008312:	000380e7          	jalr	t2
1c008316:	842a                	mv	s0,a0
1c008318:	8522                	mv	a0,s0
1c00831a:	00000297          	auipc	t0,0x0
1c00831e:	d9028293          	addi	t0,t0,-624 # 1c0080aa <exit>
1c008322:	000280e7          	jalr	t0

1c008326 <pos_irq_call_external_c_function>:
1c008326:	7119                	addi	sp,sp,-128
1c008328:	c006                	sw	ra,0(sp)
1c00832a:	c20e                	sw	gp,4(sp)
1c00832c:	c412                	sw	tp,8(sp)
1c00832e:	c616                	sw	t0,12(sp)
1c008330:	c81a                	sw	t1,16(sp)
1c008332:	ca1e                	sw	t2,20(sp)
1c008334:	d236                	sw	a3,36(sp)
1c008336:	d43a                	sw	a4,40(sp)
1c008338:	d63e                	sw	a5,44(sp)
1c00833a:	d842                	sw	a6,48(sp)
1c00833c:	da46                	sw	a7,52(sp)
1c00833e:	dc72                	sw	t3,56(sp)
1c008340:	de76                	sw	t4,60(sp)
1c008342:	c0fa                	sw	t5,64(sp)
1c008344:	c6fe                	sw	t6,76(sp)
1c008346:	000600e7          	jalr	a2
1c00834a:	4082                	lw	ra,0(sp)
1c00834c:	4192                	lw	gp,4(sp)
1c00834e:	4222                	lw	tp,8(sp)
1c008350:	42b2                	lw	t0,12(sp)
1c008352:	4342                	lw	t1,16(sp)
1c008354:	43d2                	lw	t2,20(sp)
1c008356:	5692                	lw	a3,36(sp)
1c008358:	5722                	lw	a4,40(sp)
1c00835a:	57b2                	lw	a5,44(sp)
1c00835c:	5842                	lw	a6,48(sp)
1c00835e:	58d2                	lw	a7,52(sp)
1c008360:	5e62                	lw	t3,56(sp)
1c008362:	5ef2                	lw	t4,60(sp)
1c008364:	4f06                	lw	t5,64(sp)
1c008366:	4fb6                	lw	t6,76(sp)
1c008368:	6109                	addi	sp,sp,128
1c00836a:	8482                	jr	s1

1c00836c <pos_irq_call_external_c_function_full>:
1c00836c:	7119                	addi	sp,sp,-128
1c00836e:	c006                	sw	ra,0(sp)
1c008370:	c20e                	sw	gp,4(sp)
1c008372:	c412                	sw	tp,8(sp)
1c008374:	c616                	sw	t0,12(sp)
1c008376:	c81a                	sw	t1,16(sp)
1c008378:	ca1e                	sw	t2,20(sp)
1c00837a:	cc2a                	sw	a0,24(sp)
1c00837c:	ce2e                	sw	a1,28(sp)
1c00837e:	d236                	sw	a3,36(sp)
1c008380:	d43a                	sw	a4,40(sp)
1c008382:	d63e                	sw	a5,44(sp)
1c008384:	d842                	sw	a6,48(sp)
1c008386:	da46                	sw	a7,52(sp)
1c008388:	dc72                	sw	t3,56(sp)
1c00838a:	de76                	sw	t4,60(sp)
1c00838c:	c0fa                	sw	t5,64(sp)
1c00838e:	c6fe                	sw	t6,76(sp)
1c008390:	000600e7          	jalr	a2
1c008394:	4082                	lw	ra,0(sp)
1c008396:	4192                	lw	gp,4(sp)
1c008398:	4222                	lw	tp,8(sp)
1c00839a:	42b2                	lw	t0,12(sp)
1c00839c:	4342                	lw	t1,16(sp)
1c00839e:	43d2                	lw	t2,20(sp)
1c0083a0:	4562                	lw	a0,24(sp)
1c0083a2:	45f2                	lw	a1,28(sp)
1c0083a4:	5692                	lw	a3,36(sp)
1c0083a6:	5722                	lw	a4,40(sp)
1c0083a8:	57b2                	lw	a5,44(sp)
1c0083aa:	5842                	lw	a6,48(sp)
1c0083ac:	58d2                	lw	a7,52(sp)
1c0083ae:	5e62                	lw	t3,56(sp)
1c0083b0:	5ef2                	lw	t4,60(sp)
1c0083b2:	4f06                	lw	t5,64(sp)
1c0083b4:	4fb6                	lw	t6,76(sp)
1c0083b6:	6109                	addi	sp,sp,128
1c0083b8:	8482                	jr	s1

1c0083ba <pos_time_timer_handler_asm>:
1c0083ba:	1161                	addi	sp,sp,-8
1c0083bc:	c032                	sw	a2,0(sp)
1c0083be:	c226                	sw	s1,4(sp)
1c0083c0:	00000617          	auipc	a2,0x0
1c0083c4:	dca60613          	addi	a2,a2,-566 # 1c00818a <pos_time_timer_handler>
1c0083c8:	00000497          	auipc	s1,0x0
1c0083cc:	00c48493          	addi	s1,s1,12 # 1c0083d4 <pos_time_timer_handler_asm_ret>
1c0083d0:	f9dff06f          	j	1c00836c <pos_irq_call_external_c_function_full>

1c0083d4 <pos_time_timer_handler_asm_ret>:
1c0083d4:	4492                	lw	s1,4(sp)
1c0083d6:	4602                	lw	a2,0(sp)
1c0083d8:	0121                	addi	sp,sp,8
1c0083da:	30200073          	mret

1c0083de <_endtext>:
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
1c010042:	832b8b93          	addi	s7,s7,-1998 # 1c000870 <_edata>
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
