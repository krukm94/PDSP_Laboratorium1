################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
C6713dskinit.obj: ../C6713dskinit.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000_7.4.6/bin/cl6x" --abi=coffabi -g --include_path="C:/ti/ccsv5/tools/compiler/c6000_7.4.6/include" --include_path="C:/Users/Lech/Documents/Dydaktyka/PDSP/Lab/PDSP_Laboratorium1/dsk6713/include" --include_path="C:/Users/Lech/Documents/Dydaktyka/PDSP/Lab/PDSP_Laboratorium1/CSL/include" --define=CHIP_6713 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="C6713dskinit.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

PDSP_lab1.obj: ../PDSP_lab1.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000_7.4.6/bin/cl6x" --abi=coffabi -g --include_path="C:/ti/ccsv5/tools/compiler/c6000_7.4.6/include" --include_path="C:/Users/Lech/Documents/Dydaktyka/PDSP/Lab/PDSP_Laboratorium1/dsk6713/include" --include_path="C:/Users/Lech/Documents/Dydaktyka/PDSP/Lab/PDSP_Laboratorium1/CSL/include" --define=CHIP_6713 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="PDSP_lab1.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

Vectors_poll.obj: ../Vectors_poll.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccsv5/tools/compiler/c6000_7.4.6/bin/cl6x" --abi=coffabi -g --include_path="C:/ti/ccsv5/tools/compiler/c6000_7.4.6/include" --include_path="C:/Users/Lech/Documents/Dydaktyka/PDSP/Lab/PDSP_Laboratorium1/dsk6713/include" --include_path="C:/Users/Lech/Documents/Dydaktyka/PDSP/Lab/PDSP_Laboratorium1/CSL/include" --define=CHIP_6713 --display_error_number --diag_warning=225 --diag_wrap=off --preproc_with_compile --preproc_dependency="Vectors_poll.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


