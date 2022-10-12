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
1c008080:	00002517          	auipc	a0,0x2
1c008084:	c8850513          	addi	a0,a0,-888 # 1c009d08 <pos_init_entry>
1c008088:	00050067          	jr	a0

1c00808c <pos_illegal_instr>:
1c00808c:	0000006f          	j	1c00808c <pos_illegal_instr>

1c008090 <pos_no_irq_handler>:
1c008090:	30200073          	mret

1c008094 <pos_semihosting_call>:
1c008094:	00100073          	ebreak
1c008098:	00008067          	ret

Disassembly of section .text:

1c00809c <__udivdi3>:
1c00809c:	87b2                	mv	a5,a2
1c00809e:	8736                	mv	a4,a3
1c0080a0:	88aa                	mv	a7,a0
1c0080a2:	882e                	mv	a6,a1
1c0080a4:	1e069d63          	bnez	a3,1c00829e <__udivdi3+0x202>
1c0080a8:	1c001337          	lui	t1,0x1c001
1c0080ac:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0080b0:	0ac5fd63          	bleu	a2,a1,1c00816a <__udivdi3+0xce>
1c0080b4:	6741                	lui	a4,0x10
1c0080b6:	0ae67363          	bleu	a4,a2,1c00815c <__udivdi3+0xc0>
1c0080ba:	0ff00693          	li	a3,255
1c0080be:	00c6b6b3          	sltu	a3,a3,a2
1c0080c2:	068e                	slli	a3,a3,0x3
1c0080c4:	00d65733          	srl	a4,a2,a3
1c0080c8:	933a                	add	t1,t1,a4
1c0080ca:	00034703          	lbu	a4,0(t1)
1c0080ce:	02000313          	li	t1,32
1c0080d2:	96ba                	add	a3,a3,a4
1c0080d4:	40d30333          	sub	t1,t1,a3
1c0080d8:	00030c63          	beqz	t1,1c0080f0 <__udivdi3+0x54>
1c0080dc:	00659733          	sll	a4,a1,t1
1c0080e0:	00d556b3          	srl	a3,a0,a3
1c0080e4:	006617b3          	sll	a5,a2,t1
1c0080e8:	00e6e833          	or	a6,a3,a4
1c0080ec:	006518b3          	sll	a7,a0,t1
1c0080f0:	0107d513          	srli	a0,a5,0x10
1c0080f4:	02a87633          	remu	a2,a6,a0
1c0080f8:	02a85733          	divu	a4,a6,a0
1c0080fc:	0642                	slli	a2,a2,0x10
1c0080fe:	1007d5b3          	p.exthz	a1,a5
1c008102:	0108d693          	srli	a3,a7,0x10
1c008106:	8ed1                	or	a3,a3,a2
1c008108:	02e58833          	mul	a6,a1,a4
1c00810c:	863a                	mv	a2,a4
1c00810e:	0106fc63          	bleu	a6,a3,1c008126 <__udivdi3+0x8a>
1c008112:	96be                	add	a3,a3,a5
1c008114:	fff70613          	addi	a2,a4,-1 # ffff <__l1_heap_size+0x23>
1c008118:	00f6e763          	bltu	a3,a5,1c008126 <__udivdi3+0x8a>
1c00811c:	0106f563          	bleu	a6,a3,1c008126 <__udivdi3+0x8a>
1c008120:	ffe70613          	addi	a2,a4,-2
1c008124:	96be                	add	a3,a3,a5
1c008126:	410686b3          	sub	a3,a3,a6
1c00812a:	02a6f833          	remu	a6,a3,a0
1c00812e:	02a6d6b3          	divu	a3,a3,a0
1c008132:	df0828b3          	p.insert	a7,a6,15,16
1c008136:	02d58733          	mul	a4,a1,a3
1c00813a:	8536                	mv	a0,a3
1c00813c:	00e8fb63          	bleu	a4,a7,1c008152 <__udivdi3+0xb6>
1c008140:	98be                	add	a7,a7,a5
1c008142:	fff68513          	addi	a0,a3,-1
1c008146:	00f8e663          	bltu	a7,a5,1c008152 <__udivdi3+0xb6>
1c00814a:	00e8f463          	bleu	a4,a7,1c008152 <__udivdi3+0xb6>
1c00814e:	ffe68513          	addi	a0,a3,-2
1c008152:	01061793          	slli	a5,a2,0x10
1c008156:	8fc9                	or	a5,a5,a0
1c008158:	4801                	li	a6,0
1c00815a:	a06d                	j	1c008204 <__udivdi3+0x168>
1c00815c:	01000737          	lui	a4,0x1000
1c008160:	46c1                	li	a3,16
1c008162:	f6e661e3          	bltu	a2,a4,1c0080c4 <__udivdi3+0x28>
1c008166:	46e1                	li	a3,24
1c008168:	bfb1                	j	1c0080c4 <__udivdi3+0x28>
1c00816a:	e601                	bnez	a2,1c008172 <__udivdi3+0xd6>
1c00816c:	4685                	li	a3,1
1c00816e:	02c6d7b3          	divu	a5,a3,a2
1c008172:	66c1                	lui	a3,0x10
1c008174:	08d7fb63          	bleu	a3,a5,1c00820a <__udivdi3+0x16e>
1c008178:	0ff00693          	li	a3,255
1c00817c:	00f6f363          	bleu	a5,a3,1c008182 <__udivdi3+0xe6>
1c008180:	4721                	li	a4,8
1c008182:	00e7d6b3          	srl	a3,a5,a4
1c008186:	9336                	add	t1,t1,a3
1c008188:	00034683          	lbu	a3,0(t1)
1c00818c:	02000613          	li	a2,32
1c008190:	96ba                	add	a3,a3,a4
1c008192:	8e15                	sub	a2,a2,a3
1c008194:	e251                	bnez	a2,1c008218 <__udivdi3+0x17c>
1c008196:	40f58733          	sub	a4,a1,a5
1c00819a:	4805                	li	a6,1
1c00819c:	0107d513          	srli	a0,a5,0x10
1c0081a0:	02a77633          	remu	a2,a4,a0
1c0081a4:	02a75733          	divu	a4,a4,a0
1c0081a8:	0642                	slli	a2,a2,0x10
1c0081aa:	1007d5b3          	p.exthz	a1,a5
1c0081ae:	0108d693          	srli	a3,a7,0x10
1c0081b2:	8ed1                	or	a3,a3,a2
1c0081b4:	02e58333          	mul	t1,a1,a4
1c0081b8:	863a                	mv	a2,a4
1c0081ba:	0066fc63          	bleu	t1,a3,1c0081d2 <__udivdi3+0x136>
1c0081be:	96be                	add	a3,a3,a5
1c0081c0:	fff70613          	addi	a2,a4,-1 # ffffff <__l1_heap_size+0xff0023>
1c0081c4:	00f6e763          	bltu	a3,a5,1c0081d2 <__udivdi3+0x136>
1c0081c8:	0066f563          	bleu	t1,a3,1c0081d2 <__udivdi3+0x136>
1c0081cc:	ffe70613          	addi	a2,a4,-2
1c0081d0:	96be                	add	a3,a3,a5
1c0081d2:	406686b3          	sub	a3,a3,t1
1c0081d6:	02a6f333          	remu	t1,a3,a0
1c0081da:	02a6d6b3          	divu	a3,a3,a0
1c0081de:	df0328b3          	p.insert	a7,t1,15,16
1c0081e2:	02d58733          	mul	a4,a1,a3
1c0081e6:	8536                	mv	a0,a3
1c0081e8:	00e8fb63          	bleu	a4,a7,1c0081fe <__udivdi3+0x162>
1c0081ec:	98be                	add	a7,a7,a5
1c0081ee:	fff68513          	addi	a0,a3,-1 # ffff <__l1_heap_size+0x23>
1c0081f2:	00f8e663          	bltu	a7,a5,1c0081fe <__udivdi3+0x162>
1c0081f6:	00e8f463          	bleu	a4,a7,1c0081fe <__udivdi3+0x162>
1c0081fa:	ffe68513          	addi	a0,a3,-2
1c0081fe:	01061793          	slli	a5,a2,0x10
1c008202:	8fc9                	or	a5,a5,a0
1c008204:	853e                	mv	a0,a5
1c008206:	85c2                	mv	a1,a6
1c008208:	8082                	ret
1c00820a:	010006b7          	lui	a3,0x1000
1c00820e:	4741                	li	a4,16
1c008210:	f6d7e9e3          	bltu	a5,a3,1c008182 <__udivdi3+0xe6>
1c008214:	4761                	li	a4,24
1c008216:	b7b5                	j	1c008182 <__udivdi3+0xe6>
1c008218:	00c797b3          	sll	a5,a5,a2
1c00821c:	00d5d333          	srl	t1,a1,a3
1c008220:	0107de13          	srli	t3,a5,0x10
1c008224:	00c59733          	sll	a4,a1,a2
1c008228:	00c518b3          	sll	a7,a0,a2
1c00822c:	03c37633          	remu	a2,t1,t3
1c008230:	00d555b3          	srl	a1,a0,a3
1c008234:	03c35533          	divu	a0,t1,t3
1c008238:	8dd9                	or	a1,a1,a4
1c00823a:	0642                	slli	a2,a2,0x10
1c00823c:	1007d733          	p.exthz	a4,a5
1c008240:	0105d693          	srli	a3,a1,0x10
1c008244:	02a70333          	mul	t1,a4,a0
1c008248:	8ed1                	or	a3,a3,a2
1c00824a:	882a                	mv	a6,a0
1c00824c:	0066fc63          	bleu	t1,a3,1c008264 <__udivdi3+0x1c8>
1c008250:	96be                	add	a3,a3,a5
1c008252:	fff50813          	addi	a6,a0,-1
1c008256:	00f6e763          	bltu	a3,a5,1c008264 <__udivdi3+0x1c8>
1c00825a:	0066f563          	bleu	t1,a3,1c008264 <__udivdi3+0x1c8>
1c00825e:	ffe50813          	addi	a6,a0,-2
1c008262:	96be                	add	a3,a3,a5
1c008264:	406686b3          	sub	a3,a3,t1
1c008268:	03c6f633          	remu	a2,a3,t3
1c00826c:	03c6d6b3          	divu	a3,a3,t3
1c008270:	df0625b3          	p.insert	a1,a2,15,16
1c008274:	02d70733          	mul	a4,a4,a3
1c008278:	8636                	mv	a2,a3
1c00827a:	00e5fc63          	bleu	a4,a1,1c008292 <__udivdi3+0x1f6>
1c00827e:	95be                	add	a1,a1,a5
1c008280:	fff68613          	addi	a2,a3,-1 # ffffff <__l1_heap_size+0xff0023>
1c008284:	00f5e763          	bltu	a1,a5,1c008292 <__udivdi3+0x1f6>
1c008288:	00e5f563          	bleu	a4,a1,1c008292 <__udivdi3+0x1f6>
1c00828c:	ffe68613          	addi	a2,a3,-2
1c008290:	95be                	add	a1,a1,a5
1c008292:	0842                	slli	a6,a6,0x10
1c008294:	40e58733          	sub	a4,a1,a4
1c008298:	00c86833          	or	a6,a6,a2
1c00829c:	b701                	j	1c00819c <__udivdi3+0x100>
1c00829e:	12d5ea63          	bltu	a1,a3,1c0083d2 <__udivdi3+0x336>
1c0082a2:	67c1                	lui	a5,0x10
1c0082a4:	02f6fd63          	bleu	a5,a3,1c0082de <__udivdi3+0x242>
1c0082a8:	0ff00793          	li	a5,255
1c0082ac:	00d7b8b3          	sltu	a7,a5,a3
1c0082b0:	088e                	slli	a7,a7,0x3
1c0082b2:	1c001737          	lui	a4,0x1c001
1c0082b6:	0116d7b3          	srl	a5,a3,a7
1c0082ba:	86870713          	addi	a4,a4,-1944 # 1c000868 <__DTOR_END__>
1c0082be:	97ba                	add	a5,a5,a4
1c0082c0:	0007c783          	lbu	a5,0(a5) # 10000 <__l1_heap_size+0x24>
1c0082c4:	02000813          	li	a6,32
1c0082c8:	97c6                	add	a5,a5,a7
1c0082ca:	40f80833          	sub	a6,a6,a5
1c0082ce:	00081f63          	bnez	a6,1c0082ec <__udivdi3+0x250>
1c0082d2:	4785                	li	a5,1
1c0082d4:	f2b6e8e3          	bltu	a3,a1,1c008204 <__udivdi3+0x168>
1c0082d8:	04a637b3          	p.sletu	a5,a2,a0
1c0082dc:	b725                	j	1c008204 <__udivdi3+0x168>
1c0082de:	010007b7          	lui	a5,0x1000
1c0082e2:	48c1                	li	a7,16
1c0082e4:	fcf6e7e3          	bltu	a3,a5,1c0082b2 <__udivdi3+0x216>
1c0082e8:	48e1                	li	a7,24
1c0082ea:	b7e1                	j	1c0082b2 <__udivdi3+0x216>
1c0082ec:	00f658b3          	srl	a7,a2,a5
1c0082f0:	010696b3          	sll	a3,a3,a6
1c0082f4:	00d8e6b3          	or	a3,a7,a3
1c0082f8:	00f5d333          	srl	t1,a1,a5
1c0082fc:	0106de13          	srli	t3,a3,0x10
1c008300:	00f55733          	srl	a4,a0,a5
1c008304:	03c377b3          	remu	a5,t1,t3
1c008308:	010595b3          	sll	a1,a1,a6
1c00830c:	03c35333          	divu	t1,t1,t3
1c008310:	8f4d                	or	a4,a4,a1
1c008312:	07c2                	slli	a5,a5,0x10
1c008314:	1006d8b3          	p.exthz	a7,a3
1c008318:	01075593          	srli	a1,a4,0x10
1c00831c:	8ddd                	or	a1,a1,a5
1c00831e:	02688eb3          	mul	t4,a7,t1
1c008322:	01061633          	sll	a2,a2,a6
1c008326:	879a                	mv	a5,t1
1c008328:	01d5fc63          	bleu	t4,a1,1c008340 <__udivdi3+0x2a4>
1c00832c:	95b6                	add	a1,a1,a3
1c00832e:	fff30793          	addi	a5,t1,-1
1c008332:	00d5e763          	bltu	a1,a3,1c008340 <__udivdi3+0x2a4>
1c008336:	01d5f563          	bleu	t4,a1,1c008340 <__udivdi3+0x2a4>
1c00833a:	ffe30793          	addi	a5,t1,-2
1c00833e:	95b6                	add	a1,a1,a3
1c008340:	41d585b3          	sub	a1,a1,t4
1c008344:	03c5f333          	remu	t1,a1,t3
1c008348:	03c5d5b3          	divu	a1,a1,t3
1c00834c:	df032733          	p.insert	a4,t1,15,16
1c008350:	02b888b3          	mul	a7,a7,a1
1c008354:	832e                	mv	t1,a1
1c008356:	01177c63          	bleu	a7,a4,1c00836e <__udivdi3+0x2d2>
1c00835a:	9736                	add	a4,a4,a3
1c00835c:	fff58313          	addi	t1,a1,-1
1c008360:	00d76763          	bltu	a4,a3,1c00836e <__udivdi3+0x2d2>
1c008364:	01177563          	bleu	a7,a4,1c00836e <__udivdi3+0x2d2>
1c008368:	ffe58313          	addi	t1,a1,-2
1c00836c:	9736                	add	a4,a4,a3
1c00836e:	07c2                	slli	a5,a5,0x10
1c008370:	6e41                	lui	t3,0x10
1c008372:	0067e7b3          	or	a5,a5,t1
1c008376:	fffe0593          	addi	a1,t3,-1 # ffff <__l1_heap_size+0x23>
1c00837a:	00b7f6b3          	and	a3,a5,a1
1c00837e:	41170733          	sub	a4,a4,a7
1c008382:	8df1                	and	a1,a1,a2
1c008384:	0107d893          	srli	a7,a5,0x10
1c008388:	02b68333          	mul	t1,a3,a1
1c00838c:	02b885b3          	mul	a1,a7,a1
1c008390:	8241                	srli	a2,a2,0x10
1c008392:	8eae                	mv	t4,a1
1c008394:	42c68eb3          	p.mac	t4,a3,a2
1c008398:	01035693          	srli	a3,t1,0x10
1c00839c:	96f6                	add	a3,a3,t4
1c00839e:	02c888b3          	mul	a7,a7,a2
1c0083a2:	00b6f363          	bleu	a1,a3,1c0083a8 <__udivdi3+0x30c>
1c0083a6:	98f2                	add	a7,a7,t3
1c0083a8:	0106d613          	srli	a2,a3,0x10
1c0083ac:	98b2                	add	a7,a7,a2
1c0083ae:	03176063          	bltu	a4,a7,1c0083ce <__udivdi3+0x332>
1c0083b2:	db1713e3          	bne	a4,a7,1c008158 <__udivdi3+0xbc>
1c0083b6:	6741                	lui	a4,0x10
1c0083b8:	177d                	addi	a4,a4,-1
1c0083ba:	8ef9                	and	a3,a3,a4
1c0083bc:	06c2                	slli	a3,a3,0x10
1c0083be:	00e37333          	and	t1,t1,a4
1c0083c2:	01051533          	sll	a0,a0,a6
1c0083c6:	969a                	add	a3,a3,t1
1c0083c8:	4801                	li	a6,0
1c0083ca:	e2d57de3          	bleu	a3,a0,1c008204 <__udivdi3+0x168>
1c0083ce:	17fd                	addi	a5,a5,-1
1c0083d0:	b361                	j	1c008158 <__udivdi3+0xbc>
1c0083d2:	4801                	li	a6,0
1c0083d4:	4781                	li	a5,0
1c0083d6:	b53d                	j	1c008204 <__udivdi3+0x168>

1c0083d8 <__umoddi3>:
1c0083d8:	88b2                	mv	a7,a2
1c0083da:	8736                	mv	a4,a3
1c0083dc:	87aa                	mv	a5,a0
1c0083de:	882e                	mv	a6,a1
1c0083e0:	1a069963          	bnez	a3,1c008592 <__umoddi3+0x1ba>
1c0083e4:	1c0016b7          	lui	a3,0x1c001
1c0083e8:	86868693          	addi	a3,a3,-1944 # 1c000868 <__DTOR_END__>
1c0083ec:	0ac5f463          	bleu	a2,a1,1c008494 <__umoddi3+0xbc>
1c0083f0:	6341                	lui	t1,0x10
1c0083f2:	08667a63          	bleu	t1,a2,1c008486 <__umoddi3+0xae>
1c0083f6:	0ff00313          	li	t1,255
1c0083fa:	00c37363          	bleu	a2,t1,1c008400 <__umoddi3+0x28>
1c0083fe:	4721                	li	a4,8
1c008400:	00e65333          	srl	t1,a2,a4
1c008404:	969a                	add	a3,a3,t1
1c008406:	0006c683          	lbu	a3,0(a3)
1c00840a:	02000313          	li	t1,32
1c00840e:	9736                	add	a4,a4,a3
1c008410:	40e30333          	sub	t1,t1,a4
1c008414:	00030c63          	beqz	t1,1c00842c <__umoddi3+0x54>
1c008418:	006595b3          	sll	a1,a1,t1
1c00841c:	00e55733          	srl	a4,a0,a4
1c008420:	006618b3          	sll	a7,a2,t1
1c008424:	00b76833          	or	a6,a4,a1
1c008428:	006517b3          	sll	a5,a0,t1
1c00842c:	0108d613          	srli	a2,a7,0x10
1c008430:	02c87733          	remu	a4,a6,a2
1c008434:	02c85833          	divu	a6,a6,a2
1c008438:	1008d533          	p.exthz	a0,a7
1c00843c:	0742                	slli	a4,a4,0x10
1c00843e:	0107d693          	srli	a3,a5,0x10
1c008442:	03050833          	mul	a6,a0,a6
1c008446:	8ed9                	or	a3,a3,a4
1c008448:	0106f863          	bleu	a6,a3,1c008458 <__umoddi3+0x80>
1c00844c:	96c6                	add	a3,a3,a7
1c00844e:	0116e563          	bltu	a3,a7,1c008458 <__umoddi3+0x80>
1c008452:	0106f363          	bleu	a6,a3,1c008458 <__umoddi3+0x80>
1c008456:	96c6                	add	a3,a3,a7
1c008458:	410686b3          	sub	a3,a3,a6
1c00845c:	02c6f733          	remu	a4,a3,a2
1c008460:	02c6d6b3          	divu	a3,a3,a2
1c008464:	df0727b3          	p.insert	a5,a4,15,16
1c008468:	02d506b3          	mul	a3,a0,a3
1c00846c:	00d7f863          	bleu	a3,a5,1c00847c <__umoddi3+0xa4>
1c008470:	97c6                	add	a5,a5,a7
1c008472:	0117e563          	bltu	a5,a7,1c00847c <__umoddi3+0xa4>
1c008476:	00d7f363          	bleu	a3,a5,1c00847c <__umoddi3+0xa4>
1c00847a:	97c6                	add	a5,a5,a7
1c00847c:	8f95                	sub	a5,a5,a3
1c00847e:	0067d533          	srl	a0,a5,t1
1c008482:	4581                	li	a1,0
1c008484:	8082                	ret
1c008486:	01000337          	lui	t1,0x1000
1c00848a:	4741                	li	a4,16
1c00848c:	f6666ae3          	bltu	a2,t1,1c008400 <__umoddi3+0x28>
1c008490:	4761                	li	a4,24
1c008492:	b7bd                	j	1c008400 <__umoddi3+0x28>
1c008494:	e601                	bnez	a2,1c00849c <__umoddi3+0xc4>
1c008496:	4605                	li	a2,1
1c008498:	031658b3          	divu	a7,a2,a7
1c00849c:	6641                	lui	a2,0x10
1c00849e:	06c8ff63          	bleu	a2,a7,1c00851c <__umoddi3+0x144>
1c0084a2:	0ff00613          	li	a2,255
1c0084a6:	01167363          	bleu	a7,a2,1c0084ac <__umoddi3+0xd4>
1c0084aa:	4721                	li	a4,8
1c0084ac:	00e8d633          	srl	a2,a7,a4
1c0084b0:	96b2                	add	a3,a3,a2
1c0084b2:	0006c603          	lbu	a2,0(a3)
1c0084b6:	02000313          	li	t1,32
1c0084ba:	963a                	add	a2,a2,a4
1c0084bc:	40c30333          	sub	t1,t1,a2
1c0084c0:	06031563          	bnez	t1,1c00852a <__umoddi3+0x152>
1c0084c4:	411585b3          	sub	a1,a1,a7
1c0084c8:	0108d713          	srli	a4,a7,0x10
1c0084cc:	02e5f6b3          	remu	a3,a1,a4
1c0084d0:	02e5d5b3          	divu	a1,a1,a4
1c0084d4:	1008d533          	p.exthz	a0,a7
1c0084d8:	06c2                	slli	a3,a3,0x10
1c0084da:	0107d613          	srli	a2,a5,0x10
1c0084de:	02b505b3          	mul	a1,a0,a1
1c0084e2:	8ed1                	or	a3,a3,a2
1c0084e4:	00b6f863          	bleu	a1,a3,1c0084f4 <__umoddi3+0x11c>
1c0084e8:	96c6                	add	a3,a3,a7
1c0084ea:	0116e563          	bltu	a3,a7,1c0084f4 <__umoddi3+0x11c>
1c0084ee:	00b6f363          	bleu	a1,a3,1c0084f4 <__umoddi3+0x11c>
1c0084f2:	96c6                	add	a3,a3,a7
1c0084f4:	40b685b3          	sub	a1,a3,a1
1c0084f8:	02e5f6b3          	remu	a3,a1,a4
1c0084fc:	02e5d5b3          	divu	a1,a1,a4
1c008500:	df06a7b3          	p.insert	a5,a3,15,16
1c008504:	02b505b3          	mul	a1,a0,a1
1c008508:	00b7f863          	bleu	a1,a5,1c008518 <__umoddi3+0x140>
1c00850c:	97c6                	add	a5,a5,a7
1c00850e:	0117e563          	bltu	a5,a7,1c008518 <__umoddi3+0x140>
1c008512:	00b7f363          	bleu	a1,a5,1c008518 <__umoddi3+0x140>
1c008516:	97c6                	add	a5,a5,a7
1c008518:	8f8d                	sub	a5,a5,a1
1c00851a:	b795                	j	1c00847e <__umoddi3+0xa6>
1c00851c:	01000637          	lui	a2,0x1000
1c008520:	4741                	li	a4,16
1c008522:	f8c8e5e3          	bltu	a7,a2,1c0084ac <__umoddi3+0xd4>
1c008526:	4761                	li	a4,24
1c008528:	b751                	j	1c0084ac <__umoddi3+0xd4>
1c00852a:	006898b3          	sll	a7,a7,t1
1c00852e:	00c5d733          	srl	a4,a1,a2
1c008532:	006517b3          	sll	a5,a0,t1
1c008536:	00c55633          	srl	a2,a0,a2
1c00853a:	006595b3          	sll	a1,a1,t1
1c00853e:	0108d513          	srli	a0,a7,0x10
1c008542:	8dd1                	or	a1,a1,a2
1c008544:	02a77633          	remu	a2,a4,a0
1c008548:	02a75733          	divu	a4,a4,a0
1c00854c:	1008d833          	p.exthz	a6,a7
1c008550:	0642                	slli	a2,a2,0x10
1c008552:	0105d693          	srli	a3,a1,0x10
1c008556:	02e80733          	mul	a4,a6,a4
1c00855a:	8ed1                	or	a3,a3,a2
1c00855c:	00e6f863          	bleu	a4,a3,1c00856c <__umoddi3+0x194>
1c008560:	96c6                	add	a3,a3,a7
1c008562:	0116e563          	bltu	a3,a7,1c00856c <__umoddi3+0x194>
1c008566:	00e6f363          	bleu	a4,a3,1c00856c <__umoddi3+0x194>
1c00856a:	96c6                	add	a3,a3,a7
1c00856c:	8e99                	sub	a3,a3,a4
1c00856e:	02a6f733          	remu	a4,a3,a0
1c008572:	02a6d6b3          	divu	a3,a3,a0
1c008576:	df0725b3          	p.insert	a1,a4,15,16
1c00857a:	02d806b3          	mul	a3,a6,a3
1c00857e:	00d5f863          	bleu	a3,a1,1c00858e <__umoddi3+0x1b6>
1c008582:	95c6                	add	a1,a1,a7
1c008584:	0115e563          	bltu	a1,a7,1c00858e <__umoddi3+0x1b6>
1c008588:	00d5f363          	bleu	a3,a1,1c00858e <__umoddi3+0x1b6>
1c00858c:	95c6                	add	a1,a1,a7
1c00858e:	8d95                	sub	a1,a1,a3
1c008590:	bf25                	j	1c0084c8 <__umoddi3+0xf0>
1c008592:	eed5e9e3          	bltu	a1,a3,1c008484 <__umoddi3+0xac>
1c008596:	6741                	lui	a4,0x10
1c008598:	04e6f563          	bleu	a4,a3,1c0085e2 <__umoddi3+0x20a>
1c00859c:	0ff00e93          	li	t4,255
1c0085a0:	00deb733          	sltu	a4,t4,a3
1c0085a4:	070e                	slli	a4,a4,0x3
1c0085a6:	1c001337          	lui	t1,0x1c001
1c0085aa:	00e6d8b3          	srl	a7,a3,a4
1c0085ae:	86830313          	addi	t1,t1,-1944 # 1c000868 <__DTOR_END__>
1c0085b2:	989a                	add	a7,a7,t1
1c0085b4:	0008ce83          	lbu	t4,0(a7)
1c0085b8:	02000e13          	li	t3,32
1c0085bc:	9eba                	add	t4,t4,a4
1c0085be:	41de0e33          	sub	t3,t3,t4
1c0085c2:	020e1763          	bnez	t3,1c0085f0 <__umoddi3+0x218>
1c0085c6:	00b6e463          	bltu	a3,a1,1c0085ce <__umoddi3+0x1f6>
1c0085ca:	00c56963          	bltu	a0,a2,1c0085dc <__umoddi3+0x204>
1c0085ce:	40c507b3          	sub	a5,a0,a2
1c0085d2:	8d95                	sub	a1,a1,a3
1c0085d4:	00f53533          	sltu	a0,a0,a5
1c0085d8:	40a58833          	sub	a6,a1,a0
1c0085dc:	853e                	mv	a0,a5
1c0085de:	85c2                	mv	a1,a6
1c0085e0:	b555                	j	1c008484 <__umoddi3+0xac>
1c0085e2:	010008b7          	lui	a7,0x1000
1c0085e6:	4741                	li	a4,16
1c0085e8:	fb16efe3          	bltu	a3,a7,1c0085a6 <__umoddi3+0x1ce>
1c0085ec:	4761                	li	a4,24
1c0085ee:	bf65                	j	1c0085a6 <__umoddi3+0x1ce>
1c0085f0:	01d65733          	srl	a4,a2,t4
1c0085f4:	01c696b3          	sll	a3,a3,t3
1c0085f8:	8ed9                	or	a3,a3,a4
1c0085fa:	01d5d7b3          	srl	a5,a1,t4
1c0085fe:	0106d813          	srli	a6,a3,0x10
1c008602:	0307f333          	remu	t1,a5,a6
1c008606:	01d558b3          	srl	a7,a0,t4
1c00860a:	0307d7b3          	divu	a5,a5,a6
1c00860e:	01c595b3          	sll	a1,a1,t3
1c008612:	00b8e5b3          	or	a1,a7,a1
1c008616:	0342                	slli	t1,t1,0x10
1c008618:	1006d733          	p.exthz	a4,a3
1c00861c:	0105d893          	srli	a7,a1,0x10
1c008620:	011368b3          	or	a7,t1,a7
1c008624:	02f70f33          	mul	t5,a4,a5
1c008628:	01c61633          	sll	a2,a2,t3
1c00862c:	01c51533          	sll	a0,a0,t3
1c008630:	833e                	mv	t1,a5
1c008632:	01e8fc63          	bleu	t5,a7,1c00864a <__umoddi3+0x272>
1c008636:	98b6                	add	a7,a7,a3
1c008638:	fff78313          	addi	t1,a5,-1 # ffffff <__l1_heap_size+0xff0023>
1c00863c:	00d8e763          	bltu	a7,a3,1c00864a <__umoddi3+0x272>
1c008640:	01e8f563          	bleu	t5,a7,1c00864a <__umoddi3+0x272>
1c008644:	ffe78313          	addi	t1,a5,-2
1c008648:	98b6                	add	a7,a7,a3
1c00864a:	41e888b3          	sub	a7,a7,t5
1c00864e:	0308f7b3          	remu	a5,a7,a6
1c008652:	0308d8b3          	divu	a7,a7,a6
1c008656:	df07a5b3          	p.insert	a1,a5,15,16
1c00865a:	03170733          	mul	a4,a4,a7
1c00865e:	87c6                	mv	a5,a7
1c008660:	00e5fc63          	bleu	a4,a1,1c008678 <__umoddi3+0x2a0>
1c008664:	95b6                	add	a1,a1,a3
1c008666:	fff88793          	addi	a5,a7,-1 # ffffff <__l1_heap_size+0xff0023>
1c00866a:	00d5e763          	bltu	a1,a3,1c008678 <__umoddi3+0x2a0>
1c00866e:	00e5f563          	bleu	a4,a1,1c008678 <__umoddi3+0x2a0>
1c008672:	ffe88793          	addi	a5,a7,-2
1c008676:	95b6                	add	a1,a1,a3
1c008678:	0342                	slli	t1,t1,0x10
1c00867a:	6f41                	lui	t5,0x10
1c00867c:	00f36333          	or	t1,t1,a5
1c008680:	ffff0793          	addi	a5,t5,-1 # ffff <__l1_heap_size+0x23>
1c008684:	00f37833          	and	a6,t1,a5
1c008688:	01035313          	srli	t1,t1,0x10
1c00868c:	8ff1                	and	a5,a5,a2
1c00868e:	02f808b3          	mul	a7,a6,a5
1c008692:	02f307b3          	mul	a5,t1,a5
1c008696:	8d99                	sub	a1,a1,a4
1c008698:	8fbe                	mv	t6,a5
1c00869a:	01065713          	srli	a4,a2,0x10
1c00869e:	42e80fb3          	p.mac	t6,a6,a4
1c0086a2:	0108d813          	srli	a6,a7,0x10
1c0086a6:	987e                	add	a6,a6,t6
1c0086a8:	02e30333          	mul	t1,t1,a4
1c0086ac:	00f87363          	bleu	a5,a6,1c0086b2 <__umoddi3+0x2da>
1c0086b0:	937a                	add	t1,t1,t5
1c0086b2:	01085713          	srli	a4,a6,0x10
1c0086b6:	933a                	add	t1,t1,a4
1c0086b8:	6741                	lui	a4,0x10
1c0086ba:	177d                	addi	a4,a4,-1
1c0086bc:	00e87833          	and	a6,a6,a4
1c0086c0:	0842                	slli	a6,a6,0x10
1c0086c2:	00e8f733          	and	a4,a7,a4
1c0086c6:	9742                	add	a4,a4,a6
1c0086c8:	0065e663          	bltu	a1,t1,1c0086d4 <__umoddi3+0x2fc>
1c0086cc:	00659d63          	bne	a1,t1,1c0086e6 <__umoddi3+0x30e>
1c0086d0:	00e57b63          	bleu	a4,a0,1c0086e6 <__umoddi3+0x30e>
1c0086d4:	40c70633          	sub	a2,a4,a2
1c0086d8:	00c73733          	sltu	a4,a4,a2
1c0086dc:	40d30333          	sub	t1,t1,a3
1c0086e0:	40e30333          	sub	t1,t1,a4
1c0086e4:	8732                	mv	a4,a2
1c0086e6:	40e50733          	sub	a4,a0,a4
1c0086ea:	00e53533          	sltu	a0,a0,a4
1c0086ee:	406585b3          	sub	a1,a1,t1
1c0086f2:	8d89                	sub	a1,a1,a0
1c0086f4:	01d597b3          	sll	a5,a1,t4
1c0086f8:	01c75733          	srl	a4,a4,t3
1c0086fc:	00e7e533          	or	a0,a5,a4
1c008700:	01c5d5b3          	srl	a1,a1,t3
1c008704:	b341                	j	1c008484 <__umoddi3+0xac>

1c008706 <pe_entry_test>:
1c008706:	1c001537          	lui	a0,0x1c001
1c00870a:	f14025f3          	csrr	a1,mhartid
1c00870e:	98050513          	addi	a0,a0,-1664 # 1c000980 <__DTOR_END__+0x118>
1c008712:	f455b5b3          	p.bclr	a1,a1,26,5
1c008716:	a44d                	j	1c0089b8 <printf>

1c008718 <cluster_entry_test>:
1c008718:	1141                	addi	sp,sp,-16
1c00871a:	c422                	sw	s0,8(sp)
1c00871c:	0ff00793          	li	a5,255
1c008720:	00204437          	lui	s0,0x204
1c008724:	c606                	sw	ra,12(sp)
1c008726:	08f42223          	sw	a5,132(s0) # 204084 <__l1_heap_size+0x1f40a8>
1c00872a:	20040793          	addi	a5,s0,512
1c00872e:	0ff00713          	li	a4,255
1c008732:	00e7a023          	sw	a4,0(a5)
1c008736:	00e7a623          	sw	a4,12(a5)
1c00873a:	22040793          	addi	a5,s0,544
1c00873e:	1ff00713          	li	a4,511
1c008742:	00e7a023          	sw	a4,0(a5)
1c008746:	00e7a623          	sw	a4,12(a5)
1c00874a:	1c0087b7          	lui	a5,0x1c008
1c00874e:	70678793          	addi	a5,a5,1798 # 1c008706 <pe_entry_test>
1c008752:	00204737          	lui	a4,0x204
1c008756:	08f72023          	sw	a5,128(a4) # 204080 <__l1_heap_size+0x1f40a4>
1c00875a:	002047b7          	lui	a5,0x204
1c00875e:	0807a023          	sw	zero,128(a5) # 204080 <__l1_heap_size+0x1f40a4>
1c008762:	4501                	li	a0,0
1c008764:	374d                	jal	1c008706 <pe_entry_test>
1c008766:	21c40413          	addi	s0,s0,540
1c00876a:	401c                	lw	a5,0(s0)
1c00876c:	40b2                	lw	ra,12(sp)
1c00876e:	4422                	lw	s0,8(sp)
1c008770:	0141                	addi	sp,sp,16
1c008772:	8082                	ret

1c008774 <config_without_FC>:
1c008774:	711d                	addi	sp,sp,-96
1c008776:	4785                	li	a5,1
1c008778:	0808                	addi	a0,sp,16
1c00877a:	ce86                	sw	ra,92(sp)
1c00877c:	c83e                	sw	a5,16(sp)
1c00877e:	cca2                	sw	s0,88(sp)
1c008780:	378010ef          	jal	ra,1c009af8 <pi_cluster_conf_init>
1c008784:	080c                	addi	a1,sp,16
1c008786:	0048                	addi	a0,sp,4
1c008788:	6e5000ef          	jal	ra,1c00966c <pi_open_from_conf>
1c00878c:	0048                	addi	a0,sp,4
1c00878e:	4a8010ef          	jal	ra,1c009c36 <pi_cluster_open_without_FC_test>
1c008792:	547d                	li	s0,-1
1c008794:	e11d                	bnez	a0,1c0087ba <config_without_FC+0x46>
1c008796:	1c0087b7          	lui	a5,0x1c008
1c00879a:	71878793          	addi	a5,a5,1816 # 1c008718 <cluster_entry_test>
1c00879e:	d43e                	sw	a5,40(sp)
1c0087a0:	842a                	mv	s0,a0
1c0087a2:	47a1                	li	a5,8
1c0087a4:	102c                	addi	a1,sp,40
1c0087a6:	0048                	addi	a0,sp,4
1c0087a8:	d602                	sw	zero,44(sp)
1c0087aa:	d802                	sw	zero,48(sp)
1c0087ac:	da02                	sw	zero,52(sp)
1c0087ae:	de3e                	sw	a5,60(sp)
1c0087b0:	446010ef          	jal	ra,1c009bf6 <pi_cluster_send_task_to_cl>
1c0087b4:	0048                	addi	a0,sp,4
1c0087b6:	34c010ef          	jal	ra,1c009b02 <pi_cluster_close>
1c0087ba:	8522                	mv	a0,s0
1c0087bc:	40f6                	lw	ra,92(sp)
1c0087be:	4466                	lw	s0,88(sp)
1c0087c0:	6125                	addi	sp,sp,96
1c0087c2:	8082                	ret

1c0087c4 <main>:
1c0087c4:	1c001537          	lui	a0,0x1c001
1c0087c8:	1141                	addi	sp,sp,-16
1c0087ca:	f14025f3          	csrr	a1,mhartid
1c0087ce:	96850513          	addi	a0,a0,-1688 # 1c000968 <__DTOR_END__+0x100>
1c0087d2:	f455b5b3          	p.bclr	a1,a1,26,5
1c0087d6:	c606                	sw	ra,12(sp)
1c0087d8:	22c5                	jal	1c0089b8 <printf>
1c0087da:	f14025f3          	csrr	a1,mhartid
1c0087de:	1c001537          	lui	a0,0x1c001
1c0087e2:	ca5595b3          	p.extractu	a1,a1,5,5
1c0087e6:	1585                	addi	a1,a1,-31
1c0087e8:	0015b593          	seqz	a1,a1
1c0087ec:	97450513          	addi	a0,a0,-1676 # 1c000974 <__DTOR_END__+0x10c>
1c0087f0:	22e1                	jal	1c0089b8 <printf>
1c0087f2:	3749                	jal	1c008774 <config_without_FC>
1c0087f4:	40b2                	lw	ra,12(sp)
1c0087f6:	4501                	li	a0,0
1c0087f8:	0141                	addi	sp,sp,16
1c0087fa:	8082                	ret

1c0087fc <pos_fll_set_freq>:
1c0087fc:	100596b3          	p.fl1	a3,a1
1c008800:	47f5                	li	a5,29
1c008802:	872a                	mv	a4,a0
1c008804:	82d7b7db          	p.subun	a5,a5,a3,1
1c008808:	4505                	li	a0,1
1c00880a:	04f567b3          	p.max	a5,a0,a5
1c00880e:	fff78693          	addi	a3,a5,-1
1c008812:	00f595b3          	sll	a1,a1,a5
1c008816:	00d51533          	sll	a0,a0,a3
1c00881a:	dc05b6b3          	p.bclr	a3,a1,14,0
1c00881e:	c0f6a55b          	p.addunr	a0,a3,a5
1c008822:	00400693          	li	a3,4
1c008826:	00271613          	slli	a2,a4,0x2
1c00882a:	00a6e623          	p.sw	a0,a2(a3)
1c00882e:	96ba                	add	a3,a3,a4
1c008830:	00c6c683          	lbu	a3,12(a3)
1c008834:	ce99                	beqz	a3,1c008852 <pos_fll_set_freq+0x56>
1c008836:	0712                	slli	a4,a4,0x4
1c008838:	0711                	addi	a4,a4,4
1c00883a:	1a100637          	lui	a2,0x1a100
1c00883e:	20e67683          	p.lw	a3,a4(a2)
1c008842:	81bd                	srli	a1,a1,0xf
1c008844:	de05a6b3          	p.insert	a3,a1,15,0
1c008848:	0785                	addi	a5,a5,1
1c00884a:	c7a7a6b3          	p.insert	a3,a5,3,26
1c00884e:	00d66723          	p.sw	a3,a4(a2)
1c008852:	8082                	ret

1c008854 <pos_fll_init>:
1c008854:	1141                	addi	sp,sp,-16
1c008856:	00451613          	slli	a2,a0,0x4
1c00885a:	c04a                	sw	s2,0(sp)
1c00885c:	00460813          	addi	a6,a2,4 # 1a100004 <__l1_end+0xa0fffe0>
1c008860:	892a                	mv	s2,a0
1c008862:	1a1006b7          	lui	a3,0x1a100
1c008866:	c606                	sw	ra,12(sp)
1c008868:	c422                	sw	s0,8(sp)
1c00886a:	c226                	sw	s1,4(sp)
1c00886c:	2106f703          	p.lw	a4,a6(a3)
1c008870:	87ba                	mv	a5,a4
1c008872:	04074163          	bltz	a4,1c0088b4 <pos_fll_init+0x60>
1c008876:	00860893          	addi	a7,a2,8
1c00887a:	2116f503          	p.lw	a0,a7(a3)
1c00887e:	4599                	li	a1,6
1c008880:	caa5a533          	p.insert	a0,a1,5,10
1c008884:	05000593          	li	a1,80
1c008888:	d705a533          	p.insert	a0,a1,11,16
1c00888c:	1a1005b7          	lui	a1,0x1a100
1c008890:	00a5e8a3          	p.sw	a0,a7(a1)
1c008894:	0631                	addi	a2,a2,12
1c008896:	20c6f683          	p.lw	a3,a2(a3)
1c00889a:	14c00513          	li	a0,332
1c00889e:	d30526b3          	p.insert	a3,a0,9,16
1c0088a2:	00d5e623          	p.sw	a3,a2(a1)
1c0088a6:	4685                	li	a3,1
1c0088a8:	c1e6a7b3          	p.insert	a5,a3,0,30
1c0088ac:	c1f6a7b3          	p.insert	a5,a3,0,31
1c0088b0:	00f5e823          	p.sw	a5,a6(a1)
1c0088b4:	00400693          	li	a3,4
1c0088b8:	00291613          	slli	a2,s2,0x2
1c0088bc:	96b2                	add	a3,a3,a2
1c0088be:	4284                	lw	s1,0(a3)
1c0088c0:	00400413          	li	s0,4
1c0088c4:	c085                	beqz	s1,1c0088e4 <pos_fll_init+0x90>
1c0088c6:	85a6                	mv	a1,s1
1c0088c8:	854a                	mv	a0,s2
1c0088ca:	3f0d                	jal	1c0087fc <pos_fll_set_freq>
1c0088cc:	01240533          	add	a0,s0,s2
1c0088d0:	4785                	li	a5,1
1c0088d2:	00f50623          	sb	a5,12(a0)
1c0088d6:	40b2                	lw	ra,12(sp)
1c0088d8:	4422                	lw	s0,8(sp)
1c0088da:	8526                	mv	a0,s1
1c0088dc:	4902                	lw	s2,0(sp)
1c0088de:	4492                	lw	s1,4(sp)
1c0088e0:	0141                	addi	sp,sp,16
1c0088e2:	8082                	ret
1c0088e4:	10075733          	p.exthz	a4,a4
1c0088e8:	c7a797b3          	p.extractu	a5,a5,3,26
1c0088ec:	073e                	slli	a4,a4,0xf
1c0088ee:	17fd                	addi	a5,a5,-1
1c0088f0:	00f754b3          	srl	s1,a4,a5
1c0088f4:	c284                	sw	s1,0(a3)
1c0088f6:	bfd9                	j	1c0088cc <pos_fll_init+0x78>

1c0088f8 <pos_fll_constructor>:
1c0088f8:	00400793          	li	a5,4
1c0088fc:	0007a023          	sw	zero,0(a5)
1c008900:	0007a223          	sw	zero,4(a5)
1c008904:	0007a423          	sw	zero,8(a5)
1c008908:	00079623          	sh	zero,12(a5)
1c00890c:	00078723          	sb	zero,14(a5)
1c008910:	8082                	ret

1c008912 <pos_soc_init>:
1c008912:	1141                	addi	sp,sp,-16
1c008914:	c606                	sw	ra,12(sp)
1c008916:	c422                	sw	s0,8(sp)
1c008918:	37c5                	jal	1c0088f8 <pos_fll_constructor>
1c00891a:	4501                	li	a0,0
1c00891c:	3f25                	jal	1c008854 <pos_fll_init>
1c00891e:	00a02a23          	sw	a0,20(zero) # 14 <pos_freq_domains>
1c008922:	4505                	li	a0,1
1c008924:	3f05                	jal	1c008854 <pos_fll_init>
1c008926:	01400413          	li	s0,20
1c00892a:	c408                	sw	a0,8(s0)
1c00892c:	4509                	li	a0,2
1c00892e:	371d                	jal	1c008854 <pos_fll_init>
1c008930:	c048                	sw	a0,4(s0)
1c008932:	40b2                	lw	ra,12(sp)
1c008934:	4422                	lw	s0,8(sp)
1c008936:	0141                	addi	sp,sp,16
1c008938:	8082                	ret

1c00893a <pos_libc_putc_stdout>:
1c00893a:	f14027f3          	csrr	a5,mhartid
1c00893e:	f1402773          	csrr	a4,mhartid
1c008942:	ca5797b3          	p.extractu	a5,a5,5,5
1c008946:	070e                	slli	a4,a4,0x3
1c008948:	079e                	slli	a5,a5,0x7
1c00894a:	1a10f6b7          	lui	a3,0x1a10f
1c00894e:	ee873733          	p.bclr	a4,a4,23,8
1c008952:	97b6                	add	a5,a5,a3
1c008954:	00a767a3          	p.sw	a0,a5(a4)
1c008958:	8082                	ret

1c00895a <strchr>:
1c00895a:	0ff5f593          	andi	a1,a1,255
1c00895e:	00054703          	lbu	a4,0(a0)
1c008962:	87aa                	mv	a5,a0
1c008964:	0505                	addi	a0,a0,1
1c008966:	00b70563          	beq	a4,a1,1c008970 <strchr+0x16>
1c00896a:	fb75                	bnez	a4,1c00895e <strchr+0x4>
1c00896c:	c191                	beqz	a1,1c008970 <strchr+0x16>
1c00896e:	4781                	li	a5,0
1c008970:	853e                	mv	a0,a5
1c008972:	8082                	ret

1c008974 <pos_libc_fputc_locked>:
1c008974:	1141                	addi	sp,sp,-16
1c008976:	0ff57513          	andi	a0,a0,255
1c00897a:	c606                	sw	ra,12(sp)
1c00897c:	3f7d                	jal	1c00893a <pos_libc_putc_stdout>
1c00897e:	40b2                	lw	ra,12(sp)
1c008980:	4501                	li	a0,0
1c008982:	0141                	addi	sp,sp,16
1c008984:	8082                	ret

1c008986 <pos_libc_prf_locked>:
1c008986:	a251                	j	1c008b0a <pos_libc_prf>

1c008988 <exit>:
1c008988:	1101                	addi	sp,sp,-32
1c00898a:	c62a                	sw	a0,12(sp)
1c00898c:	ce06                	sw	ra,28(sp)
1c00898e:	4a1000ef          	jal	ra,1c00962e <pos_init_stop>
1c008992:	4532                	lw	a0,12(sp)
1c008994:	1a1047b7          	lui	a5,0x1a104
1c008998:	c1f54533          	p.bset	a0,a0,0,31
1c00899c:	0aa7a023          	sw	a0,160(a5) # 1a1040a0 <__l1_end+0xa10407c>
1c0089a0:	1a10a7b7          	lui	a5,0x1a10a
1c0089a4:	577d                	li	a4,-1
1c0089a6:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097e4>
1c0089aa:	10500073          	wfi
1c0089ae:	bff5                	j	1c0089aa <exit+0x22>

1c0089b0 <pos_io_start>:
1c0089b0:	4501                	li	a0,0
1c0089b2:	8082                	ret

1c0089b4 <pos_io_stop>:
1c0089b4:	4501                	li	a0,0
1c0089b6:	8082                	ret

1c0089b8 <printf>:
1c0089b8:	7139                	addi	sp,sp,-64
1c0089ba:	d432                	sw	a2,40(sp)
1c0089bc:	862a                	mv	a2,a0
1c0089be:	1c009537          	lui	a0,0x1c009
1c0089c2:	d22e                	sw	a1,36(sp)
1c0089c4:	d636                	sw	a3,44(sp)
1c0089c6:	4589                	li	a1,2
1c0089c8:	1054                	addi	a3,sp,36
1c0089ca:	97450513          	addi	a0,a0,-1676 # 1c008974 <pos_libc_fputc_locked>
1c0089ce:	ce06                	sw	ra,28(sp)
1c0089d0:	d83a                	sw	a4,48(sp)
1c0089d2:	da3e                	sw	a5,52(sp)
1c0089d4:	dc42                	sw	a6,56(sp)
1c0089d6:	de46                	sw	a7,60(sp)
1c0089d8:	c636                	sw	a3,12(sp)
1c0089da:	3775                	jal	1c008986 <pos_libc_prf_locked>
1c0089dc:	40f2                	lw	ra,28(sp)
1c0089de:	6121                	addi	sp,sp,64
1c0089e0:	8082                	ret

1c0089e2 <_to_x>:
1c0089e2:	7179                	addi	sp,sp,-48
1c0089e4:	d422                	sw	s0,40(sp)
1c0089e6:	d226                	sw	s1,36(sp)
1c0089e8:	ce4e                	sw	s3,28(sp)
1c0089ea:	cc52                	sw	s4,24(sp)
1c0089ec:	ca56                	sw	s5,20(sp)
1c0089ee:	c85a                	sw	s6,16(sp)
1c0089f0:	d606                	sw	ra,44(sp)
1c0089f2:	d04a                	sw	s2,32(sp)
1c0089f4:	c65e                	sw	s7,12(sp)
1c0089f6:	84aa                	mv	s1,a0
1c0089f8:	89ae                	mv	s3,a1
1c0089fa:	8a32                	mv	s4,a2
1c0089fc:	8ab6                	mv	s5,a3
1c0089fe:	842a                	mv	s0,a0
1c008a00:	4b25                	li	s6,9
1c008a02:	8656                	mv	a2,s5
1c008a04:	4681                	li	a3,0
1c008a06:	854e                	mv	a0,s3
1c008a08:	85d2                	mv	a1,s4
1c008a0a:	32f9                	jal	1c0083d8 <__umoddi3>
1c008a0c:	85d2                	mv	a1,s4
1c008a0e:	892a                	mv	s2,a0
1c008a10:	8656                	mv	a2,s5
1c008a12:	854e                	mv	a0,s3
1c008a14:	4681                	li	a3,0
1c008a16:	e86ff0ef          	jal	ra,1c00809c <__udivdi3>
1c008a1a:	89aa                	mv	s3,a0
1c008a1c:	8a2e                	mv	s4,a1
1c008a1e:	02700713          	li	a4,39
1c008a22:	012b6363          	bltu	s6,s2,1c008a28 <_to_x+0x46>
1c008a26:	4701                	li	a4,0
1c008a28:	03090913          	addi	s2,s2,48
1c008a2c:	974a                	add	a4,a4,s2
1c008a2e:	00e40023          	sb	a4,0(s0)
1c008a32:	8dc9                	or	a1,a1,a0
1c008a34:	00140793          	addi	a5,s0,1
1c008a38:	e195                	bnez	a1,1c008a5c <_to_x+0x7a>
1c008a3a:	00078023          	sb	zero,0(a5)
1c008a3e:	40978533          	sub	a0,a5,s1
1c008a42:	0084ef63          	bltu	s1,s0,1c008a60 <_to_x+0x7e>
1c008a46:	50b2                	lw	ra,44(sp)
1c008a48:	5422                	lw	s0,40(sp)
1c008a4a:	5492                	lw	s1,36(sp)
1c008a4c:	5902                	lw	s2,32(sp)
1c008a4e:	49f2                	lw	s3,28(sp)
1c008a50:	4a62                	lw	s4,24(sp)
1c008a52:	4ad2                	lw	s5,20(sp)
1c008a54:	4b42                	lw	s6,16(sp)
1c008a56:	4bb2                	lw	s7,12(sp)
1c008a58:	6145                	addi	sp,sp,48
1c008a5a:	8082                	ret
1c008a5c:	843e                	mv	s0,a5
1c008a5e:	b755                	j	1c008a02 <_to_x+0x20>
1c008a60:	0004c703          	lbu	a4,0(s1)
1c008a64:	00044783          	lbu	a5,0(s0)
1c008a68:	fee40fab          	p.sb	a4,-1(s0!)
1c008a6c:	00f480ab          	p.sb	a5,1(s1!)
1c008a70:	bfc9                	j	1c008a42 <_to_x+0x60>

1c008a72 <_rlrshift>:
1c008a72:	411c                	lw	a5,0(a0)
1c008a74:	4154                	lw	a3,4(a0)
1c008a76:	fc17b733          	p.bclr	a4,a5,30,1
1c008a7a:	01f69613          	slli	a2,a3,0x1f
1c008a7e:	8385                	srli	a5,a5,0x1
1c008a80:	8fd1                	or	a5,a5,a2
1c008a82:	97ba                	add	a5,a5,a4
1c008a84:	8285                	srli	a3,a3,0x1
1c008a86:	00e7b733          	sltu	a4,a5,a4
1c008a8a:	9736                	add	a4,a4,a3
1c008a8c:	c11c                	sw	a5,0(a0)
1c008a8e:	c158                	sw	a4,4(a0)
1c008a90:	8082                	ret

1c008a92 <_ldiv5>:
1c008a92:	4118                	lw	a4,0(a0)
1c008a94:	4154                	lw	a3,4(a0)
1c008a96:	00270793          	addi	a5,a4,2
1c008a9a:	00e7b733          	sltu	a4,a5,a4
1c008a9e:	4615                	li	a2,5
1c008aa0:	9736                	add	a4,a4,a3
1c008aa2:	02c755b3          	divu	a1,a4,a2
1c008aa6:	42b61733          	p.msu	a4,a2,a1
1c008aaa:	01d71693          	slli	a3,a4,0x1d
1c008aae:	0037d713          	srli	a4,a5,0x3
1c008ab2:	8f55                	or	a4,a4,a3
1c008ab4:	02c75733          	divu	a4,a4,a2
1c008ab8:	01d75693          	srli	a3,a4,0x1d
1c008abc:	070e                	slli	a4,a4,0x3
1c008abe:	42e617b3          	p.msu	a5,a2,a4
1c008ac2:	02c7d7b3          	divu	a5,a5,a2
1c008ac6:	973e                	add	a4,a4,a5
1c008ac8:	95b6                	add	a1,a1,a3
1c008aca:	00f737b3          	sltu	a5,a4,a5
1c008ace:	97ae                	add	a5,a5,a1
1c008ad0:	c118                	sw	a4,0(a0)
1c008ad2:	c15c                	sw	a5,4(a0)
1c008ad4:	8082                	ret

1c008ad6 <_get_digit>:
1c008ad6:	419c                	lw	a5,0(a1)
1c008ad8:	03000713          	li	a4,48
1c008adc:	02f05563          	blez	a5,1c008b06 <_get_digit+0x30>
1c008ae0:	17fd                	addi	a5,a5,-1
1c008ae2:	c19c                	sw	a5,0(a1)
1c008ae4:	411c                	lw	a5,0(a0)
1c008ae6:	4729                	li	a4,10
1c008ae8:	4150                	lw	a2,4(a0)
1c008aea:	02f706b3          	mul	a3,a4,a5
1c008aee:	02f737b3          	mulhu	a5,a4,a5
1c008af2:	42c707b3          	p.mac	a5,a4,a2
1c008af6:	01c7d713          	srli	a4,a5,0x1c
1c008afa:	c7c7b7b3          	p.bclr	a5,a5,3,28
1c008afe:	03070713          	addi	a4,a4,48
1c008b02:	c114                	sw	a3,0(a0)
1c008b04:	c15c                	sw	a5,4(a0)
1c008b06:	853a                	mv	a0,a4
1c008b08:	8082                	ret

1c008b0a <pos_libc_prf>:
1c008b0a:	7135                	addi	sp,sp,-160
1c008b0c:	c94a                	sw	s2,144(sp)
1c008b0e:	c74e                	sw	s3,140(sp)
1c008b10:	c15a                	sw	s6,128(sp)
1c008b12:	dede                	sw	s7,124(sp)
1c008b14:	cf06                	sw	ra,156(sp)
1c008b16:	cd22                	sw	s0,152(sp)
1c008b18:	cb26                	sw	s1,148(sp)
1c008b1a:	c552                	sw	s4,136(sp)
1c008b1c:	c356                	sw	s5,132(sp)
1c008b1e:	dce2                	sw	s8,120(sp)
1c008b20:	dae6                	sw	s9,116(sp)
1c008b22:	d8ea                	sw	s10,112(sp)
1c008b24:	d6ee                	sw	s11,108(sp)
1c008b26:	8b2a                	mv	s6,a0
1c008b28:	8bae                	mv	s7,a1
1c008b2a:	8936                	mv	s2,a3
1c008b2c:	4981                	li	s3,0
1c008b2e:	00064503          	lbu	a0,0(a2)
1c008b32:	00160c13          	addi	s8,a2,1
1c008b36:	c911                	beqz	a0,1c008b4a <pos_libc_prf+0x40>
1c008b38:	02500793          	li	a5,37
1c008b3c:	14f50363          	beq	a0,a5,1c008c82 <pos_libc_prf+0x178>
1c008b40:	85de                	mv	a1,s7
1c008b42:	9b02                	jalr	s6
1c008b44:	13f536e3          	p.bneimm	a0,-1,1c009470 <pos_libc_prf+0x966>
1c008b48:	59fd                	li	s3,-1
1c008b4a:	40fa                	lw	ra,156(sp)
1c008b4c:	446a                	lw	s0,152(sp)
1c008b4e:	854e                	mv	a0,s3
1c008b50:	44da                	lw	s1,148(sp)
1c008b52:	494a                	lw	s2,144(sp)
1c008b54:	49ba                	lw	s3,140(sp)
1c008b56:	4a2a                	lw	s4,136(sp)
1c008b58:	4a9a                	lw	s5,132(sp)
1c008b5a:	4b0a                	lw	s6,128(sp)
1c008b5c:	5bf6                	lw	s7,124(sp)
1c008b5e:	5c66                	lw	s8,120(sp)
1c008b60:	5cd6                	lw	s9,116(sp)
1c008b62:	5d46                	lw	s10,112(sp)
1c008b64:	5db6                	lw	s11,108(sp)
1c008b66:	610d                	addi	sp,sp,160
1c008b68:	8082                	ret
1c008b6a:	108d8463          	beq	s11,s0,1c008c72 <pos_libc_prf+0x168>
1c008b6e:	0fb46663          	bltu	s0,s11,1c008c5a <pos_libc_prf+0x150>
1c008b72:	fc0d8ce3          	beqz	s11,1c008b4a <pos_libc_prf+0x40>
1c008b76:	0ecd8b63          	beq	s11,a2,1c008c6c <pos_libc_prf+0x162>
1c008b7a:	8c52                	mv	s8,s4
1c008b7c:	000c4d83          	lbu	s11,0(s8)
1c008b80:	1c001737          	lui	a4,0x1c001
1c008b84:	85ee                	mv	a1,s11
1c008b86:	99870513          	addi	a0,a4,-1640 # 1c000998 <__DTOR_END__+0x130>
1c008b8a:	c232                	sw	a2,4(sp)
1c008b8c:	33f9                	jal	1c00895a <strchr>
1c008b8e:	001c0a13          	addi	s4,s8,1
1c008b92:	4612                	lw	a2,4(sp)
1c008b94:	f979                	bnez	a0,1c008b6a <pos_libc_prf+0x60>
1c008b96:	02a00713          	li	a4,42
1c008b9a:	10ed9463          	bne	s11,a4,1c008ca2 <pos_libc_prf+0x198>
1c008b9e:	00092c83          	lw	s9,0(s2)
1c008ba2:	00490713          	addi	a4,s2,4
1c008ba6:	000cd663          	bgez	s9,1c008bb2 <pos_libc_prf+0xa8>
1c008baa:	4785                	li	a5,1
1c008bac:	41900cb3          	neg	s9,s9
1c008bb0:	cc3e                	sw	a5,24(sp)
1c008bb2:	000a4d83          	lbu	s11,0(s4)
1c008bb6:	893a                	mv	s2,a4
1c008bb8:	002c0a13          	addi	s4,s8,2
1c008bbc:	02e00713          	li	a4,46
1c008bc0:	547d                	li	s0,-1
1c008bc2:	00ed9f63          	bne	s11,a4,1c008be0 <pos_libc_prf+0xd6>
1c008bc6:	000a4703          	lbu	a4,0(s4)
1c008bca:	02a00793          	li	a5,42
1c008bce:	10f71d63          	bne	a4,a5,1c008ce8 <pos_libc_prf+0x1de>
1c008bd2:	00092403          	lw	s0,0(s2)
1c008bd6:	0a05                	addi	s4,s4,1
1c008bd8:	0911                	addi	s2,s2,4
1c008bda:	000a4d83          	lbu	s11,0(s4)
1c008bde:	0a05                	addi	s4,s4,1
1c008be0:	1c001737          	lui	a4,0x1c001
1c008be4:	85ee                	mv	a1,s11
1c008be6:	9a070513          	addi	a0,a4,-1632 # 1c0009a0 <__DTOR_END__+0x138>
1c008bea:	84ee                	mv	s1,s11
1c008bec:	33bd                	jal	1c00895a <strchr>
1c008bee:	10050e63          	beqz	a0,1c008d0a <pos_libc_prf+0x200>
1c008bf2:	06c00693          	li	a3,108
1c008bf6:	001a0c13          	addi	s8,s4,1
1c008bfa:	000a4d83          	lbu	s11,0(s4)
1c008bfe:	0ed49963          	bne	s1,a3,1c008cf0 <pos_libc_prf+0x1e6>
1c008c02:	009d9863          	bne	s11,s1,1c008c12 <pos_libc_prf+0x108>
1c008c06:	001a4d83          	lbu	s11,1(s4)
1c008c0a:	002a0c13          	addi	s8,s4,2
1c008c0e:	04c00493          	li	s1,76
1c008c12:	06700693          	li	a3,103
1c008c16:	17b6e263          	bltu	a3,s11,1c008d7a <pos_libc_prf+0x270>
1c008c1a:	06500693          	li	a3,101
1c008c1e:	32ddfb63          	bleu	a3,s11,1c008f54 <pos_libc_prf+0x44a>
1c008c22:	04700693          	li	a3,71
1c008c26:	0fb6e563          	bltu	a3,s11,1c008d10 <pos_libc_prf+0x206>
1c008c2a:	04500713          	li	a4,69
1c008c2e:	32edf363          	bleu	a4,s11,1c008f54 <pos_libc_prf+0x44a>
1c008c32:	f00d8ce3          	beqz	s11,1c008b4a <pos_libc_prf+0x40>
1c008c36:	02500713          	li	a4,37
1c008c3a:	02ed86e3          	beq	s11,a4,1c009466 <pos_libc_prf+0x95c>
1c008c3e:	85de                	mv	a1,s7
1c008c40:	02500513          	li	a0,37
1c008c44:	9b02                	jalr	s6
1c008c46:	f1f521e3          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c008c4a:	85de                	mv	a1,s7
1c008c4c:	856e                	mv	a0,s11
1c008c4e:	9b02                	jalr	s6
1c008c50:	eff52ce3          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c008c54:	0989                	addi	s3,s3,2
1c008c56:	01d0006f          	j	1c009472 <pos_libc_prf+0x968>
1c008c5a:	039d8163          	beq	s11,s9,1c008c7c <pos_libc_prf+0x172>
1c008c5e:	009d8c63          	beq	s11,s1,1c008c76 <pos_libc_prf+0x16c>
1c008c62:	f1ad9ce3          	bne	s11,s10,1c008b7a <pos_libc_prf+0x70>
1c008c66:	4705                	li	a4,1
1c008c68:	c63a                	sw	a4,12(sp)
1c008c6a:	bf01                	j	1c008b7a <pos_libc_prf+0x70>
1c008c6c:	4785                	li	a5,1
1c008c6e:	c83e                	sw	a5,16(sp)
1c008c70:	b729                	j	1c008b7a <pos_libc_prf+0x70>
1c008c72:	4a85                	li	s5,1
1c008c74:	b719                	j	1c008b7a <pos_libc_prf+0x70>
1c008c76:	4705                	li	a4,1
1c008c78:	ce3a                	sw	a4,28(sp)
1c008c7a:	b701                	j	1c008b7a <pos_libc_prf+0x70>
1c008c7c:	4785                	li	a5,1
1c008c7e:	cc3e                	sw	a5,24(sp)
1c008c80:	bded                	j	1c008b7a <pos_libc_prf+0x70>
1c008c82:	ce02                	sw	zero,28(sp)
1c008c84:	c802                	sw	zero,16(sp)
1c008c86:	c602                	sw	zero,12(sp)
1c008c88:	cc02                	sw	zero,24(sp)
1c008c8a:	4a81                	li	s5,0
1c008c8c:	02300413          	li	s0,35
1c008c90:	02d00c93          	li	s9,45
1c008c94:	03000493          	li	s1,48
1c008c98:	02b00d13          	li	s10,43
1c008c9c:	02000613          	li	a2,32
1c008ca0:	bdf1                	j	1c008b7c <pos_libc_prf+0x72>
1c008ca2:	fd0d8713          	addi	a4,s11,-48
1c008ca6:	46a5                	li	a3,9
1c008ca8:	4c81                	li	s9,0
1c008caa:	f0e6e9e3          	bltu	a3,a4,1c008bbc <pos_libc_prf+0xb2>
1c008cae:	4725                	li	a4,9
1c008cb0:	4629                	li	a2,10
1c008cb2:	8a62                	mv	s4,s8
1c008cb4:	001a4d8b          	p.lbu	s11,1(s4!)
1c008cb8:	fd0d8693          	addi	a3,s11,-48
1c008cbc:	f0d760e3          	bltu	a4,a3,1c008bbc <pos_libc_prf+0xb2>
1c008cc0:	87ee                	mv	a5,s11
1c008cc2:	42cc87b3          	p.mac	a5,s9,a2
1c008cc6:	fd078c93          	addi	s9,a5,-48
1c008cca:	8c52                	mv	s8,s4
1c008ccc:	b7dd                	j	1c008cb2 <pos_libc_prf+0x1a8>
1c008cce:	42b407b3          	p.mac	a5,s0,a1
1c008cd2:	fd078413          	addi	s0,a5,-48
1c008cd6:	8a3a                	mv	s4,a4
1c008cd8:	8752                	mv	a4,s4
1c008cda:	0017478b          	p.lbu	a5,1(a4!)
1c008cde:	fd078613          	addi	a2,a5,-48
1c008ce2:	fec6f6e3          	bleu	a2,a3,1c008cce <pos_libc_prf+0x1c4>
1c008ce6:	bdd5                	j	1c008bda <pos_libc_prf+0xd0>
1c008ce8:	4401                	li	s0,0
1c008cea:	46a5                	li	a3,9
1c008cec:	45a9                	li	a1,10
1c008cee:	b7ed                	j	1c008cd8 <pos_libc_prf+0x1ce>
1c008cf0:	06800693          	li	a3,104
1c008cf4:	f0d49fe3          	bne	s1,a3,1c008c12 <pos_libc_prf+0x108>
1c008cf8:	f09d9de3          	bne	s11,s1,1c008c12 <pos_libc_prf+0x108>
1c008cfc:	002a0c13          	addi	s8,s4,2
1c008d00:	001a4d83          	lbu	s11,1(s4)
1c008d04:	04800493          	li	s1,72
1c008d08:	b729                	j	1c008c12 <pos_libc_prf+0x108>
1c008d0a:	8c52                	mv	s8,s4
1c008d0c:	4481                	li	s1,0
1c008d0e:	b711                	j	1c008c12 <pos_libc_prf+0x108>
1c008d10:	06300693          	li	a3,99
1c008d14:	12dd8963          	beq	s11,a3,1c008e46 <pos_libc_prf+0x33c>
1c008d18:	09b6e163          	bltu	a3,s11,1c008d9a <pos_libc_prf+0x290>
1c008d1c:	05800693          	li	a3,88
1c008d20:	f0dd9fe3          	bne	s11,a3,1c008c3e <pos_libc_prf+0x134>
1c008d24:	06c00693          	li	a3,108
1c008d28:	6ad48c63          	beq	s1,a3,1c0093e0 <pos_libc_prf+0x8d6>
1c008d2c:	07a00693          	li	a3,122
1c008d30:	6ad48863          	beq	s1,a3,1c0093e0 <pos_libc_prf+0x8d6>
1c008d34:	04c00693          	li	a3,76
1c008d38:	6ad49463          	bne	s1,a3,1c0093e0 <pos_libc_prf+0x8d6>
1c008d3c:	091d                	addi	s2,s2,7
1c008d3e:	c4093933          	p.bclr	s2,s2,2,0
1c008d42:	00092583          	lw	a1,0(s2)
1c008d46:	00492603          	lw	a2,4(s2)
1c008d4a:	00890a13          	addi	s4,s2,8
1c008d4e:	06f00713          	li	a4,111
1c008d52:	00c4                	addi	s1,sp,68
1c008d54:	6aed9663          	bne	s11,a4,1c009400 <pos_libc_prf+0x8f6>
1c008d58:	680a8a63          	beqz	s5,1c0093ec <pos_libc_prf+0x8e2>
1c008d5c:	03000793          	li	a5,48
1c008d60:	04f10223          	sb	a5,68(sp)
1c008d64:	00c5e7b3          	or	a5,a1,a2
1c008d68:	04510513          	addi	a0,sp,69
1c008d6c:	68079163          	bnez	a5,1c0093ee <pos_libc_prf+0x8e4>
1c008d70:	040102a3          	sb	zero,69(sp)
1c008d74:	4901                	li	s2,0
1c008d76:	4d85                	li	s11,1
1c008d78:	a061                	j	1c008e00 <pos_libc_prf+0x2f6>
1c008d7a:	07000693          	li	a3,112
1c008d7e:	62dd8863          	beq	s11,a3,1c0093ae <pos_libc_prf+0x8a4>
1c008d82:	09b6e563          	bltu	a3,s11,1c008e0c <pos_libc_prf+0x302>
1c008d86:	06e00693          	li	a3,110
1c008d8a:	5cdd8d63          	beq	s11,a3,1c009364 <pos_libc_prf+0x85a>
1c008d8e:	f9b6ebe3          	bltu	a3,s11,1c008d24 <pos_libc_prf+0x21a>
1c008d92:	06900693          	li	a3,105
1c008d96:	eadd94e3          	bne	s11,a3,1c008c3e <pos_libc_prf+0x134>
1c008d9a:	06c00793          	li	a5,108
1c008d9e:	18f48463          	beq	s1,a5,1c008f26 <pos_libc_prf+0x41c>
1c008da2:	07a00793          	li	a5,122
1c008da6:	18f48063          	beq	s1,a5,1c008f26 <pos_libc_prf+0x41c>
1c008daa:	04c00793          	li	a5,76
1c008dae:	16f49c63          	bne	s1,a5,1c008f26 <pos_libc_prf+0x41c>
1c008db2:	091d                	addi	s2,s2,7
1c008db4:	c4093933          	p.bclr	s2,s2,2,0
1c008db8:	00092583          	lw	a1,0(s2)
1c008dbc:	00492a83          	lw	s5,4(s2)
1c008dc0:	00890a13          	addi	s4,s2,8
1c008dc4:	04410d93          	addi	s11,sp,68
1c008dc8:	160ad663          	bgez	s5,1c008f34 <pos_libc_prf+0x42a>
1c008dcc:	02d00793          	li	a5,45
1c008dd0:	40b005b3          	neg	a1,a1
1c008dd4:	04f10223          	sb	a5,68(sp)
1c008dd8:	41500633          	neg	a2,s5
1c008ddc:	00b037b3          	snez	a5,a1
1c008de0:	8e1d                	sub	a2,a2,a5
1c008de2:	04510913          	addi	s2,sp,69
1c008de6:	854a                	mv	a0,s2
1c008de8:	46a9                	li	a3,10
1c008dea:	3ee5                	jal	1c0089e2 <_to_x>
1c008dec:	47b2                	lw	a5,12(sp)
1c008dee:	954a                	add	a0,a0,s2
1c008df0:	41b50db3          	sub	s11,a0,s11
1c008df4:	4905                	li	s2,1
1c008df6:	e789                	bnez	a5,1c008e00 <pos_libc_prf+0x2f6>
1c008df8:	4742                	lw	a4,16(sp)
1c008dfa:	e319                	bnez	a4,1c008e00 <pos_libc_prf+0x2f6>
1c008dfc:	01fad913          	srli	s2,s5,0x1f
1c008e00:	04045c63          	bgez	s0,1c008e58 <pos_libc_prf+0x34e>
1c008e04:	4401                	li	s0,0
1c008e06:	4a81                	li	s5,0
1c008e08:	4681                	li	a3,0
1c008e0a:	a401                	j	1c00900a <pos_libc_prf+0x500>
1c008e0c:	07500693          	li	a3,117
1c008e10:	f0dd8ae3          	beq	s11,a3,1c008d24 <pos_libc_prf+0x21a>
1c008e14:	07800693          	li	a3,120
1c008e18:	f0dd86e3          	beq	s11,a3,1c008d24 <pos_libc_prf+0x21a>
1c008e1c:	07300713          	li	a4,115
1c008e20:	e0ed9fe3          	bne	s11,a4,1c008c3e <pos_libc_prf+0x134>
1c008e24:	00490a13          	addi	s4,s2,4
1c008e28:	00092783          	lw	a5,0(s2)
1c008e2c:	00045663          	bgez	s0,1c008e38 <pos_libc_prf+0x32e>
1c008e30:	80000737          	lui	a4,0x80000
1c008e34:	fff74413          	not	s0,a4
1c008e38:	86be                	mv	a3,a5
1c008e3a:	4d81                	li	s11,0
1c008e3c:	59b41c63          	bne	s0,s11,1c0093d4 <pos_libc_prf+0x8ca>
1c008e40:	4901                	li	s2,0
1c008e42:	4401                	li	s0,0
1c008e44:	a819                	j	1c008e5a <pos_libc_prf+0x350>
1c008e46:	00092783          	lw	a5,0(s2)
1c008e4a:	00490a13          	addi	s4,s2,4
1c008e4e:	04f10223          	sb	a5,68(sp)
1c008e52:	4901                	li	s2,0
1c008e54:	4d85                	li	s11,1
1c008e56:	4401                	li	s0,0
1c008e58:	00dc                	addi	a5,sp,68
1c008e5a:	41b40d33          	sub	s10,s0,s11
1c008e5e:	9d4a                	add	s10,s10,s2
1c008e60:	4401                	li	s0,0
1c008e62:	4a81                	li	s5,0
1c008e64:	4681                	li	a3,0
1c008e66:	040d6d33          	p.max	s10,s10,zero
1c008e6a:	4762                	lw	a4,24(sp)
1c008e6c:	01bd0633          	add	a2,s10,s11
1c008e70:	40cc8cb3          	sub	s9,s9,a2
1c008e74:	e701                	bnez	a4,1c008e7c <pos_libc_prf+0x372>
1c008e76:	84e6                	mv	s1,s9
1c008e78:	61904c63          	bgtz	s9,1c009490 <pos_libc_prf+0x986>
1c008e7c:	012784b3          	add	s1,a5,s2
1c008e80:	60979e63          	bne	a5,s1,1c00949c <pos_libc_prf+0x992>
1c008e84:	84ea                	mv	s1,s10
1c008e86:	14fd                	addi	s1,s1,-1
1c008e88:	63f4b663          	p.bneimm	s1,-1,1c0094b4 <pos_libc_prf+0x9aa>
1c008e8c:	412d84b3          	sub	s1,s11,s2
1c008e90:	8726                	mv	a4,s1
1c008e92:	c295                	beqz	a3,1c008eb6 <pos_libc_prf+0x3ac>
1c008e94:	0007c503          	lbu	a0,0(a5)
1c008e98:	8dbe                	mv	s11,a5
1c008e9a:	00978833          	add	a6,a5,s1
1c008e9e:	4625                	li	a2,9
1c008ea0:	fd050593          	addi	a1,a0,-48
1c008ea4:	41b80733          	sub	a4,a6,s11
1c008ea8:	62b67263          	bleu	a1,a2,1c0094cc <pos_libc_prf+0x9c2>
1c008eac:	8636                	mv	a2,a3
1c008eae:	62061d63          	bnez	a2,1c0094e8 <pos_libc_prf+0x9de>
1c008eb2:	8f15                	sub	a4,a4,a3
1c008eb4:	87ee                	mv	a5,s11
1c008eb6:	020a8e63          	beqz	s5,1c008ef2 <pos_libc_prf+0x3e8>
1c008eba:	8dbe                	mv	s11,a5
1c008ebc:	00e78833          	add	a6,a5,a4
1c008ec0:	02e00613          	li	a2,46
1c008ec4:	001dc68b          	p.lbu	a3,1(s11!)
1c008ec8:	85de                	mv	a1,s7
1c008eca:	8536                	mv	a0,a3
1c008ecc:	c232                	sw	a2,4(sp)
1c008ece:	c036                	sw	a3,0(sp)
1c008ed0:	c442                	sw	a6,8(sp)
1c008ed2:	9b02                	jalr	s6
1c008ed4:	4612                	lw	a2,4(sp)
1c008ed6:	4682                	lw	a3,0(sp)
1c008ed8:	4822                	lw	a6,8(sp)
1c008eda:	c7f527e3          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c008ede:	41b80733          	sub	a4,a6,s11
1c008ee2:	fec691e3          	bne	a3,a2,1c008ec4 <pos_libc_prf+0x3ba>
1c008ee6:	86d6                	mv	a3,s5
1c008ee8:	60d04f63          	bgtz	a3,1c009506 <pos_libc_prf+0x9fc>
1c008eec:	41570733          	sub	a4,a4,s5
1c008ef0:	87ee                	mv	a5,s11
1c008ef2:	c415                	beqz	s0,1c008f1e <pos_libc_prf+0x414>
1c008ef4:	0007c503          	lbu	a0,0(a5)
1c008ef8:	8dbe                	mv	s11,a5
1c008efa:	973e                	add	a4,a4,a5
1c008efc:	4625                	li	a2,9
1c008efe:	02e00693          	li	a3,46
1c008f02:	fd050593          	addi	a1,a0,-48
1c008f06:	41b70ab3          	sub	s5,a4,s11
1c008f0a:	60b67b63          	bleu	a1,a2,1c009520 <pos_libc_prf+0xa16>
1c008f0e:	60d50963          	beq	a0,a3,1c009520 <pos_libc_prf+0xa16>
1c008f12:	8722                	mv	a4,s0
1c008f14:	62e04463          	bgtz	a4,1c00953c <pos_libc_prf+0xa32>
1c008f18:	408a8733          	sub	a4,s5,s0
1c008f1c:	87ee                	mv	a5,s11
1c008f1e:	843e                	mv	s0,a5
1c008f20:	00e78ab3          	add	s5,a5,a4
1c008f24:	ad2d                	j	1c00955e <pos_libc_prf+0xa54>
1c008f26:	00092583          	lw	a1,0(s2)
1c008f2a:	00490a13          	addi	s4,s2,4
1c008f2e:	41f5da93          	srai	s5,a1,0x1f
1c008f32:	bd49                	j	1c008dc4 <pos_libc_prf+0x2ba>
1c008f34:	47b2                	lw	a5,12(sp)
1c008f36:	c799                	beqz	a5,1c008f44 <pos_libc_prf+0x43a>
1c008f38:	02b00793          	li	a5,43
1c008f3c:	04f10223          	sb	a5,68(sp)
1c008f40:	8656                	mv	a2,s5
1c008f42:	b545                	j	1c008de2 <pos_libc_prf+0x2d8>
1c008f44:	4742                	lw	a4,16(sp)
1c008f46:	c701                	beqz	a4,1c008f4e <pos_libc_prf+0x444>
1c008f48:	02000793          	li	a5,32
1c008f4c:	bfc5                	j	1c008f3c <pos_libc_prf+0x432>
1c008f4e:	8656                	mv	a2,s5
1c008f50:	896e                	mv	s2,s11
1c008f52:	bd51                	j	1c008de6 <pos_libc_prf+0x2dc>
1c008f54:	091d                	addi	s2,s2,7
1c008f56:	c4093933          	p.bclr	s2,s2,2,0
1c008f5a:	00092583          	lw	a1,0(s2)
1c008f5e:	00492683          	lw	a3,4(s2)
1c008f62:	0155d613          	srli	a2,a1,0x15
1c008f66:	00b69713          	slli	a4,a3,0xb
1c008f6a:	800007b7          	lui	a5,0x80000
1c008f6e:	8f51                	or	a4,a4,a2
1c008f70:	fff7c793          	not	a5,a5
1c008f74:	05ae                	slli	a1,a1,0xb
1c008f76:	8f7d                	and	a4,a4,a5
1c008f78:	00890a13          	addi	s4,s2,8
1c008f7c:	d82e                	sw	a1,48(sp)
1c008f7e:	0146d913          	srli	s2,a3,0x14
1c008f82:	da3a                	sw	a4,52(sp)
1c008f84:	e8b93933          	p.bclr	s2,s2,20,11
1c008f88:	0806d863          	bgez	a3,1c009018 <pos_libc_prf+0x50e>
1c008f8c:	02d00693          	li	a3,45
1c008f90:	04d10223          	sb	a3,68(sp)
1c008f94:	04510493          	addi	s1,sp,69
1c008f98:	7ff00693          	li	a3,2047
1c008f9c:	0cd91363          	bne	s2,a3,1c009062 <pos_libc_prf+0x558>
1c008fa0:	8f4d                	or	a4,a4,a1
1c008fa2:	fbfd8793          	addi	a5,s11,-65
1c008fa6:	00348513          	addi	a0,s1,3
1c008faa:	eb49                	bnez	a4,1c00903c <pos_libc_prf+0x532>
1c008fac:	4765                	li	a4,25
1c008fae:	06f76f63          	bltu	a4,a5,1c00902c <pos_libc_prf+0x522>
1c008fb2:	6795                	lui	a5,0x5
1c008fb4:	e4978793          	addi	a5,a5,-439 # 4e49 <pos_soc_event_callback+0x4a01>
1c008fb8:	00f49023          	sh	a5,0(s1)
1c008fbc:	04600793          	li	a5,70
1c008fc0:	04410913          	addi	s2,sp,68
1c008fc4:	00f48123          	sb	a5,2(s1)
1c008fc8:	000481a3          	sb	zero,3(s1)
1c008fcc:	41250533          	sub	a0,a0,s2
1c008fd0:	4401                	li	s0,0
1c008fd2:	4a81                	li	s5,0
1c008fd4:	4681                	li	a3,0
1c008fd6:	4732                	lw	a4,12(sp)
1c008fd8:	4905                	li	s2,1
1c008fda:	eb09                	bnez	a4,1c008fec <pos_libc_prf+0x4e2>
1c008fdc:	47c2                	lw	a5,16(sp)
1c008fde:	e799                	bnez	a5,1c008fec <pos_libc_prf+0x4e2>
1c008fe0:	04414903          	lbu	s2,68(sp)
1c008fe4:	fd390913          	addi	s2,s2,-45
1c008fe8:	00193913          	seqz	s2,s2
1c008fec:	1098                	addi	a4,sp,96
1c008fee:	012707b3          	add	a5,a4,s2
1c008ff2:	fe47c783          	lbu	a5,-28(a5)
1c008ff6:	015684b3          	add	s1,a3,s5
1c008ffa:	94a2                	add	s1,s1,s0
1c008ffc:	fd078793          	addi	a5,a5,-48
1c009000:	4625                	li	a2,9
1c009002:	00a48db3          	add	s11,s1,a0
1c009006:	46f66863          	bltu	a2,a5,1c009476 <pos_libc_prf+0x96c>
1c00900a:	47f2                	lw	a5,28(sp)
1c00900c:	46078563          	beqz	a5,1c009476 <pos_libc_prf+0x96c>
1c009010:	41bc8d33          	sub	s10,s9,s11
1c009014:	00dc                	addi	a5,sp,68
1c009016:	bd81                	j	1c008e66 <pos_libc_prf+0x35c>
1c009018:	47b2                	lw	a5,12(sp)
1c00901a:	02b00693          	li	a3,43
1c00901e:	fbad                	bnez	a5,1c008f90 <pos_libc_prf+0x486>
1c009020:	47c2                	lw	a5,16(sp)
1c009022:	00c4                	addi	s1,sp,68
1c009024:	dbb5                	beqz	a5,1c008f98 <pos_libc_prf+0x48e>
1c009026:	02000693          	li	a3,32
1c00902a:	b79d                	j	1c008f90 <pos_libc_prf+0x486>
1c00902c:	679d                	lui	a5,0x7
1c00902e:	e6978793          	addi	a5,a5,-407 # 6e69 <pos_soc_event_callback+0x6a21>
1c009032:	00f49023          	sh	a5,0(s1)
1c009036:	06600793          	li	a5,102
1c00903a:	b759                	j	1c008fc0 <pos_libc_prf+0x4b6>
1c00903c:	4765                	li	a4,25
1c00903e:	00f76a63          	bltu	a4,a5,1c009052 <pos_libc_prf+0x548>
1c009042:	6791                	lui	a5,0x4
1c009044:	14e78793          	addi	a5,a5,334 # 414e <pos_soc_event_callback+0x3d06>
1c009048:	00f49023          	sh	a5,0(s1)
1c00904c:	04e00793          	li	a5,78
1c009050:	bf85                	j	1c008fc0 <pos_libc_prf+0x4b6>
1c009052:	6799                	lui	a5,0x6
1c009054:	16e78793          	addi	a5,a5,366 # 616e <pos_soc_event_callback+0x5d26>
1c009058:	00f49023          	sh	a5,0(s1)
1c00905c:	06e00793          	li	a5,110
1c009060:	b785                	j	1c008fc0 <pos_libc_prf+0x4b6>
1c009062:	04600693          	li	a3,70
1c009066:	00dd9463          	bne	s11,a3,1c00906e <pos_libc_prf+0x564>
1c00906a:	06600d93          	li	s11,102
1c00906e:	41f95613          	srai	a2,s2,0x1f
1c009072:	00b966b3          	or	a3,s2,a1
1c009076:	8e59                	or	a2,a2,a4
1c009078:	8ed1                	or	a3,a3,a2
1c00907a:	1a068c63          	beqz	a3,1c009232 <pos_libc_prf+0x728>
1c00907e:	10090963          	beqz	s2,1c009190 <pos_libc_prf+0x686>
1c009082:	5752                	lw	a4,52(sp)
1c009084:	800007b7          	lui	a5,0x80000
1c009088:	8f5d                	or	a4,a4,a5
1c00908a:	c0290913          	addi	s2,s2,-1022
1c00908e:	da3a                	sw	a4,52(sp)
1c009090:	4d01                	li	s10,0
1c009092:	5779                	li	a4,-2
1c009094:	10e94a63          	blt	s2,a4,1c0091a8 <pos_libc_prf+0x69e>
1c009098:	17204163          	bgtz	s2,1c0091fa <pos_libc_prf+0x6f0>
1c00909c:	1808                	addi	a0,sp,48
1c00909e:	0905                	addi	s2,s2,1
1c0090a0:	3ac9                	jal	1c008a72 <_rlrshift>
1c0090a2:	fe493de3          	p.bneimm	s2,4,1c00909c <pos_libc_prf+0x592>
1c0090a6:	00045363          	bgez	s0,1c0090ac <pos_libc_prf+0x5a2>
1c0090aa:	4419                	li	s0,6
1c0090ac:	0dfdf713          	andi	a4,s11,223
1c0090b0:	04700693          	li	a3,71
1c0090b4:	ca02                	sw	zero,20(sp)
1c0090b6:	02d71563          	bne	a4,a3,1c0090e0 <pos_libc_prf+0x5d6>
1c0090ba:	5775                	li	a4,-3
1c0090bc:	00ed4463          	blt	s10,a4,1c0090c4 <pos_libc_prf+0x5ba>
1c0090c0:	17a45c63          	ble	s10,s0,1c009238 <pos_libc_prf+0x72e>
1c0090c4:	ffed8793          	addi	a5,s11,-2
1c0090c8:	0ff7fd93          	andi	s11,a5,255
1c0090cc:	4c040963          	beqz	s0,1c00959e <pos_libc_prf+0xa94>
1c0090d0:	147d                	addi	s0,s0,-1
1c0090d2:	4c0a9663          	bnez	s5,1c00959e <pos_libc_prf+0xa94>
1c0090d6:	00802933          	sgtz	s2,s0
1c0090da:	0ff97913          	andi	s2,s2,255
1c0090de:	ca4a                	sw	s2,20(sp)
1c0090e0:	06600713          	li	a4,102
1c0090e4:	4aed9e63          	bne	s11,a4,1c0095a0 <pos_libc_prf+0xa96>
1c0090e8:	008d0733          	add	a4,s10,s0
1c0090ec:	06600d93          	li	s11,102
1c0090f0:	4a075a63          	bgez	a4,1c0095a4 <pos_libc_prf+0xa9a>
1c0090f4:	4741                	li	a4,16
1c0090f6:	d63a                	sw	a4,44(sp)
1c0090f8:	4901                	li	s2,0
1c0090fa:	4601                	li	a2,0
1c0090fc:	080006b7          	lui	a3,0x8000
1c009100:	dc32                	sw	a2,56(sp)
1c009102:	de36                	sw	a3,60(sp)
1c009104:	197d                	addi	s2,s2,-1
1c009106:	15f93063          	p.bneimm	s2,-1,1c009246 <pos_libc_prf+0x73c>
1c00910a:	5742                	lw	a4,48(sp)
1c00910c:	56e2                	lw	a3,56(sp)
1c00910e:	5652                	lw	a2,52(sp)
1c009110:	55f2                	lw	a1,60(sp)
1c009112:	96ba                	add	a3,a3,a4
1c009114:	00e6b733          	sltu	a4,a3,a4
1c009118:	962e                	add	a2,a2,a1
1c00911a:	9732                	add	a4,a4,a2
1c00911c:	da3a                	sw	a4,52(sp)
1c00911e:	d836                	sw	a3,48(sp)
1c009120:	f6073733          	p.bclr	a4,a4,27,0
1c009124:	c711                	beqz	a4,1c009130 <pos_libc_prf+0x626>
1c009126:	1808                	addi	a0,sp,48
1c009128:	32ad                	jal	1c008a92 <_ldiv5>
1c00912a:	1808                	addi	a0,sp,48
1c00912c:	3299                	jal	1c008a72 <_rlrshift>
1c00912e:	0d05                	addi	s10,s10,1
1c009130:	06600713          	li	a4,102
1c009134:	14ed9e63          	bne	s11,a4,1c009290 <pos_libc_prf+0x786>
1c009138:	8926                	mv	s2,s1
1c00913a:	13a04663          	bgtz	s10,1c009266 <pos_libc_prf+0x75c>
1c00913e:	03000713          	li	a4,48
1c009142:	00e48023          	sb	a4,0(s1)
1c009146:	00148913          	addi	s2,s1,1
1c00914a:	4681                	li	a3,0
1c00914c:	120a8463          	beqz	s5,1c009274 <pos_libc_prf+0x76a>
1c009150:	02e00593          	li	a1,46
1c009154:	00b90023          	sb	a1,0(s2)
1c009158:	00190713          	addi	a4,s2,1
1c00915c:	420d0f63          	beqz	s10,1c00959a <pos_libc_prf+0xa90>
1c009160:	12805563          	blez	s0,1c00928a <pos_libc_prf+0x780>
1c009164:	41a00ab3          	neg	s5,s10
1c009168:	048acab3          	p.min	s5,s5,s0
1c00916c:	41540433          	sub	s0,s0,s5
1c009170:	893a                	mv	s2,a4
1c009172:	10805463          	blez	s0,1c00927a <pos_libc_prf+0x770>
1c009176:	5732                	lw	a4,44(sp)
1c009178:	10e05163          	blez	a4,1c00927a <pos_libc_prf+0x770>
1c00917c:	106c                	addi	a1,sp,44
1c00917e:	1808                	addi	a0,sp,48
1c009180:	c036                	sw	a3,0(sp)
1c009182:	3a91                	jal	1c008ad6 <_get_digit>
1c009184:	00a900ab          	p.sb	a0,1(s2!)
1c009188:	147d                	addi	s0,s0,-1
1c00918a:	4682                	lw	a3,0(sp)
1c00918c:	b7dd                	j	1c009172 <pos_libc_prf+0x668>
1c00918e:	197d                	addi	s2,s2,-1
1c009190:	01f5d693          	srli	a3,a1,0x1f
1c009194:	0706                	slli	a4,a4,0x1
1c009196:	8f55                	or	a4,a4,a3
1c009198:	0586                	slli	a1,a1,0x1
1c00919a:	fe075ae3          	bgez	a4,1c00918e <pos_libc_prf+0x684>
1c00919e:	d82e                	sw	a1,48(sp)
1c0091a0:	da3a                	sw	a4,52(sp)
1c0091a2:	b5c5                	j	1c009082 <pos_libc_prf+0x578>
1c0091a4:	1808                	addi	a0,sp,48
1c0091a6:	30f1                	jal	1c008a72 <_rlrshift>
1c0091a8:	33333737          	lui	a4,0x33333
1c0091ac:	55d2                	lw	a1,52(sp)
1c0091ae:	33270713          	addi	a4,a4,818 # 33333332 <__l2_shared_end+0x1732318a>
1c0091b2:	5642                	lw	a2,48(sp)
1c0091b4:	0905                	addi	s2,s2,1
1c0091b6:	feb767e3          	bltu	a4,a1,1c0091a4 <pos_libc_prf+0x69a>
1c0091ba:	4695                	li	a3,5
1c0091bc:	02c6b733          	mulhu	a4,a3,a2
1c0091c0:	42b68733          	p.mac	a4,a3,a1
1c0091c4:	02c68633          	mul	a2,a3,a2
1c0091c8:	d832                	sw	a2,48(sp)
1c0091ca:	da3a                	sw	a4,52(sp)
1c0091cc:	1d7d                	addi	s10,s10,-1
1c0091ce:	4681                	li	a3,0
1c0091d0:	800007b7          	lui	a5,0x80000
1c0091d4:	fff7c793          	not	a5,a5
1c0091d8:	00e7f763          	bleu	a4,a5,1c0091e6 <pos_libc_prf+0x6dc>
1c0091dc:	ea068be3          	beqz	a3,1c009092 <pos_libc_prf+0x588>
1c0091e0:	d832                	sw	a2,48(sp)
1c0091e2:	da3a                	sw	a4,52(sp)
1c0091e4:	b57d                	j	1c009092 <pos_libc_prf+0x588>
1c0091e6:	01f65593          	srli	a1,a2,0x1f
1c0091ea:	00171693          	slli	a3,a4,0x1
1c0091ee:	00d5e733          	or	a4,a1,a3
1c0091f2:	0606                	slli	a2,a2,0x1
1c0091f4:	197d                	addi	s2,s2,-1
1c0091f6:	4685                	li	a3,1
1c0091f8:	bfe1                	j	1c0091d0 <pos_libc_prf+0x6c6>
1c0091fa:	1808                	addi	a0,sp,48
1c0091fc:	3859                	jal	1c008a92 <_ldiv5>
1c0091fe:	5642                	lw	a2,48(sp)
1c009200:	5752                	lw	a4,52(sp)
1c009202:	197d                	addi	s2,s2,-1
1c009204:	0d05                	addi	s10,s10,1
1c009206:	4681                	li	a3,0
1c009208:	800007b7          	lui	a5,0x80000
1c00920c:	fff7c793          	not	a5,a5
1c009210:	00e7f763          	bleu	a4,a5,1c00921e <pos_libc_prf+0x714>
1c009214:	e80682e3          	beqz	a3,1c009098 <pos_libc_prf+0x58e>
1c009218:	d832                	sw	a2,48(sp)
1c00921a:	da3a                	sw	a4,52(sp)
1c00921c:	bdb5                	j	1c009098 <pos_libc_prf+0x58e>
1c00921e:	01f65593          	srli	a1,a2,0x1f
1c009222:	00171693          	slli	a3,a4,0x1
1c009226:	00d5e733          	or	a4,a1,a3
1c00922a:	0606                	slli	a2,a2,0x1
1c00922c:	197d                	addi	s2,s2,-1
1c00922e:	4685                	li	a3,1
1c009230:	bfe1                	j	1c009208 <pos_libc_prf+0x6fe>
1c009232:	4d01                	li	s10,0
1c009234:	4901                	li	s2,0
1c009236:	b59d                	j	1c00909c <pos_libc_prf+0x592>
1c009238:	41a40433          	sub	s0,s0,s10
1c00923c:	ea0a96e3          	bnez	s5,1c0090e8 <pos_libc_prf+0x5de>
1c009240:	06600d93          	li	s11,102
1c009244:	bd49                	j	1c0090d6 <pos_libc_prf+0x5cc>
1c009246:	1828                	addi	a0,sp,56
1c009248:	84bff0ef          	jal	ra,1c008a92 <_ldiv5>
1c00924c:	1828                	addi	a0,sp,56
1c00924e:	825ff0ef          	jal	ra,1c008a72 <_rlrshift>
1c009252:	bd4d                	j	1c009104 <pos_libc_prf+0x5fa>
1c009254:	106c                	addi	a1,sp,44
1c009256:	1808                	addi	a0,sp,48
1c009258:	87fff0ef          	jal	ra,1c008ad6 <_get_digit>
1c00925c:	00a900ab          	p.sb	a0,1(s2!)
1c009260:	1d7d                	addi	s10,s10,-1
1c009262:	000d0563          	beqz	s10,1c00926c <pos_libc_prf+0x762>
1c009266:	5732                	lw	a4,44(sp)
1c009268:	fee046e3          	bgtz	a4,1c009254 <pos_libc_prf+0x74a>
1c00926c:	300a9f63          	bnez	s5,1c00958a <pos_libc_prf+0xa80>
1c009270:	86ea                	mv	a3,s10
1c009272:	4d01                	li	s10,0
1c009274:	4a81                	li	s5,0
1c009276:	ec804de3          	bgtz	s0,1c009150 <pos_libc_prf+0x646>
1c00927a:	4752                	lw	a4,20(sp)
1c00927c:	eb31                	bnez	a4,1c0092d0 <pos_libc_prf+0x7c6>
1c00927e:	00c8                	addi	a0,sp,68
1c009280:	00090023          	sb	zero,0(s2)
1c009284:	40a90533          	sub	a0,s2,a0
1c009288:	b3b9                	j	1c008fd6 <pos_libc_prf+0x4cc>
1c00928a:	893a                	mv	s2,a4
1c00928c:	4a81                	li	s5,0
1c00928e:	b7f5                	j	1c00927a <pos_libc_prf+0x770>
1c009290:	106c                	addi	a1,sp,44
1c009292:	1808                	addi	a0,sp,48
1c009294:	843ff0ef          	jal	ra,1c008ad6 <_get_digit>
1c009298:	00a48023          	sb	a0,0(s1)
1c00929c:	03000713          	li	a4,48
1c0092a0:	00e50363          	beq	a0,a4,1c0092a6 <pos_libc_prf+0x79c>
1c0092a4:	1d7d                	addi	s10,s10,-1
1c0092a6:	000a9663          	bnez	s5,1c0092b2 <pos_libc_prf+0x7a8>
1c0092aa:	00148913          	addi	s2,s1,1
1c0092ae:	00805d63          	blez	s0,1c0092c8 <pos_libc_prf+0x7be>
1c0092b2:	02e00713          	li	a4,46
1c0092b6:	00248913          	addi	s2,s1,2
1c0092ba:	00e480a3          	sb	a4,1(s1)
1c0092be:	00805563          	blez	s0,1c0092c8 <pos_libc_prf+0x7be>
1c0092c2:	5732                	lw	a4,44(sp)
1c0092c4:	08e04663          	bgtz	a4,1c009350 <pos_libc_prf+0x846>
1c0092c8:	47d2                	lw	a5,20(sp)
1c0092ca:	4a81                	li	s5,0
1c0092cc:	4681                	li	a3,0
1c0092ce:	cf99                	beqz	a5,1c0092ec <pos_libc_prf+0x7e2>
1c0092d0:	03000513          	li	a0,48
1c0092d4:	fff90713          	addi	a4,s2,-1
1c0092d8:	00074583          	lbu	a1,0(a4)
1c0092dc:	08a58263          	beq	a1,a0,1c009360 <pos_libc_prf+0x856>
1c0092e0:	02e00513          	li	a0,46
1c0092e4:	4401                	li	s0,0
1c0092e6:	00a59363          	bne	a1,a0,1c0092ec <pos_libc_prf+0x7e2>
1c0092ea:	893a                	mv	s2,a4
1c0092ec:	0dfdf713          	andi	a4,s11,223
1c0092f0:	04500593          	li	a1,69
1c0092f4:	f8b715e3          	bne	a4,a1,1c00927e <pos_libc_prf+0x774>
1c0092f8:	85ca                	mv	a1,s2
1c0092fa:	01b5812b          	p.sb	s11,2(a1!) # 1a100002 <__l1_end+0xa0fffde>
1c0092fe:	02b00793          	li	a5,43
1c009302:	000d5663          	bgez	s10,1c00930e <pos_libc_prf+0x804>
1c009306:	41a00d33          	neg	s10,s10
1c00930a:	02d00793          	li	a5,45
1c00930e:	00f900a3          	sb	a5,1(s2)
1c009312:	06300793          	li	a5,99
1c009316:	01a7de63          	ble	s10,a5,1c009332 <pos_libc_prf+0x828>
1c00931a:	06400713          	li	a4,100
1c00931e:	02ed47b3          	div	a5,s10,a4
1c009322:	02ed6d33          	rem	s10,s10,a4
1c009326:	03078793          	addi	a5,a5,48 # 80000030 <pulp__FC+0x80000031>
1c00932a:	00390593          	addi	a1,s2,3
1c00932e:	00f90123          	sb	a5,2(s2)
1c009332:	47a9                	li	a5,10
1c009334:	02fd4733          	div	a4,s10,a5
1c009338:	02fd68b3          	rem	a7,s10,a5
1c00933c:	03070713          	addi	a4,a4,48
1c009340:	892e                	mv	s2,a1
1c009342:	00e9012b          	p.sb	a4,2(s2!)
1c009346:	03088893          	addi	a7,a7,48
1c00934a:	011580a3          	sb	a7,1(a1)
1c00934e:	bf05                	j	1c00927e <pos_libc_prf+0x774>
1c009350:	106c                	addi	a1,sp,44
1c009352:	1808                	addi	a0,sp,48
1c009354:	f82ff0ef          	jal	ra,1c008ad6 <_get_digit>
1c009358:	00a900ab          	p.sb	a0,1(s2!)
1c00935c:	147d                	addi	s0,s0,-1
1c00935e:	b785                	j	1c0092be <pos_libc_prf+0x7b4>
1c009360:	893a                	mv	s2,a4
1c009362:	bf8d                	j	1c0092d4 <pos_libc_prf+0x7ca>
1c009364:	8a4a                	mv	s4,s2
1c009366:	04c00693          	li	a3,76
1c00936a:	004a278b          	p.lw	a5,4(s4!)
1c00936e:	02d48a63          	beq	s1,a3,1c0093a2 <pos_libc_prf+0x898>
1c009372:	0096c963          	blt	a3,s1,1c009384 <pos_libc_prf+0x87a>
1c009376:	04800693          	li	a3,72
1c00937a:	02d48063          	beq	s1,a3,1c00939a <pos_libc_prf+0x890>
1c00937e:	0137a023          	sw	s3,0(a5)
1c009382:	a801                	j	1c009392 <pos_libc_prf+0x888>
1c009384:	06800693          	li	a3,104
1c009388:	fed49be3          	bne	s1,a3,1c00937e <pos_libc_prf+0x874>
1c00938c:	874e                	mv	a4,s3
1c00938e:	00e79023          	sh	a4,0(a5)
1c009392:	8952                	mv	s2,s4
1c009394:	8662                	mv	a2,s8
1c009396:	f98ff06f          	j	1c008b2e <pos_libc_prf+0x24>
1c00939a:	874e                	mv	a4,s3
1c00939c:	00e78023          	sb	a4,0(a5)
1c0093a0:	bfcd                	j	1c009392 <pos_libc_prf+0x888>
1c0093a2:	41f9d713          	srai	a4,s3,0x1f
1c0093a6:	0137a023          	sw	s3,0(a5)
1c0093aa:	c3d8                	sw	a4,4(a5)
1c0093ac:	b7dd                	j	1c009392 <pos_libc_prf+0x888>
1c0093ae:	00092583          	lw	a1,0(s2)
1c0093b2:	77e1                	lui	a5,0xffff8
1c0093b4:	8307c793          	xori	a5,a5,-2000
1c0093b8:	46c1                	li	a3,16
1c0093ba:	4601                	li	a2,0
1c0093bc:	04610513          	addi	a0,sp,70
1c0093c0:	04f11223          	sh	a5,68(sp)
1c0093c4:	e1eff0ef          	jal	ra,1c0089e2 <_to_x>
1c0093c8:	00490a13          	addi	s4,s2,4
1c0093cc:	00250d93          	addi	s11,a0,2
1c0093d0:	4909                	li	s2,2
1c0093d2:	b43d                	j	1c008e00 <pos_libc_prf+0x2f6>
1c0093d4:	0016c60b          	p.lbu	a2,1(a3!) # 8000001 <__l1_heap_size+0x7ff0025>
1c0093d8:	a60604e3          	beqz	a2,1c008e40 <pos_libc_prf+0x336>
1c0093dc:	0d85                	addi	s11,s11,1
1c0093de:	bcb9                	j	1c008e3c <pos_libc_prf+0x332>
1c0093e0:	00490a13          	addi	s4,s2,4
1c0093e4:	00092583          	lw	a1,0(s2)
1c0093e8:	4601                	li	a2,0
1c0093ea:	b295                	j	1c008d4e <pos_libc_prf+0x244>
1c0093ec:	8526                	mv	a0,s1
1c0093ee:	46a1                	li	a3,8
1c0093f0:	409504b3          	sub	s1,a0,s1
1c0093f4:	deeff0ef          	jal	ra,1c0089e2 <_to_x>
1c0093f8:	00a48db3          	add	s11,s1,a0
1c0093fc:	4901                	li	s2,0
1c0093fe:	b409                	j	1c008e00 <pos_libc_prf+0x2f6>
1c009400:	07500713          	li	a4,117
1c009404:	00ed9863          	bne	s11,a4,1c009414 <pos_libc_prf+0x90a>
1c009408:	46a9                	li	a3,10
1c00940a:	8526                	mv	a0,s1
1c00940c:	dd6ff0ef          	jal	ra,1c0089e2 <_to_x>
1c009410:	8daa                	mv	s11,a0
1c009412:	b7ed                	j	1c0093fc <pos_libc_prf+0x8f2>
1c009414:	8d26                	mv	s10,s1
1c009416:	000a8963          	beqz	s5,1c009428 <pos_libc_prf+0x91e>
1c00941a:	7761                	lui	a4,0xffff8
1c00941c:	83074713          	xori	a4,a4,-2000
1c009420:	04e11223          	sh	a4,68(sp)
1c009424:	04610d13          	addi	s10,sp,70
1c009428:	46c1                	li	a3,16
1c00942a:	856a                	mv	a0,s10
1c00942c:	db6ff0ef          	jal	ra,1c0089e2 <_to_x>
1c009430:	05800713          	li	a4,88
1c009434:	02ed9263          	bne	s11,a4,1c009458 <pos_libc_prf+0x94e>
1c009438:	87a6                	mv	a5,s1
1c00943a:	45e5                	li	a1,25
1c00943c:	0017c68b          	p.lbu	a3,1(a5!) # ffff8001 <pulp__FC+0xffff8002>
1c009440:	f9f68613          	addi	a2,a3,-97
1c009444:	0ff67613          	andi	a2,a2,255
1c009448:	00c5e563          	bltu	a1,a2,1c009452 <pos_libc_prf+0x948>
1c00944c:	1681                	addi	a3,a3,-32
1c00944e:	fed78fa3          	sb	a3,-1(a5)
1c009452:	fff7c703          	lbu	a4,-1(a5)
1c009456:	f37d                	bnez	a4,1c00943c <pos_libc_prf+0x932>
1c009458:	409d0733          	sub	a4,s10,s1
1c00945c:	00a70db3          	add	s11,a4,a0
1c009460:	001a9913          	slli	s2,s5,0x1
1c009464:	ba71                	j	1c008e00 <pos_libc_prf+0x2f6>
1c009466:	85de                	mv	a1,s7
1c009468:	02500513          	li	a0,37
1c00946c:	ed6ff06f          	j	1c008b42 <pos_libc_prf+0x38>
1c009470:	0985                	addi	s3,s3,1
1c009472:	8a4a                	mv	s4,s2
1c009474:	bf39                	j	1c009392 <pos_libc_prf+0x888>
1c009476:	00dc                	addi	a5,sp,68
1c009478:	4d01                	li	s10,0
1c00947a:	bac5                	j	1c008e6a <pos_libc_prf+0x360>
1c00947c:	85de                	mv	a1,s7
1c00947e:	02000513          	li	a0,32
1c009482:	c036                	sw	a3,0(sp)
1c009484:	c43e                	sw	a5,8(sp)
1c009486:	9b02                	jalr	s6
1c009488:	4682                	lw	a3,0(sp)
1c00948a:	47a2                	lw	a5,8(sp)
1c00948c:	ebf52e63          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c009490:	14fd                	addi	s1,s1,-1
1c009492:	fff4b5e3          	p.bneimm	s1,-1,1c00947c <pos_libc_prf+0x972>
1c009496:	99e6                	add	s3,s3,s9
1c009498:	5cfd                	li	s9,-1
1c00949a:	b2cd                	j	1c008e7c <pos_libc_prf+0x372>
1c00949c:	0017c50b          	p.lbu	a0,1(a5!)
1c0094a0:	85de                	mv	a1,s7
1c0094a2:	c036                	sw	a3,0(sp)
1c0094a4:	c43e                	sw	a5,8(sp)
1c0094a6:	9b02                	jalr	s6
1c0094a8:	4682                	lw	a3,0(sp)
1c0094aa:	47a2                	lw	a5,8(sp)
1c0094ac:	9df53ae3          	p.bneimm	a0,-1,1c008e80 <pos_libc_prf+0x376>
1c0094b0:	e98ff06f          	j	1c008b48 <pos_libc_prf+0x3e>
1c0094b4:	85de                	mv	a1,s7
1c0094b6:	03000513          	li	a0,48
1c0094ba:	c036                	sw	a3,0(sp)
1c0094bc:	c43e                	sw	a5,8(sp)
1c0094be:	9b02                	jalr	s6
1c0094c0:	4682                	lw	a3,0(sp)
1c0094c2:	47a2                	lw	a5,8(sp)
1c0094c4:	9df531e3          	p.bneimm	a0,-1,1c008e86 <pos_libc_prf+0x37c>
1c0094c8:	e80ff06f          	j	1c008b48 <pos_libc_prf+0x3e>
1c0094cc:	85de                	mv	a1,s7
1c0094ce:	c232                	sw	a2,4(sp)
1c0094d0:	c036                	sw	a3,0(sp)
1c0094d2:	c442                	sw	a6,8(sp)
1c0094d4:	9b02                	jalr	s6
1c0094d6:	4612                	lw	a2,4(sp)
1c0094d8:	4682                	lw	a3,0(sp)
1c0094da:	4822                	lw	a6,8(sp)
1c0094dc:	e7f52663          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c0094e0:	0d85                	addi	s11,s11,1
1c0094e2:	000dc503          	lbu	a0,0(s11)
1c0094e6:	ba6d                	j	1c008ea0 <pos_libc_prf+0x396>
1c0094e8:	85de                	mv	a1,s7
1c0094ea:	03000513          	li	a0,48
1c0094ee:	c232                	sw	a2,4(sp)
1c0094f0:	c036                	sw	a3,0(sp)
1c0094f2:	c43a                	sw	a4,8(sp)
1c0094f4:	9b02                	jalr	s6
1c0094f6:	4612                	lw	a2,4(sp)
1c0094f8:	4682                	lw	a3,0(sp)
1c0094fa:	167d                	addi	a2,a2,-1
1c0094fc:	4722                	lw	a4,8(sp)
1c0094fe:	9bf538e3          	p.bneimm	a0,-1,1c008eae <pos_libc_prf+0x3a4>
1c009502:	e46ff06f          	j	1c008b48 <pos_libc_prf+0x3e>
1c009506:	85de                	mv	a1,s7
1c009508:	03000513          	li	a0,48
1c00950c:	c036                	sw	a3,0(sp)
1c00950e:	c43a                	sw	a4,8(sp)
1c009510:	9b02                	jalr	s6
1c009512:	4682                	lw	a3,0(sp)
1c009514:	4722                	lw	a4,8(sp)
1c009516:	16fd                	addi	a3,a3,-1
1c009518:	9df538e3          	p.bneimm	a0,-1,1c008ee8 <pos_libc_prf+0x3de>
1c00951c:	e2cff06f          	j	1c008b48 <pos_libc_prf+0x3e>
1c009520:	85de                	mv	a1,s7
1c009522:	c232                	sw	a2,4(sp)
1c009524:	c036                	sw	a3,0(sp)
1c009526:	c43a                	sw	a4,8(sp)
1c009528:	9b02                	jalr	s6
1c00952a:	4612                	lw	a2,4(sp)
1c00952c:	4682                	lw	a3,0(sp)
1c00952e:	4722                	lw	a4,8(sp)
1c009530:	e1f52c63          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c009534:	0d85                	addi	s11,s11,1
1c009536:	000dc503          	lbu	a0,0(s11)
1c00953a:	b2e1                	j	1c008f02 <pos_libc_prf+0x3f8>
1c00953c:	85de                	mv	a1,s7
1c00953e:	03000513          	li	a0,48
1c009542:	c43a                	sw	a4,8(sp)
1c009544:	9b02                	jalr	s6
1c009546:	4722                	lw	a4,8(sp)
1c009548:	177d                	addi	a4,a4,-1
1c00954a:	9df535e3          	p.bneimm	a0,-1,1c008f14 <pos_libc_prf+0x40a>
1c00954e:	dfaff06f          	j	1c008b48 <pos_libc_prf+0x3e>
1c009552:	0014450b          	p.lbu	a0,1(s0!)
1c009556:	85de                	mv	a1,s7
1c009558:	9b02                	jalr	s6
1c00955a:	dff52763          	p.beqimm	a0,-1,1c008b48 <pos_libc_prf+0x3e>
1c00955e:	408a87b3          	sub	a5,s5,s0
1c009562:	fef048e3          	bgtz	a5,1c009552 <pos_libc_prf+0xa48>
1c009566:	994e                	add	s2,s2,s3
1c009568:	012d09b3          	add	s3,s10,s2
1c00956c:	99a6                	add	s3,s3,s1
1c00956e:	e39052e3          	blez	s9,1c009392 <pos_libc_prf+0x888>
1c009572:	99e6                	add	s3,s3,s9
1c009574:	1cfd                	addi	s9,s9,-1
1c009576:	e1fcaee3          	p.beqimm	s9,-1,1c009392 <pos_libc_prf+0x888>
1c00957a:	85de                	mv	a1,s7
1c00957c:	02000513          	li	a0,32
1c009580:	9b02                	jalr	s6
1c009582:	fff539e3          	p.bneimm	a0,-1,1c009574 <pos_libc_prf+0xa6a>
1c009586:	dc2ff06f          	j	1c008b48 <pos_libc_prf+0x3e>
1c00958a:	02e00693          	li	a3,46
1c00958e:	00d90023          	sb	a3,0(s2)
1c009592:	00190713          	addi	a4,s2,1
1c009596:	86ea                	mv	a3,s10
1c009598:	4d01                	li	s10,0
1c00959a:	4a81                	li	s5,0
1c00959c:	bed1                	j	1c009170 <pos_libc_prf+0x666>
1c00959e:	ca02                	sw	zero,20(sp)
1c0095a0:	00140713          	addi	a4,s0,1
1c0095a4:	46c1                	li	a3,16
1c0095a6:	d636                	sw	a3,44(sp)
1c0095a8:	04d74933          	p.min	s2,a4,a3
1c0095ac:	b6b9                	j	1c0090fa <pos_libc_prf+0x5f0>

1c0095ae <pos_init_start>:
1c0095ae:	f14027f3          	csrr	a5,mhartid
1c0095b2:	f1402773          	csrr	a4,mhartid
1c0095b6:	ca5797b3          	p.extractu	a5,a5,5,5
1c0095ba:	1785                	addi	a5,a5,-31
1c0095bc:	0017b793          	seqz	a5,a5
1c0095c0:	f4573733          	p.bclr	a4,a4,26,5
1c0095c4:	02e79563          	bne	a5,a4,1c0095ee <pos_init_start+0x40>
1c0095c8:	102007b7          	lui	a5,0x10200
1c0095cc:	0ff00713          	li	a4,255
1c0095d0:	c398                	sw	a4,0(a5)
1c0095d2:	102017b7          	lui	a5,0x10201
1c0095d6:	577d                	li	a4,-1
1c0095d8:	40e7a023          	sw	a4,1024(a5) # 10201400 <__l1_end+0x2013dc>
1c0095dc:	002007b7          	lui	a5,0x200
1c0095e0:	43b8                	lw	a4,64(a5)
1c0095e2:	1c0087b7          	lui	a5,0x1c008
1c0095e6:	08078793          	addi	a5,a5,128 # 1c008080 <_start>
1c0095ea:	c31c                	sw	a5,0(a4)
1c0095ec:	a001                	j	1c0095ec <pos_init_start+0x3e>
1c0095ee:	ef1d                	bnez	a4,1c00962c <pos_init_start+0x7e>
1c0095f0:	1141                	addi	sp,sp,-16
1c0095f2:	c606                	sw	ra,12(sp)
1c0095f4:	1a1047b7          	lui	a5,0x1a104
1c0095f8:	c422                	sw	s0,8(sp)
1c0095fa:	0007a423          	sw	zero,8(a5) # 1a104008 <__l1_end+0xa103fe4>
1c0095fe:	1c001437          	lui	s0,0x1c001
1c009602:	24ad                	jal	1c00986c <pos_irq_init>
1c009604:	85040413          	addi	s0,s0,-1968 # 1c000850 <ctor_list+0x4>
1c009608:	b0aff0ef          	jal	ra,1c008912 <pos_soc_init>
1c00960c:	2c49                	jal	1c00989e <pos_soc_event_init>
1c00960e:	2abd                	jal	1c00978c <pos_allocs_init>
1c009610:	2045                	jal	1c0096b0 <pos_sched_init>
1c009612:	0044278b          	p.lw	a5,4(s0!)
1c009616:	eb89                	bnez	a5,1c009628 <pos_init_start+0x7a>
1c009618:	b98ff0ef          	jal	ra,1c0089b0 <pos_io_start>
1c00961c:	300467f3          	csrrsi	a5,mstatus,8
1c009620:	40b2                	lw	ra,12(sp)
1c009622:	4422                	lw	s0,8(sp)
1c009624:	0141                	addi	sp,sp,16
1c009626:	8082                	ret
1c009628:	9782                	jalr	a5
1c00962a:	b7e5                	j	1c009612 <pos_init_start+0x64>
1c00962c:	8082                	ret

1c00962e <pos_init_stop>:
1c00962e:	1141                	addi	sp,sp,-16
1c009630:	c422                	sw	s0,8(sp)
1c009632:	1c001437          	lui	s0,0x1c001
1c009636:	c606                	sw	ra,12(sp)
1c009638:	86440413          	addi	s0,s0,-1948 # 1c000864 <dtor_list+0x4>
1c00963c:	b78ff0ef          	jal	ra,1c0089b4 <pos_io_stop>
1c009640:	0044278b          	p.lw	a5,4(s0!)
1c009644:	e789                	bnez	a5,1c00964e <pos_init_stop+0x20>
1c009646:	40b2                	lw	ra,12(sp)
1c009648:	4422                	lw	s0,8(sp)
1c00964a:	0141                	addi	sp,sp,16
1c00964c:	8082                	ret
1c00964e:	9782                	jalr	a5
1c009650:	bfc5                	j	1c009640 <pos_init_stop+0x12>

1c009652 <pos_cbsys_add>:
1c009652:	00259793          	slli	a5,a1,0x2
1c009656:	1c0015b7          	lui	a1,0x1c001
1c00965a:	22058593          	addi	a1,a1,544 # 1c001220 <stack>
1c00965e:	95be                	add	a1,a1,a5
1c009660:	419c                	lw	a5,0(a1)
1c009662:	c110                	sw	a2,0(a0)
1c009664:	c154                	sw	a3,4(a0)
1c009666:	c51c                	sw	a5,8(a0)
1c009668:	c188                	sw	a0,0(a1)
1c00966a:	8082                	ret

1c00966c <pi_open_from_conf>:
1c00966c:	c14c                	sw	a1,4(a0)
1c00966e:	8082                	ret

1c009670 <pos_task_handle_blocking>:
1c009670:	4785                	li	a5,1
1c009672:	00f50a23          	sb	a5,20(a0)
1c009676:	8082                	ret

1c009678 <pos_task_handle>:
1c009678:	1141                	addi	sp,sp,-16
1c00967a:	c422                	sw	s0,8(sp)
1c00967c:	02002783          	lw	a5,32(zero) # 20 <_l1_preload_size>
1c009680:	c606                	sw	ra,12(sp)
1c009682:	02000413          	li	s0,32
1c009686:	eb81                	bnez	a5,1c009696 <pos_task_handle+0x1e>
1c009688:	10500073          	wfi
1c00968c:	300467f3          	csrrsi	a5,mstatus,8
1c009690:	300477f3          	csrrci	a5,mstatus,8
1c009694:	401c                	lw	a5,0(s0)
1c009696:	e789                	bnez	a5,1c0096a0 <pos_task_handle+0x28>
1c009698:	40b2                	lw	ra,12(sp)
1c00969a:	4422                	lw	s0,8(sp)
1c00969c:	0141                	addi	sp,sp,16
1c00969e:	8082                	ret
1c0096a0:	4398                	lw	a4,0(a5)
1c0096a2:	4788                	lw	a0,8(a5)
1c0096a4:	c018                	sw	a4,0(s0)
1c0096a6:	43d8                	lw	a4,4(a5)
1c0096a8:	300467f3          	csrrsi	a5,mstatus,8
1c0096ac:	9702                	jalr	a4
1c0096ae:	b7cd                	j	1c009690 <pos_task_handle+0x18>

1c0096b0 <pos_sched_init>:
1c0096b0:	02002023          	sw	zero,32(zero) # 20 <_l1_preload_size>
1c0096b4:	8082                	ret

1c0096b6 <pos_alloc_init>:
1c0096b6:	00758793          	addi	a5,a1,7
1c0096ba:	c407b7b3          	p.bclr	a5,a5,2,0
1c0096be:	40b785b3          	sub	a1,a5,a1
1c0096c2:	c11c                	sw	a5,0(a0)
1c0096c4:	8e0d                	sub	a2,a2,a1
1c0096c6:	00c05763          	blez	a2,1c0096d4 <pos_alloc_init+0x1e>
1c0096ca:	c4063633          	p.bclr	a2,a2,2,0
1c0096ce:	c390                	sw	a2,0(a5)
1c0096d0:	0007a223          	sw	zero,4(a5)
1c0096d4:	8082                	ret

1c0096d6 <pos_alloc>:
1c0096d6:	059d                	addi	a1,a1,7
1c0096d8:	411c                	lw	a5,0(a0)
1c0096da:	c405b5b3          	p.bclr	a1,a1,2,0
1c0096de:	4701                	li	a4,0
1c0096e0:	cb89                	beqz	a5,1c0096f2 <pos_alloc+0x1c>
1c0096e2:	4394                	lw	a3,0(a5)
1c0096e4:	43d0                	lw	a2,4(a5)
1c0096e6:	00b6c863          	blt	a3,a1,1c0096f6 <pos_alloc+0x20>
1c0096ea:	00b69b63          	bne	a3,a1,1c009700 <pos_alloc+0x2a>
1c0096ee:	c719                	beqz	a4,1c0096fc <pos_alloc+0x26>
1c0096f0:	c350                	sw	a2,4(a4)
1c0096f2:	853e                	mv	a0,a5
1c0096f4:	8082                	ret
1c0096f6:	873e                	mv	a4,a5
1c0096f8:	87b2                	mv	a5,a2
1c0096fa:	b7dd                	j	1c0096e0 <pos_alloc+0xa>
1c0096fc:	c110                	sw	a2,0(a0)
1c0096fe:	bfd5                	j	1c0096f2 <pos_alloc+0x1c>
1c009700:	00b78833          	add	a6,a5,a1
1c009704:	40b685b3          	sub	a1,a3,a1
1c009708:	00b82023          	sw	a1,0(a6)
1c00970c:	00c82223          	sw	a2,4(a6)
1c009710:	c701                	beqz	a4,1c009718 <pos_alloc+0x42>
1c009712:	01072223          	sw	a6,4(a4) # ffff8004 <pulp__FC+0xffff8005>
1c009716:	bff1                	j	1c0096f2 <pos_alloc+0x1c>
1c009718:	01052023          	sw	a6,0(a0)
1c00971c:	bfd9                	j	1c0096f2 <pos_alloc+0x1c>

1c00971e <pos_free>:
1c00971e:	061d                	addi	a2,a2,7
1c009720:	411c                	lw	a5,0(a0)
1c009722:	c4063633          	p.bclr	a2,a2,2,0
1c009726:	4701                	li	a4,0
1c009728:	c399                	beqz	a5,1c00972e <pos_free+0x10>
1c00972a:	02b7e763          	bltu	a5,a1,1c009758 <pos_free+0x3a>
1c00972e:	00c586b3          	add	a3,a1,a2
1c009732:	02d79663          	bne	a5,a3,1c00975e <pos_free+0x40>
1c009736:	4394                	lw	a3,0(a5)
1c009738:	43dc                	lw	a5,4(a5)
1c00973a:	9636                	add	a2,a2,a3
1c00973c:	c190                	sw	a2,0(a1)
1c00973e:	c1dc                	sw	a5,4(a1)
1c009740:	c31d                	beqz	a4,1c009766 <pos_free+0x48>
1c009742:	4314                	lw	a3,0(a4)
1c009744:	00d707b3          	add	a5,a4,a3
1c009748:	00f59d63          	bne	a1,a5,1c009762 <pos_free+0x44>
1c00974c:	419c                	lw	a5,0(a1)
1c00974e:	97b6                	add	a5,a5,a3
1c009750:	c31c                	sw	a5,0(a4)
1c009752:	41dc                	lw	a5,4(a1)
1c009754:	c35c                	sw	a5,4(a4)
1c009756:	8082                	ret
1c009758:	873e                	mv	a4,a5
1c00975a:	43dc                	lw	a5,4(a5)
1c00975c:	b7f1                	j	1c009728 <pos_free+0xa>
1c00975e:	c190                	sw	a2,0(a1)
1c009760:	bff9                	j	1c00973e <pos_free+0x20>
1c009762:	c34c                	sw	a1,4(a4)
1c009764:	8082                	ret
1c009766:	c10c                	sw	a1,0(a0)
1c009768:	8082                	ret

1c00976a <pos_alloc_init_l1>:
1c00976a:	1c0017b7          	lui	a5,0x1c001
1c00976e:	2607a703          	lw	a4,608(a5) # 1c001260 <_edata>
1c009772:	100007b7          	lui	a5,0x10000
1c009776:	01651593          	slli	a1,a0,0x16
1c00977a:	6641                	lui	a2,0x10
1c00977c:	050a                	slli	a0,a0,0x2
1c00977e:	02478793          	addi	a5,a5,36 # 10000024 <__l1_end>
1c009782:	fdc60613          	addi	a2,a2,-36 # ffdc <__l1_heap_size>
1c009786:	95be                	add	a1,a1,a5
1c009788:	953a                	add	a0,a0,a4
1c00978a:	b735                	j	1c0096b6 <pos_alloc_init>

1c00978c <pos_allocs_init>:
1c00978c:	1141                	addi	sp,sp,-16
1c00978e:	1c0015b7          	lui	a1,0x1c001
1c009792:	c606                	sw	ra,12(sp)
1c009794:	c422                	sw	s0,8(sp)
1c009796:	28c58793          	addi	a5,a1,652 # 1c00128c <__l2_priv0_end>
1c00979a:	1c008637          	lui	a2,0x1c008
1c00979e:	04c7c363          	blt	a5,a2,1c0097e4 <pos_allocs_init+0x58>
1c0097a2:	4581                	li	a1,0
1c0097a4:	4601                	li	a2,0
1c0097a6:	1c001437          	lui	s0,0x1c001
1c0097aa:	26440513          	addi	a0,s0,612 # 1c001264 <pos_alloc_l2>
1c0097ae:	3721                	jal	1c0096b6 <pos_alloc_init>
1c0097b0:	1c0105b7          	lui	a1,0x1c010
1c0097b4:	1a858793          	addi	a5,a1,424 # 1c0101a8 <__l2_shared_end>
1c0097b8:	1c080637          	lui	a2,0x1c080
1c0097bc:	1c001537          	lui	a0,0x1c001
1c0097c0:	8e1d                	sub	a2,a2,a5
1c0097c2:	1a858593          	addi	a1,a1,424
1c0097c6:	26850513          	addi	a0,a0,616 # 1c001268 <pos_alloc_l2+0x4>
1c0097ca:	35f5                	jal	1c0096b6 <pos_alloc_init>
1c0097cc:	26440513          	addi	a0,s0,612
1c0097d0:	4591                	li	a1,4
1c0097d2:	3711                	jal	1c0096d6 <pos_alloc>
1c0097d4:	40b2                	lw	ra,12(sp)
1c0097d6:	4422                	lw	s0,8(sp)
1c0097d8:	1c0017b7          	lui	a5,0x1c001
1c0097dc:	26a7a023          	sw	a0,608(a5) # 1c001260 <_edata>
1c0097e0:	0141                	addi	sp,sp,16
1c0097e2:	8082                	ret
1c0097e4:	8e1d                	sub	a2,a2,a5
1c0097e6:	28c58593          	addi	a1,a1,652
1c0097ea:	bf75                	j	1c0097a6 <pos_allocs_init+0x1a>

1c0097ec <pi_cl_l1_malloc>:
1c0097ec:	c919                	beqz	a0,1c009802 <pi_cl_l1_malloc+0x16>
1c0097ee:	451c                	lw	a5,8(a0)
1c0097f0:	01c7c503          	lbu	a0,28(a5)
1c0097f4:	1c0017b7          	lui	a5,0x1c001
1c0097f8:	2607a783          	lw	a5,608(a5) # 1c001260 <_edata>
1c0097fc:	050a                	slli	a0,a0,0x2
1c0097fe:	953e                	add	a0,a0,a5
1c009800:	bdd9                	j	1c0096d6 <pos_alloc>
1c009802:	4501                	li	a0,0
1c009804:	bfc5                	j	1c0097f4 <pi_cl_l1_malloc+0x8>

1c009806 <pi_cl_l1_free>:
1c009806:	4781                	li	a5,0
1c009808:	c501                	beqz	a0,1c009810 <pi_cl_l1_free+0xa>
1c00980a:	451c                	lw	a5,8(a0)
1c00980c:	01c7c783          	lbu	a5,28(a5)
1c009810:	1c001737          	lui	a4,0x1c001
1c009814:	26072503          	lw	a0,608(a4) # 1c001260 <_edata>
1c009818:	078a                	slli	a5,a5,0x2
1c00981a:	953e                	add	a0,a0,a5
1c00981c:	b709                	j	1c00971e <pos_free>

1c00981e <pos_irq_set_handler>:
1c00981e:	f14027f3          	csrr	a5,mhartid
1c009822:	477d                	li	a4,31
1c009824:	ca5797b3          	p.extractu	a5,a5,5,5
1c009828:	02e79e63          	bne	a5,a4,1c009864 <pos_irq_set_handler+0x46>
1c00982c:	30502773          	csrr	a4,mtvec
1c009830:	c0073733          	p.bclr	a4,a4,0,0
1c009834:	050a                	slli	a0,a0,0x2
1c009836:	8d89                	sub	a1,a1,a0
1c009838:	8d99                	sub	a1,a1,a4
1c00983a:	c14586b3          	p.extract	a3,a1,0,20
1c00983e:	06f00793          	li	a5,111
1c009842:	c1f6a7b3          	p.insert	a5,a3,0,31
1c009846:	d21586b3          	p.extract	a3,a1,9,1
1c00984a:	d356a7b3          	p.insert	a5,a3,9,21
1c00984e:	c0b586b3          	p.extract	a3,a1,0,11
1c009852:	c146a7b3          	p.insert	a5,a3,0,20
1c009856:	cec585b3          	p.extract	a1,a1,7,12
1c00985a:	cec5a7b3          	p.insert	a5,a1,7,12
1c00985e:	00f56723          	p.sw	a5,a4(a0)
1c009862:	8082                	ret
1c009864:	002007b7          	lui	a5,0x200
1c009868:	43b8                	lw	a4,64(a5)
1c00986a:	b7e9                	j	1c009834 <pos_irq_set_handler+0x16>

1c00986c <pos_irq_init>:
1c00986c:	1a10a7b7          	lui	a5,0x1a10a
1c009870:	577d                	li	a4,-1
1c009872:	80e7a423          	sw	a4,-2040(a5) # 1a109808 <__l1_end+0xa1097e4>
1c009876:	f1402773          	csrr	a4,mhartid
1c00987a:	1c0087b7          	lui	a5,0x1c008
1c00987e:	ca571733          	p.extractu	a4,a4,5,5
1c009882:	46fd                	li	a3,31
1c009884:	00078793          	mv	a5,a5
1c009888:	00d71763          	bne	a4,a3,1c009896 <pos_irq_init+0x2a>
1c00988c:	c007c7b3          	p.bset	a5,a5,0,0
1c009890:	30579073          	csrw	mtvec,a5
1c009894:	8082                	ret
1c009896:	00200737          	lui	a4,0x200
1c00989a:	c33c                	sw	a5,64(a4)
1c00989c:	8082                	ret

1c00989e <pos_soc_event_init>:
1c00989e:	1a1067b7          	lui	a5,0x1a106
1c0098a2:	1141                	addi	sp,sp,-16
1c0098a4:	c606                	sw	ra,12(sp)
1c0098a6:	577d                	li	a4,-1
1c0098a8:	00478693          	addi	a3,a5,4 # 1a106004 <__l1_end+0xa105fe0>
1c0098ac:	c298                	sw	a4,0(a3)
1c0098ae:	00878693          	addi	a3,a5,8
1c0098b2:	c298                	sw	a4,0(a3)
1c0098b4:	00c78693          	addi	a3,a5,12
1c0098b8:	c298                	sw	a4,0(a3)
1c0098ba:	01078693          	addi	a3,a5,16
1c0098be:	c298                	sw	a4,0(a3)
1c0098c0:	01478693          	addi	a3,a5,20
1c0098c4:	c298                	sw	a4,0(a3)
1c0098c6:	01878693          	addi	a3,a5,24
1c0098ca:	c298                	sw	a4,0(a3)
1c0098cc:	01c78693          	addi	a3,a5,28
1c0098d0:	c298                	sw	a4,0(a3)
1c0098d2:	02078793          	addi	a5,a5,32
1c0098d6:	1c00a5b7          	lui	a1,0x1c00a
1c0098da:	c398                	sw	a4,0(a5)
1c0098dc:	ee658593          	addi	a1,a1,-282 # 1c009ee6 <pos_soc_event_handler_asm>
1c0098e0:	4569                	li	a0,26
1c0098e2:	3f35                	jal	1c00981e <pos_irq_set_handler>
1c0098e4:	40b2                	lw	ra,12(sp)
1c0098e6:	1a10a7b7          	lui	a5,0x1a10a
1c0098ea:	04000737          	lui	a4,0x4000
1c0098ee:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e0>
1c0098f2:	0141                	addi	sp,sp,16
1c0098f4:	8082                	ret

1c0098f6 <pos_time_poweroff>:
1c0098f6:	1a10b7b7          	lui	a5,0x1a10b
1c0098fa:	0791                	addi	a5,a5,4
1c0098fc:	0087a783          	lw	a5,8(a5) # 1a10b008 <__l1_end+0xa10afe4>
1c009900:	1c001737          	lui	a4,0x1c001
1c009904:	22f72c23          	sw	a5,568(a4) # 1c001238 <pos_time_timer_count>
1c009908:	4501                	li	a0,0
1c00990a:	8082                	ret

1c00990c <pos_time_poweron>:
1c00990c:	1c0017b7          	lui	a5,0x1c001
1c009910:	2387a703          	lw	a4,568(a5) # 1c001238 <pos_time_timer_count>
1c009914:	1a10b7b7          	lui	a5,0x1a10b
1c009918:	0791                	addi	a5,a5,4
1c00991a:	00e7a423          	sw	a4,8(a5) # 1a10b008 <__l1_end+0xa10afe4>
1c00991e:	4501                	li	a0,0
1c009920:	8082                	ret

1c009922 <pos_time_timer_handler>:
1c009922:	1c0016b7          	lui	a3,0x1c001
1c009926:	23868793          	addi	a5,a3,568 # 1c001238 <pos_time_timer_count>
1c00992a:	43dc                	lw	a5,4(a5)
1c00992c:	1a10b737          	lui	a4,0x1a10b
1c009930:	0711                	addi	a4,a4,4
1c009932:	00872703          	lw	a4,8(a4) # 1a10b008 <__l1_end+0xa10afe4>
1c009936:	80000e37          	lui	t3,0x80000
1c00993a:	02002803          	lw	a6,32(zero) # 20 <_l1_preload_size>
1c00993e:	02402503          	lw	a0,36(zero) # 24 <pos_sched_last>
1c009942:	4881                	li	a7,0
1c009944:	4301                	li	t1,0
1c009946:	23868693          	addi	a3,a3,568
1c00994a:	ffee4e13          	xori	t3,t3,-2
1c00994e:	efb9                	bnez	a5,1c0099ac <pos_time_timer_handler+0x8a>
1c009950:	00030463          	beqz	t1,1c009958 <pos_time_timer_handler+0x36>
1c009954:	03002023          	sw	a6,32(zero) # 20 <_l1_preload_size>
1c009958:	00088463          	beqz	a7,1c009960 <pos_time_timer_handler+0x3e>
1c00995c:	02a02223          	sw	a0,36(zero) # 24 <pos_sched_last>
1c009960:	1a10b7b7          	lui	a5,0x1a10b
1c009964:	08100713          	li	a4,129
1c009968:	0791                	addi	a5,a5,4
1c00996a:	0006a223          	sw	zero,4(a3)
1c00996e:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afdc>
1c009972:	f1402773          	csrr	a4,mhartid
1c009976:	6785                	lui	a5,0x1
1c009978:	ca571733          	p.extractu	a4,a4,5,5
1c00997c:	46fd                	li	a3,31
1c00997e:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c009982:	06d71463          	bne	a4,a3,1c0099ea <pos_time_timer_handler+0xc8>
1c009986:	1a10a737          	lui	a4,0x1a10a
1c00998a:	80f72a23          	sw	a5,-2028(a4) # 1a109814 <__l1_end+0xa1097f0>
1c00998e:	8082                	ret
1c009990:	0007ae83          	lw	t4,0(a5)
1c009994:	0007a023          	sw	zero,0(a5)
1c009998:	00080763          	beqz	a6,1c0099a6 <pos_time_timer_handler+0x84>
1c00999c:	c11c                	sw	a5,0(a0)
1c00999e:	853e                	mv	a0,a5
1c0099a0:	4885                	li	a7,1
1c0099a2:	87f6                	mv	a5,t4
1c0099a4:	b76d                	j	1c00994e <pos_time_timer_handler+0x2c>
1c0099a6:	883e                	mv	a6,a5
1c0099a8:	4305                	li	t1,1
1c0099aa:	bfd5                	j	1c00999e <pos_time_timer_handler+0x7c>
1c0099ac:	03c7ae83          	lw	t4,60(a5)
1c0099b0:	41d70eb3          	sub	t4,a4,t4
1c0099b4:	fdde7ee3          	bleu	t4,t3,1c009990 <pos_time_timer_handler+0x6e>
1c0099b8:	00030463          	beqz	t1,1c0099c0 <pos_time_timer_handler+0x9e>
1c0099bc:	03002023          	sw	a6,32(zero) # 20 <_l1_preload_size>
1c0099c0:	00088463          	beqz	a7,1c0099c8 <pos_time_timer_handler+0xa6>
1c0099c4:	02a02223          	sw	a0,36(zero) # 24 <pos_sched_last>
1c0099c8:	c2dc                	sw	a5,4(a3)
1c0099ca:	1a10b6b7          	lui	a3,0x1a10b
1c0099ce:	0691                	addi	a3,a3,4
1c0099d0:	0086a603          	lw	a2,8(a3) # 1a10b008 <__l1_end+0xa10afe4>
1c0099d4:	5fdc                	lw	a5,60(a5)
1c0099d6:	40e78733          	sub	a4,a5,a4
1c0099da:	9732                	add	a4,a4,a2
1c0099dc:	00e6a823          	sw	a4,16(a3)
1c0099e0:	08500793          	li	a5,133
1c0099e4:	00f6a023          	sw	a5,0(a3)
1c0099e8:	8082                	ret
1c0099ea:	00204737          	lui	a4,0x204
1c0099ee:	02f72423          	sw	a5,40(a4) # 204028 <__l1_heap_size+0x1f404c>
1c0099f2:	8082                	ret

1c0099f4 <pos_time_init>:
1c0099f4:	1141                	addi	sp,sp,-16
1c0099f6:	c422                	sw	s0,8(sp)
1c0099f8:	1a10b7b7          	lui	a5,0x1a10b
1c0099fc:	1c001437          	lui	s0,0x1c001
1c009a00:	c606                	sw	ra,12(sp)
1c009a02:	23840413          	addi	s0,s0,568 # 1c001238 <pos_time_timer_count>
1c009a06:	08300713          	li	a4,131
1c009a0a:	0791                	addi	a5,a5,4
1c009a0c:	00042223          	sw	zero,4(s0)
1c009a10:	00e7a023          	sw	a4,0(a5) # 1a10b000 <__l1_end+0xa10afdc>
1c009a14:	1c00a5b7          	lui	a1,0x1c00a
1c009a18:	ec258593          	addi	a1,a1,-318 # 1c009ec2 <pos_time_timer_handler_asm>
1c009a1c:	452d                	li	a0,11
1c009a1e:	3501                	jal	1c00981e <pos_irq_set_handler>
1c009a20:	6785                	lui	a5,0x1
1c009a22:	1a10a737          	lui	a4,0x1a10a
1c009a26:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c009a2a:	1c00a637          	lui	a2,0x1c00a
1c009a2e:	00840513          	addi	a0,s0,8
1c009a32:	4681                	li	a3,0
1c009a34:	8f660613          	addi	a2,a2,-1802 # 1c0098f6 <pos_time_poweroff>
1c009a38:	4589                	li	a1,2
1c009a3a:	80f72223          	sw	a5,-2044(a4) # 1a109804 <__l1_end+0xa1097e0>
1c009a3e:	3911                	jal	1c009652 <pos_cbsys_add>
1c009a40:	01840513          	addi	a0,s0,24
1c009a44:	4422                	lw	s0,8(sp)
1c009a46:	40b2                	lw	ra,12(sp)
1c009a48:	1c00a637          	lui	a2,0x1c00a
1c009a4c:	4681                	li	a3,0
1c009a4e:	90c60613          	addi	a2,a2,-1780 # 1c00990c <pos_time_poweron>
1c009a52:	458d                	li	a1,3
1c009a54:	0141                	addi	sp,sp,16
1c009a56:	bef5                	j	1c009652 <pos_cbsys_add>

1c009a58 <pos_uart_init>:
1c009a58:	1c0107b7          	lui	a5,0x1c010
1c009a5c:	1407a823          	sw	zero,336(a5) # 1c010150 <__cluster_text_end>
1c009a60:	8082                	ret

1c009a62 <pos_init_cluster_data.isra.0>:
1c009a62:	04050713          	addi	a4,a0,64
1c009a66:	00400793          	li	a5,4
1c009a6a:	01671613          	slli	a2,a4,0x16
1c009a6e:	e6c7b7b3          	p.bclr	a5,a5,19,12
1c009a72:	1c0106b7          	lui	a3,0x1c010
1c009a76:	97b2                	add	a5,a5,a2
1c009a78:	18868693          	addi	a3,a3,392 # 1c010188 <_l1_preload_start_inL2>
1c009a7c:	02000713          	li	a4,32
1c009a80:	8f95                	sub	a5,a5,a3
1c009a82:	00f68833          	add	a6,a3,a5
1c009a86:	04e04763          	bgtz	a4,1c009ad4 <pos_init_cluster_data.isra.0+0x72>
1c009a8a:	1c0017b7          	lui	a5,0x1c001
1c009a8e:	00551713          	slli	a4,a0,0x5
1c009a92:	26c78793          	addi	a5,a5,620 # 1c00126c <pos_cluster>
1c009a96:	97ba                	add	a5,a5,a4
1c009a98:	00400713          	li	a4,4
1c009a9c:	e6c73733          	p.bclr	a4,a4,19,12
1c009aa0:	00a78e23          	sb	a0,28(a5)
1c009aa4:	9732                	add	a4,a4,a2
1c009aa6:	002016b7          	lui	a3,0x201
1c009aaa:	c3d8                	sw	a4,4(a5)
1c009aac:	e0468693          	addi	a3,a3,-508 # 200e04 <__l1_heap_size+0x1f0e28>
1c009ab0:	0005c703          	lbu	a4,0(a1)
1c009ab4:	96b2                	add	a3,a3,a2
1c009ab6:	cf94                	sw	a3,24(a5)
1c009ab8:	0007a423          	sw	zero,8(a5)
1c009abc:	cb94                	sw	a3,16(a5)
1c009abe:	0007aa23          	sw	zero,20(a5)
1c009ac2:	00e78ea3          	sb	a4,29(a5)
1c009ac6:	00078f23          	sb	zero,30(a5)
1c009aca:	100007b7          	lui	a5,0x10000
1c009ace:	00e78e23          	sb	a4,28(a5) # 1000001c <pos_cluster_exec_mode>
1c009ad2:	8082                	ret
1c009ad4:	0046a88b          	p.lw	a7,4(a3!)
1c009ad8:	1771                	addi	a4,a4,-4
1c009ada:	01182023          	sw	a7,0(a6)
1c009ade:	b755                	j	1c009a82 <pos_init_cluster_data.isra.0+0x20>

1c009ae0 <pi_freq_set.constprop.3>:
1c009ae0:	85aa                	mv	a1,a0
1c009ae2:	00a02e23          	sw	a0,28(zero) # 1c <pos_cluster_nb_active_pe+0x4>
1c009ae6:	4509                	li	a0,2
1c009ae8:	d15fe06f          	j	1c0087fc <pos_fll_set_freq>

1c009aec <pos_freq_set_value.constprop.2>:
1c009aec:	00a02e23          	sw	a0,28(zero) # 1c <pos_cluster_nb_active_pe+0x4>
1c009af0:	8082                	ret

1c009af2 <pi_freq_get.constprop.4>:
1c009af2:	01c02503          	lw	a0,28(zero) # 1c <pos_cluster_nb_active_pe+0x4>
1c009af6:	8082                	ret

1c009af8 <pi_cluster_conf_init>:
1c009af8:	00052223          	sw	zero,4(a0)
1c009afc:	00052a23          	sw	zero,20(a0)
1c009b00:	8082                	ret

1c009b02 <pi_cluster_close>:
1c009b02:	4501                	li	a0,0
1c009b04:	8082                	ret

1c009b06 <pos_cluster_task_set_stack>:
1c009b06:	1101                	addi	sp,sp,-32
1c009b08:	ca26                	sw	s1,20(sp)
1c009b0a:	4504                	lw	s1,8(a0)
1c009b0c:	cc22                	sw	s0,24(sp)
1c009b0e:	c64e                	sw	s3,12(sp)
1c009b10:	4785                	li	a5,1
1c009b12:	ce06                	sw	ra,28(sp)
1c009b14:	c84a                	sw	s2,16(sp)
1c009b16:	00f48f23          	sb	a5,30(s1)
1c009b1a:	45dc                	lw	a5,12(a1)
1c009b1c:	89aa                	mv	s3,a0
1c009b1e:	842e                	mv	s0,a1
1c009b20:	eb81                	bnez	a5,1c009b30 <pos_cluster_task_set_stack+0x2a>
1c009b22:	6785                	lui	a5,0x1
1c009b24:	80078793          	addi	a5,a5,-2048 # 800 <pos_soc_event_callback+0x3b8>
1c009b28:	c5dc                	sw	a5,12(a1)
1c009b2a:	40000793          	li	a5,1024
1c009b2e:	c99c                	sw	a5,16(a1)
1c009b30:	481c                	lw	a5,16(s0)
1c009b32:	00c42903          	lw	s2,12(s0)
1c009b36:	e399                	bnez	a5,1c009b3c <pos_cluster_task_set_stack+0x36>
1c009b38:	01242823          	sw	s2,16(s0)
1c009b3c:	485c                	lw	a5,20(s0)
1c009b3e:	4818                	lw	a4,16(s0)
1c009b40:	448c                	lw	a1,8(s1)
1c009b42:	17fd                	addi	a5,a5,-1
1c009b44:	42e78933          	p.mac	s2,a5,a4
1c009b48:	c185                	beqz	a1,1c009b68 <pos_cluster_task_set_stack+0x62>
1c009b4a:	44d0                	lw	a2,12(s1)
1c009b4c:	01261c63          	bne	a2,s2,1c009b64 <pos_cluster_task_set_stack+0x5e>
1c009b50:	449c                	lw	a5,8(s1)
1c009b52:	4501                	li	a0,0
1c009b54:	c41c                	sw	a5,8(s0)
1c009b56:	40f2                	lw	ra,28(sp)
1c009b58:	4462                	lw	s0,24(sp)
1c009b5a:	44d2                	lw	s1,20(sp)
1c009b5c:	4942                	lw	s2,16(sp)
1c009b5e:	49b2                	lw	s3,12(sp)
1c009b60:	6105                	addi	sp,sp,32
1c009b62:	8082                	ret
1c009b64:	854e                	mv	a0,s3
1c009b66:	3145                	jal	1c009806 <pi_cl_l1_free>
1c009b68:	0124a623          	sw	s2,12(s1)
1c009b6c:	85ca                	mv	a1,s2
1c009b6e:	854e                	mv	a0,s3
1c009b70:	39b5                	jal	1c0097ec <pi_cl_l1_malloc>
1c009b72:	c488                	sw	a0,8(s1)
1c009b74:	fd71                	bnez	a0,1c009b50 <pos_cluster_task_set_stack+0x4a>
1c009b76:	557d                	li	a0,-1
1c009b78:	bff9                	j	1c009b56 <pos_cluster_task_set_stack+0x50>

1c009b7a <pi_cluster_send_task_to_cl_async>:
1c009b7a:	1101                	addi	sp,sp,-32
1c009b7c:	ca26                	sw	s1,20(sp)
1c009b7e:	4504                	lw	s1,8(a0)
1c009b80:	cc22                	sw	s0,24(sp)
1c009b82:	c84a                	sw	s2,16(sp)
1c009b84:	c64e                	sw	s3,12(sp)
1c009b86:	ce06                	sw	ra,28(sp)
1c009b88:	01d4c703          	lbu	a4,29(s1)
1c009b8c:	842e                	mv	s0,a1
1c009b8e:	89b2                	mv	s3,a2
1c009b90:	0044a903          	lw	s2,4(s1)
1c009b94:	459c                	lw	a5,8(a1)
1c009b96:	02173063          	p.bneimm	a4,1,1c009bb6 <pi_cluster_send_task_to_cl_async+0x3c>
1c009b9a:	e78d                	bnez	a5,1c009bc4 <pi_cluster_send_task_to_cl_async+0x4a>
1c009b9c:	01e4c783          	lbu	a5,30(s1)
1c009ba0:	e395                	bnez	a5,1c009bc4 <pi_cluster_send_task_to_cl_async+0x4a>
1c009ba2:	3795                	jal	1c009b06 <pos_cluster_task_set_stack>
1c009ba4:	c105                	beqz	a0,1c009bc4 <pi_cluster_send_task_to_cl_async+0x4a>
1c009ba6:	557d                	li	a0,-1
1c009ba8:	40f2                	lw	ra,28(sp)
1c009baa:	4462                	lw	s0,24(sp)
1c009bac:	44d2                	lw	s1,20(sp)
1c009bae:	4942                	lw	s2,16(sp)
1c009bb0:	49b2                	lw	s3,12(sp)
1c009bb2:	6105                	addi	sp,sp,32
1c009bb4:	8082                	ret
1c009bb6:	cf8d                	beqz	a5,1c009bf0 <pi_cluster_send_task_to_cl_async+0x76>
1c009bb8:	4858                	lw	a4,20(s0)
1c009bba:	4785                	li	a5,1
1c009bbc:	00e797b3          	sll	a5,a5,a4
1c009bc0:	17fd                	addi	a5,a5,-1
1c009bc2:	d05c                	sw	a5,36(s0)
1c009bc4:	02042023          	sw	zero,32(s0)
1c009bc8:	01342c23          	sw	s3,24(s0)
1c009bcc:	30047773          	csrrci	a4,mstatus,8
1c009bd0:	409c                	lw	a5,0(s1)
1c009bd2:	c391                	beqz	a5,1c009bd6 <pi_cluster_send_task_to_cl_async+0x5c>
1c009bd4:	d380                	sw	s0,32(a5)
1c009bd6:	c080                	sw	s0,0(s1)
1c009bd8:	00092783          	lw	a5,0(s2)
1c009bdc:	e399                	bnez	a5,1c009be2 <pi_cluster_send_task_to_cl_async+0x68>
1c009bde:	00892023          	sw	s0,0(s2)
1c009be2:	4c9c                	lw	a5,24(s1)
1c009be4:	0007a023          	sw	zero,0(a5)
1c009be8:	30071073          	csrw	mstatus,a4
1c009bec:	4501                	li	a0,0
1c009bee:	bf6d                	j	1c009ba8 <pi_cluster_send_task_to_cl_async+0x2e>
1c009bf0:	3f19                	jal	1c009b06 <pos_cluster_task_set_stack>
1c009bf2:	d179                	beqz	a0,1c009bb8 <pi_cluster_send_task_to_cl_async+0x3e>
1c009bf4:	bf4d                	j	1c009ba6 <pi_cluster_send_task_to_cl_async+0x2c>

1c009bf6 <pi_cluster_send_task_to_cl>:
1c009bf6:	1c0097b7          	lui	a5,0x1c009
1c009bfa:	711d                	addi	sp,sp,-96
1c009bfc:	67078793          	addi	a5,a5,1648 # 1c009670 <pos_task_handle_blocking>
1c009c00:	ca3e                	sw	a5,20(sp)
1c009c02:	081c                	addi	a5,sp,16
1c009c04:	863e                	mv	a2,a5
1c009c06:	ce86                	sw	ra,92(sp)
1c009c08:	cca2                	sw	s0,88(sp)
1c009c0a:	cc3e                	sw	a5,24(sp)
1c009c0c:	02010223          	sb	zero,36(sp)
1c009c10:	37ad                	jal	1c009b7a <pi_cluster_send_task_to_cl_async>
1c009c12:	e105                	bnez	a0,1c009c32 <pi_cluster_send_task_to_cl+0x3c>
1c009c14:	30047473          	csrrci	s0,mstatus,8
1c009c18:	02410783          	lb	a5,36(sp)
1c009c1c:	c799                	beqz	a5,1c009c2a <pi_cluster_send_task_to_cl+0x34>
1c009c1e:	30041073          	csrw	mstatus,s0
1c009c22:	40f6                	lw	ra,92(sp)
1c009c24:	4466                	lw	s0,88(sp)
1c009c26:	6125                	addi	sp,sp,96
1c009c28:	8082                	ret
1c009c2a:	c62a                	sw	a0,12(sp)
1c009c2c:	34b1                	jal	1c009678 <pos_task_handle>
1c009c2e:	4532                	lw	a0,12(sp)
1c009c30:	b7e5                	j	1c009c18 <pi_cluster_send_task_to_cl+0x22>
1c009c32:	557d                	li	a0,-1
1c009c34:	b7fd                	j	1c009c22 <pi_cluster_send_task_to_cl+0x2c>

1c009c36 <pi_cluster_open_without_FC_test>:
1c009c36:	1101                	addi	sp,sp,-32
1c009c38:	c64e                	sw	s3,12(sp)
1c009c3a:	00452983          	lw	s3,4(a0)
1c009c3e:	ca26                	sw	s1,20(sp)
1c009c40:	0049a483          	lw	s1,4(s3)
1c009c44:	1c0017b7          	lui	a5,0x1c001
1c009c48:	c84a                	sw	s2,16(sp)
1c009c4a:	26c78793          	addi	a5,a5,620 # 1c00126c <pos_cluster>
1c009c4e:	00549913          	slli	s2,s1,0x5
1c009c52:	ce06                	sw	ra,28(sp)
1c009c54:	cc22                	sw	s0,24(sp)
1c009c56:	993e                	add	s2,s2,a5
1c009c58:	87a6                	mv	a5,s1
1c009c5a:	01252423          	sw	s2,8(a0)
1c009c5e:	1c00a5b7          	lui	a1,0x1c00a
1c009c62:	00f90e23          	sb	a5,28(s2)
1c009c66:	e3a58593          	addi	a1,a1,-454 # 1c009e3a <pos_task_remote_enqueue>
1c009c6a:	4505                	li	a0,1
1c009c6c:	3e4d                	jal	1c00981e <pos_irq_set_handler>
1c009c6e:	1a10a7b7          	lui	a5,0x1a10a
1c009c72:	4709                	li	a4,2
1c009c74:	80e7a223          	sw	a4,-2044(a5) # 1a109804 <__l1_end+0xa1097e0>
1c009c78:	04048413          	addi	s0,s1,64
1c009c7c:	00400793          	li	a5,4
1c009c80:	045a                	slli	s0,s0,0x16
1c009c82:	e6c7b7b3          	p.bclr	a5,a5,19,12
1c009c86:	00092023          	sw	zero,0(s2)
1c009c8a:	97a2                	add	a5,a5,s0
1c009c8c:	0007a023          	sw	zero,0(a5)
1c009c90:	0007a623          	sw	zero,12(a5)
1c009c94:	0007a223          	sw	zero,4(a5)
1c009c98:	4509                	li	a0,2
1c009c9a:	100007b7          	lui	a5,0x10000
1c009c9e:	0207a023          	sw	zero,32(a5) # 10000020 <pos_cluster_fc_task_lock>
1c009ca2:	bb3fe0ef          	jal	ra,1c008854 <pos_fll_init>
1c009ca6:	892a                	mv	s2,a0
1c009ca8:	35a9                	jal	1c009af2 <pi_freq_get.constprop.4>
1c009caa:	c921                	beqz	a0,1c009cfa <pi_cluster_open_without_FC_test+0xc4>
1c009cac:	3d15                	jal	1c009ae0 <pi_freq_set.constprop.3>
1c009cae:	01498593          	addi	a1,s3,20
1c009cb2:	8526                	mv	a0,s1
1c009cb4:	337d                	jal	1c009a62 <pos_init_cluster_data.isra.0>
1c009cb6:	8526                	mv	a0,s1
1c009cb8:	3c4d                	jal	1c00976a <pos_alloc_init_l1>
1c009cba:	1c001537          	lui	a0,0x1c001
1c009cbe:	45a1                	li	a1,8
1c009cc0:	9a450513          	addi	a0,a0,-1628 # 1c0009a4 <__DTOR_END__+0x13c>
1c009cc4:	cf5fe0ef          	jal	ra,1c0089b8 <printf>
1c009cc8:	00200737          	lui	a4,0x200
1c009ccc:	943a                	add	s0,s0,a4
1c009cce:	1c008737          	lui	a4,0x1c008
1c009cd2:	04000793          	li	a5,64
1c009cd6:	06000693          	li	a3,96
1c009cda:	08070713          	addi	a4,a4,128 # 1c008080 <_start>
1c009cde:	02d79163          	bne	a5,a3,1c009d00 <pi_cluster_open_without_FC_test+0xca>
1c009ce2:	0ff00793          	li	a5,255
1c009ce6:	00f42423          	sw	a5,8(s0)
1c009cea:	40f2                	lw	ra,28(sp)
1c009cec:	4462                	lw	s0,24(sp)
1c009cee:	44d2                	lw	s1,20(sp)
1c009cf0:	4942                	lw	s2,16(sp)
1c009cf2:	49b2                	lw	s3,12(sp)
1c009cf4:	4501                	li	a0,0
1c009cf6:	6105                	addi	sp,sp,32
1c009cf8:	8082                	ret
1c009cfa:	854a                	mv	a0,s2
1c009cfc:	3bc5                	jal	1c009aec <pos_freq_set_value.constprop.2>
1c009cfe:	bf45                	j	1c009cae <pi_cluster_open_without_FC_test+0x78>
1c009d00:	00e467a3          	p.sw	a4,a5(s0)
1c009d04:	0791                	addi	a5,a5,4
1c009d06:	bfe1                	j	1c009cde <pi_cluster_open_without_FC_test+0xa8>

1c009d08 <pos_init_entry>:
1c009d08:	7a101073          	csrw	pcmr,zero
1c009d0c:	f1402573          	csrr	a0,mhartid
1c009d10:	01f57593          	andi	a1,a0,31
1c009d14:	8115                	srli	a0,a0,0x5
1c009d16:	467d                	li	a2,31
1c009d18:	00c50463          	beq	a0,a2,1c009d20 <pos_init_entry+0x18>
1c009d1c:	2e40606f          	j	1c010000 <__cluster_text_start>
1c009d20:	ffff7297          	auipc	t0,0xffff7
1c009d24:	54028293          	addi	t0,t0,1344 # 1c001260 <_edata>
1c009d28:	ffff7317          	auipc	t1,0xffff7
1c009d2c:	56430313          	addi	t1,t1,1380 # 1c00128c <__l2_priv0_end>
1c009d30:	0002a023          	sw	zero,0(t0)
1c009d34:	0291                	addi	t0,t0,4
1c009d36:	fe62ede3          	bltu	t0,t1,1c009d30 <pos_init_entry+0x28>
1c009d3a:	ffff7117          	auipc	sp,0xffff7
1c009d3e:	4e610113          	addi	sp,sp,1254 # 1c001220 <stack>
1c009d42:	00000297          	auipc	t0,0x0
1c009d46:	86c28293          	addi	t0,t0,-1940 # 1c0095ae <pos_init_start>
1c009d4a:	000280e7          	jalr	t0
1c009d4e:	00000513          	li	a0,0
1c009d52:	00000593          	li	a1,0
1c009d56:	fffff397          	auipc	t2,0xfffff
1c009d5a:	a6e38393          	addi	t2,t2,-1426 # 1c0087c4 <main>
1c009d5e:	000380e7          	jalr	t2
1c009d62:	842a                	mv	s0,a0
1c009d64:	8522                	mv	a0,s0
1c009d66:	fffff297          	auipc	t0,0xfffff
1c009d6a:	c2228293          	addi	t0,t0,-990 # 1c008988 <exit>
1c009d6e:	000280e7          	jalr	t0

1c009d72 <pos_irq_call_external_c_function>:
1c009d72:	7119                	addi	sp,sp,-128
1c009d74:	c006                	sw	ra,0(sp)
1c009d76:	c20e                	sw	gp,4(sp)
1c009d78:	c412                	sw	tp,8(sp)
1c009d7a:	c616                	sw	t0,12(sp)
1c009d7c:	c81a                	sw	t1,16(sp)
1c009d7e:	ca1e                	sw	t2,20(sp)
1c009d80:	d236                	sw	a3,36(sp)
1c009d82:	d43a                	sw	a4,40(sp)
1c009d84:	d63e                	sw	a5,44(sp)
1c009d86:	d842                	sw	a6,48(sp)
1c009d88:	da46                	sw	a7,52(sp)
1c009d8a:	dc72                	sw	t3,56(sp)
1c009d8c:	de76                	sw	t4,60(sp)
1c009d8e:	c0fa                	sw	t5,64(sp)
1c009d90:	c6fe                	sw	t6,76(sp)
1c009d92:	000600e7          	jalr	a2
1c009d96:	4082                	lw	ra,0(sp)
1c009d98:	4192                	lw	gp,4(sp)
1c009d9a:	4222                	lw	tp,8(sp)
1c009d9c:	42b2                	lw	t0,12(sp)
1c009d9e:	4342                	lw	t1,16(sp)
1c009da0:	43d2                	lw	t2,20(sp)
1c009da2:	5692                	lw	a3,36(sp)
1c009da4:	5722                	lw	a4,40(sp)
1c009da6:	57b2                	lw	a5,44(sp)
1c009da8:	5842                	lw	a6,48(sp)
1c009daa:	58d2                	lw	a7,52(sp)
1c009dac:	5e62                	lw	t3,56(sp)
1c009dae:	5ef2                	lw	t4,60(sp)
1c009db0:	4f06                	lw	t5,64(sp)
1c009db2:	4fb6                	lw	t6,76(sp)
1c009db4:	6109                	addi	sp,sp,128
1c009db6:	8482                	jr	s1

1c009db8 <pos_irq_call_external_c_function_full>:
1c009db8:	7119                	addi	sp,sp,-128
1c009dba:	c006                	sw	ra,0(sp)
1c009dbc:	c20e                	sw	gp,4(sp)
1c009dbe:	c412                	sw	tp,8(sp)
1c009dc0:	c616                	sw	t0,12(sp)
1c009dc2:	c81a                	sw	t1,16(sp)
1c009dc4:	ca1e                	sw	t2,20(sp)
1c009dc6:	cc2a                	sw	a0,24(sp)
1c009dc8:	ce2e                	sw	a1,28(sp)
1c009dca:	d236                	sw	a3,36(sp)
1c009dcc:	d43a                	sw	a4,40(sp)
1c009dce:	d63e                	sw	a5,44(sp)
1c009dd0:	d842                	sw	a6,48(sp)
1c009dd2:	da46                	sw	a7,52(sp)
1c009dd4:	dc72                	sw	t3,56(sp)
1c009dd6:	de76                	sw	t4,60(sp)
1c009dd8:	c0fa                	sw	t5,64(sp)
1c009dda:	c6fe                	sw	t6,76(sp)
1c009ddc:	000600e7          	jalr	a2
1c009de0:	4082                	lw	ra,0(sp)
1c009de2:	4192                	lw	gp,4(sp)
1c009de4:	4222                	lw	tp,8(sp)
1c009de6:	42b2                	lw	t0,12(sp)
1c009de8:	4342                	lw	t1,16(sp)
1c009dea:	43d2                	lw	t2,20(sp)
1c009dec:	4562                	lw	a0,24(sp)
1c009dee:	45f2                	lw	a1,28(sp)
1c009df0:	5692                	lw	a3,36(sp)
1c009df2:	5722                	lw	a4,40(sp)
1c009df4:	57b2                	lw	a5,44(sp)
1c009df6:	5842                	lw	a6,48(sp)
1c009df8:	58d2                	lw	a7,52(sp)
1c009dfa:	5e62                	lw	t3,56(sp)
1c009dfc:	5ef2                	lw	t4,60(sp)
1c009dfe:	4f06                	lw	t5,64(sp)
1c009e00:	4fb6                	lw	t6,76(sp)
1c009e02:	6109                	addi	sp,sp,128
1c009e04:	8482                	jr	s1

1c009e06 <pos_task_push_asm>:
1c009e06:	e3ff6297          	auipc	t0,0xe3ff6
1c009e0a:	21a28293          	addi	t0,t0,538 # 20 <_l1_preload_size>
1c009e0e:	0002a603          	lw	a2,0(t0)
1c009e12:	0005a023          	sw	zero,0(a1)
1c009e16:	ca09                	beqz	a2,1c009e28 <__rt_no_first>
1c009e18:	e3ff6297          	auipc	t0,0xe3ff6
1c009e1c:	20c28293          	addi	t0,t0,524 # 24 <pos_sched_last>
1c009e20:	0002a603          	lw	a2,0(t0)
1c009e24:	c20c                	sw	a1,0(a2)
1c009e26:	a029                	j	1c009e30 <__rt_common>

1c009e28 <__rt_no_first>:
1c009e28:	e3ff6297          	auipc	t0,0xe3ff6
1c009e2c:	1eb2ac23          	sw	a1,504(t0) # 20 <_l1_preload_size>

1c009e30 <__rt_common>:
1c009e30:	e3ff6297          	auipc	t0,0xe3ff6
1c009e34:	1eb2aa23          	sw	a1,500(t0) # 24 <pos_sched_last>

1c009e38 <enqueue_end>:
1c009e38:	8482                	jr	s1

1c009e3a <pos_task_remote_enqueue>:
1c009e3a:	fe812e23          	sw	s0,-4(sp)
1c009e3e:	fe912c23          	sw	s1,-8(sp)
1c009e42:	fea12a23          	sw	a0,-12(sp)
1c009e46:	feb12823          	sw	a1,-16(sp)
1c009e4a:	fec12623          	sw	a2,-20(sp)
1c009e4e:	4405                	li	s0,1
1c009e50:	ffff7497          	auipc	s1,0xffff7
1c009e54:	41c48493          	addi	s1,s1,1052 # 1c00126c <pos_cluster>

1c009e58 <pos_task_remote_enqueue_event_loop_cluster>:
1c009e58:	48cc                	lw	a1,20(s1)
1c009e5a:	40d0                	lw	a2,4(s1)
1c009e5c:	02058a63          	beqz	a1,1c009e90 <pos_task_remote_enqueue_event_loop_cluster_continue>
1c009e60:	4208                	lw	a0,0(a2)
1c009e62:	e119                	bnez	a0,1c009e68 <pos_task_remote_enqueue_no_queue_update>
1c009e64:	0004a023          	sw	zero,0(s1)

1c009e68 <pos_task_remote_enqueue_no_queue_update>:
1c009e68:	4890                	lw	a2,16(s1)
1c009e6a:	0004aa23          	sw	zero,20(s1)
1c009e6e:	00062023          	sw	zero,0(a2)
1c009e72:	00000497          	auipc	s1,0x0
1c009e76:	01e48493          	addi	s1,s1,30 # 1c009e90 <pos_task_remote_enqueue_event_loop_cluster_continue>
1c009e7a:	0035f513          	andi	a0,a1,3
1c009e7e:	00051363          	bnez	a0,1c009e84 <pos_task_callback>
1c009e82:	b751                	j	1c009e06 <pos_task_push_asm>

1c009e84 <pos_task_callback>:
1c009e84:	5571                	li	a0,-4
1c009e86:	8de9                	and	a1,a1,a0
1c009e88:	41d0                	lw	a2,4(a1)
1c009e8a:	4588                	lw	a0,8(a1)
1c009e8c:	ee7ff06f          	j	1c009d72 <pos_irq_call_external_c_function>

1c009e90 <pos_task_remote_enqueue_event_loop_cluster_continue>:
1c009e90:	147d                	addi	s0,s0,-1
1c009e92:	00804e63          	bgtz	s0,1c009eae <pos_task_remote_enqueue_event_loop_next_cluster>
1c009e96:	ffc12403          	lw	s0,-4(sp)
1c009e9a:	ff812483          	lw	s1,-8(sp)
1c009e9e:	ff412503          	lw	a0,-12(sp)
1c009ea2:	ff012583          	lw	a1,-16(sp)
1c009ea6:	fec12603          	lw	a2,-20(sp)
1c009eaa:	30200073          	mret

1c009eae <pos_task_remote_enqueue_event_loop_next_cluster>:
1c009eae:	ffff7497          	auipc	s1,0xffff7
1c009eb2:	3be48493          	addi	s1,s1,958 # 1c00126c <pos_cluster>
1c009eb6:	02c00593          	li	a1,44
1c009eba:	02b405b3          	mul	a1,s0,a1
1c009ebe:	94ae                	add	s1,s1,a1
1c009ec0:	bf61                	j	1c009e58 <pos_task_remote_enqueue_event_loop_cluster>

1c009ec2 <pos_time_timer_handler_asm>:
1c009ec2:	1161                	addi	sp,sp,-8
1c009ec4:	c032                	sw	a2,0(sp)
1c009ec6:	c226                	sw	s1,4(sp)
1c009ec8:	00000617          	auipc	a2,0x0
1c009ecc:	a5a60613          	addi	a2,a2,-1446 # 1c009922 <pos_time_timer_handler>
1c009ed0:	00000497          	auipc	s1,0x0
1c009ed4:	00c48493          	addi	s1,s1,12 # 1c009edc <pos_time_timer_handler_asm_ret>
1c009ed8:	ee1ff06f          	j	1c009db8 <pos_irq_call_external_c_function_full>

1c009edc <pos_time_timer_handler_asm_ret>:
1c009edc:	4492                	lw	s1,4(sp)
1c009ede:	4602                	lw	a2,0(sp)
1c009ee0:	0121                	addi	sp,sp,8
1c009ee2:	30200073          	mret

1c009ee6 <pos_soc_event_handler_asm>:
1c009ee6:	7119                	addi	sp,sp,-128
1c009ee8:	c022                	sw	s0,0(sp)
1c009eea:	c226                	sw	s1,4(sp)
1c009eec:	c42a                	sw	a0,8(sp)
1c009eee:	c62e                	sw	a1,12(sp)
1c009ef0:	c832                	sw	a2,16(sp)
1c009ef2:	1a10a437          	lui	s0,0x1a10a
1c009ef6:	80040413          	addi	s0,s0,-2048 # 1a109800 <__l1_end+0xa1097dc>
1c009efa:	5048                	lw	a0,36(s0)
1c009efc:	00251593          	slli	a1,a0,0x2
1c009f00:	e3ff6297          	auipc	t0,0xe3ff6
1c009f04:	54828293          	addi	t0,t0,1352 # 448 <pos_soc_event_callback>
1c009f08:	2055f603          	p.lw	a2,t0(a1)
1c009f0c:	e3ff6297          	auipc	t0,0xe3ff6
1c009f10:	13c28293          	addi	t0,t0,316 # 48 <pos_soc_event_callback_arg>
1c009f14:	2055f583          	p.lw	a1,t0(a1)
1c009f18:	00000497          	auipc	s1,0x0
1c009f1c:	03048493          	addi	s1,s1,48 # 1c009f48 <pos_soc_event_handler_end_asm>
1c009f20:	e53ff06f          	j	1c009d72 <pos_irq_call_external_c_function>

1c009f24 <pos_soc_event_no_udma_asm>:
1c009f24:	00555593          	srli	a1,a0,0x5
1c009f28:	058a                	slli	a1,a1,0x2
1c009f2a:	e3ff6297          	auipc	t0,0xe3ff6
1c009f2e:	0fe28293          	addi	t0,t0,254 # 28 <pos_soc_event_status>
1c009f32:	2055f603          	p.lw	a2,t0(a1)
1c009f36:	897d                	andi	a0,a0,31
1c009f38:	80a64633          	p.bsetr	a2,a2,a0
1c009f3c:	e3ff6297          	auipc	t0,0xe3ff6
1c009f40:	0ec28293          	addi	t0,t0,236 # 28 <pos_soc_event_status>
1c009f44:	00c5e2a3          	p.sw	a2,t0(a1)

1c009f48 <pos_soc_event_handler_end_asm>:
1c009f48:	4402                	lw	s0,0(sp)
1c009f4a:	4492                	lw	s1,4(sp)
1c009f4c:	4522                	lw	a0,8(sp)
1c009f4e:	45b2                	lw	a1,12(sp)
1c009f50:	4642                	lw	a2,16(sp)
1c009f52:	6109                	addi	sp,sp,128
1c009f54:	30200073          	mret

Disassembly of section .l2_data:

1c010000 <__cluster_text_start>:
1c010000:	f1402573          	csrr	a0,mhartid
1c010004:	01f57593          	andi	a1,a0,31
1c010008:	8115                	srli	a0,a0,0x5
1c01000a:	000702b7          	lui	t0,0x70
1c01000e:	00204337          	lui	t1,0x204
1c010012:	00532023          	sw	t0,0(t1) # 204000 <__l1_heap_size+0x1f4024>
1c010016:	4381                	li	t2,0
1c010018:	0e759463          	bne	a1,t2,1c010100 <pos_slave_start>
1c01001c:	20000293          	li	t0,512
1c010020:	00204337          	lui	t1,0x204
1c010024:	00532a23          	sw	t0,20(t1) # 204014 <__l1_heap_size+0x1f4038>
1c010028:	e3ff0417          	auipc	s0,0xe3ff0
1c01002c:	fdc40413          	addi	s0,s0,-36 # 4 <pos_fll_freq>
1c010030:	002049b7          	lui	s3,0x204
1c010034:	4a09                	li	s4,2
1c010036:	00000a97          	auipc	s5,0x0
1c01003a:	038a8a93          	addi	s5,s5,56 # 1c01006e <pos_master_event>
1c01003e:	ffff1b97          	auipc	s7,0xffff1
1c010042:	22eb8b93          	addi	s7,s7,558 # 1c00126c <pos_cluster>
1c010046:	02c00393          	li	t2,44
1c01004a:	02a383b3          	mul	t2,t2,a0
1c01004e:	9b9e                	add	s7,s7,t2
1c010050:	0bd1                	addi	s7,s7,20
1c010052:	1a10acb7          	lui	s9,0x1a10a
1c010056:	810c8c93          	addi	s9,s9,-2032 # 1a109810 <__l1_end+0xa1097ec>
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
1c0100be:	e3ff0e17          	auipc	t3,0xe3ff0
1c0100c2:	f5fe2d23          	sw	t6,-166(t3) # 18 <pos_cluster_nb_active_pe>

1c0100c6 <pos_no_stack_check>:
1c0100c6:	09e9a223          	sw	t5,132(s3) # 204084 <__l1_heap_size+0x1f40a8>
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
1c01011e:	21c96283          	p.elw	t0,540(s2) # 20421c <__l1_heap_size+0x1f4240>

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

1c010150 <__cluster_text_end>:
	...
