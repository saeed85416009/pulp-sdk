-include $(PULPOS_HOME)/rules/pulpos/targets/$(PULPOS_TARGET).mk

define include_target

-include $(1)/rules/pulpos/targets/$(PULPOS_TARGET).mk

$(info  PULPOS_HOME   is $(PULPOS_HOME))
$(info  PULPOS_TARGET   is $(PULPOS_TARGET) and 1 is $(1))

endef

$(foreach module, $(PULPOS_MODULES), $(eval $(call include_target,$(module))))
