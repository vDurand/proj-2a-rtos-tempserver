#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/adc.c ../src/croutine.c ../src/heap_1.c ../src/ktrap.c ../src/list.c ../src/main.c ../src/port.c ../src/queue.c ../src/tasks.c ../src/timers.c ../src/uart.c ../src/utask.c ../src/port_asm.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/adc.o ${OBJECTDIR}/_ext/1360937237/croutine.o ${OBJECTDIR}/_ext/1360937237/heap_1.o ${OBJECTDIR}/_ext/1360937237/ktrap.o ${OBJECTDIR}/_ext/1360937237/list.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/port.o ${OBJECTDIR}/_ext/1360937237/queue.o ${OBJECTDIR}/_ext/1360937237/tasks.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/uart.o ${OBJECTDIR}/_ext/1360937237/utask.o ${OBJECTDIR}/_ext/1360937237/port_asm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/adc.o.d ${OBJECTDIR}/_ext/1360937237/croutine.o.d ${OBJECTDIR}/_ext/1360937237/heap_1.o.d ${OBJECTDIR}/_ext/1360937237/ktrap.o.d ${OBJECTDIR}/_ext/1360937237/list.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/port.o.d ${OBJECTDIR}/_ext/1360937237/queue.o.d ${OBJECTDIR}/_ext/1360937237/tasks.o.d ${OBJECTDIR}/_ext/1360937237/timers.o.d ${OBJECTDIR}/_ext/1360937237/uart.o.d ${OBJECTDIR}/_ext/1360937237/utask.o.d ${OBJECTDIR}/_ext/1360937237/port_asm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/adc.o ${OBJECTDIR}/_ext/1360937237/croutine.o ${OBJECTDIR}/_ext/1360937237/heap_1.o ${OBJECTDIR}/_ext/1360937237/ktrap.o ${OBJECTDIR}/_ext/1360937237/list.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/port.o ${OBJECTDIR}/_ext/1360937237/queue.o ${OBJECTDIR}/_ext/1360937237/tasks.o ${OBJECTDIR}/_ext/1360937237/timers.o ${OBJECTDIR}/_ext/1360937237/uart.o ${OBJECTDIR}/_ext/1360937237/utask.o ${OBJECTDIR}/_ext/1360937237/port_asm.o

# Source Files
SOURCEFILES=../src/adc.c ../src/croutine.c ../src/heap_1.c ../src/ktrap.c ../src/list.c ../src/main.c ../src/port.c ../src/queue.c ../src/tasks.c ../src/timers.c ../src/uart.c ../src/utask.c ../src/port_asm.S


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/port_asm.o: ../src/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port_asm.o.ok ${OBJECTDIR}/_ext/1360937237/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/port_asm.o.d" "${OBJECTDIR}/_ext/1360937237/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../h" -MMD -MF "${OBJECTDIR}/_ext/1360937237/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1360937237/port_asm.o ../src/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1
	
else
${OBJECTDIR}/_ext/1360937237/port_asm.o: ../src/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port_asm.o.ok ${OBJECTDIR}/_ext/1360937237/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/port_asm.o.d" "${OBJECTDIR}/_ext/1360937237/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../h" -MMD -MF "${OBJECTDIR}/_ext/1360937237/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1360937237/port_asm.o ../src/port_asm.S  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/port_asm.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/adc.o: ../src/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/adc.o.d" -o ${OBJECTDIR}/_ext/1360937237/adc.o ../src/adc.c   
	
${OBJECTDIR}/_ext/1360937237/croutine.o: ../src/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/croutine.o.d" -o ${OBJECTDIR}/_ext/1360937237/croutine.o ../src/croutine.c   
	
${OBJECTDIR}/_ext/1360937237/heap_1.o: ../src/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/heap_1.o.d" -o ${OBJECTDIR}/_ext/1360937237/heap_1.o ../src/heap_1.c   
	
${OBJECTDIR}/_ext/1360937237/ktrap.o: ../src/ktrap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ktrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ktrap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ktrap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ktrap.o.d" -o ${OBJECTDIR}/_ext/1360937237/ktrap.o ../src/ktrap.c   
	
${OBJECTDIR}/_ext/1360937237/list.o: ../src/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/list.o.d" -o ${OBJECTDIR}/_ext/1360937237/list.o ../src/list.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1360937237/port.o: ../src/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/port.o.d" -o ${OBJECTDIR}/_ext/1360937237/port.o ../src/port.c   
	
${OBJECTDIR}/_ext/1360937237/queue.o: ../src/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/queue.o.d" -o ${OBJECTDIR}/_ext/1360937237/queue.o ../src/queue.c   
	
${OBJECTDIR}/_ext/1360937237/tasks.o: ../src/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/tasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/tasks.o ../src/tasks.c   
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/timers.o ../src/timers.c   
	
${OBJECTDIR}/_ext/1360937237/uart.o: ../src/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart.o ../src/uart.c   
	
${OBJECTDIR}/_ext/1360937237/utask.o: ../src/utask.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/utask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/utask.o.d" -o ${OBJECTDIR}/_ext/1360937237/utask.o ../src/utask.c   
	
else
${OBJECTDIR}/_ext/1360937237/adc.o: ../src/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/adc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/adc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/adc.o.d" -o ${OBJECTDIR}/_ext/1360937237/adc.o ../src/adc.c   
	
${OBJECTDIR}/_ext/1360937237/croutine.o: ../src/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/croutine.o.d" -o ${OBJECTDIR}/_ext/1360937237/croutine.o ../src/croutine.c   
	
${OBJECTDIR}/_ext/1360937237/heap_1.o: ../src/heap_1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heap_1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/heap_1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/heap_1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/heap_1.o.d" -o ${OBJECTDIR}/_ext/1360937237/heap_1.o ../src/heap_1.c   
	
${OBJECTDIR}/_ext/1360937237/ktrap.o: ../src/ktrap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ktrap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ktrap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ktrap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ktrap.o.d" -o ${OBJECTDIR}/_ext/1360937237/ktrap.o ../src/ktrap.c   
	
${OBJECTDIR}/_ext/1360937237/list.o: ../src/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/list.o.d" -o ${OBJECTDIR}/_ext/1360937237/list.o ../src/list.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1360937237/port.o: ../src/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/port.o.d" -o ${OBJECTDIR}/_ext/1360937237/port.o ../src/port.c   
	
${OBJECTDIR}/_ext/1360937237/queue.o: ../src/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/queue.o.d" -o ${OBJECTDIR}/_ext/1360937237/queue.o ../src/queue.c   
	
${OBJECTDIR}/_ext/1360937237/tasks.o: ../src/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/tasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/tasks.o ../src/tasks.c   
	
${OBJECTDIR}/_ext/1360937237/timers.o: ../src/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/timers.o.d" -o ${OBJECTDIR}/_ext/1360937237/timers.o ../src/timers.c   
	
${OBJECTDIR}/_ext/1360937237/uart.o: ../src/uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/uart.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/uart.o.d" -o ${OBJECTDIR}/_ext/1360937237/uart.o ../src/uart.c   
	
${OBJECTDIR}/_ext/1360937237/utask.o: ../src/utask.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1360937237 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utask.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/utask.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/utask.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../h" -I"../../FreeRTOS/Source/include" -I"../../FreeRTOS/Source/portable/MPLAB/PIC32MX" -I"../../FreeRTOS/Source/portable/MemMang" -MMD -MF "${OBJECTDIR}/_ext/1360937237/utask.o.d" -o ${OBJECTDIR}/_ext/1360937237/utask.o ../src/utask.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_ICD3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/tempserver.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
