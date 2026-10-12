VAR
	I: INT;
	FB_6: SE_TBX.FB_Scaling;
	FB_5: SE_TBX.FB_Scaling;
	FB_4: SE_TBX.FB_Scaling;
	FB_3: SE_TBX.FB_Scaling;
	FB_2: SE_TBX.FB_Scaling;
	FB_1: SE_TBX.FB_Scaling;
	FB_0: SE_TBX.FB_Scaling;;
END_VAR

IF NOT(IX0_0) THEN
	Timers();
	IF 	T0_STATE = TRUE AND Readed = FALSE THEN
		RS232Read:= TRUE;
		SndRecvRS232();
		Readed:= TRUE;
	END_IF
	Timers();
	IF T0_STATE = FALSE AND T1_STATE = TRUE THEN
		RS232Read:= FALSE;
		Readed:= FALSE;
	END_IF
	Timers();
	IF T2_STATE = TRUE AND Sended = FALSE THEN	
		RS232Send:= TRUE;
		SndRecvRS232();
		Sended:= TRUE;
	END_IF
	Timers();
	IF T1_STATE = FALSE AND T2_STATE = FALSE THEN
		RS232Send:= FALSE;
		Sended:= FALSE;
	END_IF
	
	FOR I:= 1 TO 5 BY 1 DO
		InRandActual[I]:= InMASS[I+64];
	END_FOR
	
	InStrRandActual:= ArrayOfByte_TO_String(i_abyIput:= InRandActual, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
	IF 	InStrRandActual = InStrRandBefore THEN
		StopReadTrig:= TRUE;
	ELSE
		StopReadTrig:= FALSE;
	END_IF
	
	//Reading data
	IF 	STOP_Read = TRUE THEN
		FOR I:= 1 TO 70 BY 1 DO
			InMASS[I]:= 48;
		END_FOR
	END_IF
	
	IF 	InMASS[1] = 83 AND InMASS[70] = 70 OR STOP_Read = TRUE THEN
		IF 	InMASS[2] = 49 THEN
			CAN_SET_ArcOn:= TRUE;
		ELSE
			CAN_SET_ArcOn:= FALSE;
		END_IF
		IF 	InMASS[3] = 49 THEN
			CAN_SET_RobotReady:= TRUE;
		ELSE
			CAN_SET_RobotReady:= FALSE;
		END_IF
		IF 	InMASS[4] = 49 THEN
			CAN_SET_OperMode_0:= TRUE;
		ELSE
			CAN_SET_OperMode_0:= FALSE;
		END_IF
		IF 	InMASS[5] = 49 THEN
			CAN_SET_OperMode_1:= TRUE;
		ELSE
			CAN_SET_OperMode_1:= FALSE;
		END_IF
		IF 	InMASS[6] = 49 THEN
			CAN_SET_OperMode_2:= TRUE;
		ELSE
			CAN_SET_OperMode_2:= FALSE;
		END_IF
		IF 	InMASS[7] = 49 THEN
			CAN_SET_AnalogSwap:= TRUE;
		ELSE
			CAN_SET_AnalogSwap:= FALSE;
		END_IF
		IF 	InMASS[8] = 49 THEN
			CAN_SET_ProtocolMode:= TRUE;
		ELSE
			CAN_SET_ProtocolMode:= FALSE;
		END_IF
		IF 	InMASS[9] = 49 THEN
			CAN_SET_GasTest:= TRUE;
		ELSE
			CAN_SET_GasTest:= FALSE;
		END_IF
		IF 	InMASS[10] = 49 THEN
			CAN_SET_WireInching:= TRUE;
		ELSE
			CAN_SET_WireInching:= FALSE;
		END_IF
		IF 	InMASS[11] = 49 THEN
			CAN_SET_WireRetract:= TRUE;
		ELSE
			CAN_SET_WireRetract:= FALSE;
		END_IF
		IF 	InMASS[12] = 49 THEN
			CAN_SET_SourceErrReset:= TRUE;
		ELSE
			CAN_SET_SourceErrReset:= FALSE;
		END_IF
		IF 	InMASS[13] = 49 THEN
			CAN_SET_TouchSensing:= TRUE;
		ELSE
			CAN_SET_TouchSensing:= FALSE;
		END_IF
		IF 	InMASS[14] = 49 THEN
			CAN_SET_BlowTrough:= TRUE;
		ELSE
			CAN_SET_BlowTrough:= FALSE;
		END_IF
		IF 	InMASS[15] = 49 THEN
			CAN_SET_JOB_0:= TRUE;
		ELSE
			CAN_SET_JOB_0:= FALSE;
		END_IF
		IF 	InMASS[16] = 49 THEN
			CAN_SET_JOB_1:= TRUE;
		ELSE
			CAN_SET_JOB_1:= FALSE;
		END_IF
		IF 	InMASS[17] = 49 THEN
			CAN_SET_JOB_2:= TRUE;
		ELSE
			CAN_SET_JOB_2:= FALSE;
		END_IF
		IF 	InMASS[18] = 49 THEN
			CAN_SET_JOB_3:= TRUE;
		ELSE
			CAN_SET_JOB_3:= FALSE;
		END_IF
		IF 	InMASS[19] = 49 THEN
			CAN_SET_JOB_4:= TRUE;
		ELSE
			CAN_SET_JOB_4:= FALSE;
		END_IF
		IF 	InMASS[20] = 49 THEN
			CAN_SET_JOB_5:= TRUE;
		ELSE
			CAN_SET_JOB_5:= FALSE;
		END_IF
		IF 	InMASS[21] = 49 THEN
			CAN_SET_JOB_6:= TRUE;
		ELSE
			CAN_SET_JOB_6:= FALSE;
		END_IF
		IF 	InMASS[22] = 49 THEN
			CAN_SET_JOB_7:= TRUE;
		ELSE
			CAN_SET_JOB_7:= FALSE;
		END_IF
		IF 	InMASS[23] = 49 THEN
			CAN_SET_WeldSim:= TRUE;
		ELSE
			CAN_SET_WeldSim:= FALSE;
		END_IF
		IF 	InMASS[24] = 49 THEN
			CAN_SET_AnalogSetDis_0:= TRUE;
		ELSE
			CAN_SET_AnalogSetDis_0:= FALSE;
		END_IF
		IF 	InMASS[25] = 49 THEN
			CAN_SET_AnalogSetDis_1:= TRUE;
		ELSE
			CAN_SET_AnalogSetDis_1:= FALSE;
		END_IF
		IF 	InMASS[26] = 49 THEN
			CAN_SET_AnalogSetDis_2:= TRUE;
		ELSE
			CAN_SET_AnalogSetDis_2:= FALSE;
		END_IF
		IF 	InMASS[27] = 49 THEN
			CAN_SET_AnalogSetDis_3:= TRUE;
		ELSE
			CAN_SET_AnalogSetDis_3:= FALSE;
		END_IF
		IF 	InMASS[28] = 49 THEN
			CAN_SET_AnalogSetDis_4:= TRUE;
		ELSE
			CAN_SET_AnalogSetDis_4:= FALSE;
		END_IF
		IF 	InMASS[29] = 49 THEN
			CAN_SET_AnalogSetDis_5:= TRUE;
		ELSE
			CAN_SET_AnalogSetDis_5:= FALSE;
		END_IF
		IF 	InMASS[30] = 49 THEN
			CAN_SET_DC_AC_Disable:= TRUE;
		ELSE
			CAN_SET_DC_AC_Disable:= FALSE;
		END_IF
		IF 	InMASS[31] = 49 THEN
			CAN_SET_PLS_Disable:= TRUE;
		ELSE
			CAN_SET_PLS_Disable:= FALSE;
		END_IF
		IF 	InMASS[32] = 49 THEN
			CAN_SET_DC_AC:= TRUE;
		ELSE
			CAN_SET_DC_AC:= FALSE;
		END_IF
		IF 	InMASS[33] = 49 THEN
			CAN_SET_PLS:= TRUE;
		ELSE
			CAN_SET_PLS:= FALSE;
		END_IF
		IF 	InMASS[34] = 49 THEN
			CAN_SET_PilotArc:= TRUE;
		ELSE
			CAN_SET_PilotArc:= FALSE;
		END_IF
		FOR I:= 1 TO 5 BY 1 DO
			InCurrent[I]:= InMASS[I+34];
			InWireHS[I]:= InMASS[I+39];
			InPLS[I]:= InMASS[I+44];
			InWireLS[I]:= InMASS[I+49];
			InPLGAS[I]:= InMASS[I+54];
			InSHGAS[I]:= InMASS[I+59];
		END_FOR
		InStrCurrent:= ArrayOfByte_TO_String(i_abyIput:= InCurrent, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
		InStrWireHS:= ArrayOfByte_TO_String(i_abyIput:= InWireHS, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
		InStrPLS:= ArrayOfByte_TO_String(i_abyIput:= InPLS, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
		InStrWireLS:= ArrayOfByte_TO_String(i_abyIput:= InWireLS, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
		InStrPLGAS:= ArrayOfByte_TO_String(i_abyIput:= InPLGAS, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
		InStrSHGAS:= ArrayOfByte_TO_String(i_abyIput:= InSHGAS, i_xOrdr:= TRUE , i_xSpce:=  FALSE);
		//Set Current
		IR_Current:= STRING_TO_REAL(InStrCurrent);
		FB_0( i_xEn:= TRUE,i_rIput:= IR_Current,i_rMinIput:= 0.0,i_rMaxIput:= 500.0,i_rMinOput:= 0.0,i_rMaxOput:= 65535.0,q_rOput=> OR_Current);
		CAN_SET_WeldCurrent:= REAL_TO_UINT(OR_Current);
		//Set Wire High Speed
		IR_WireHS:= STRING_TO_REAL(InStrWireHS);
		FB_0( i_xEn:= TRUE,i_rIput:= IR_WireHS,i_rMinIput:= -10.0,i_rMaxIput:= 10.0,i_rMinOput:= 0.0,i_rMaxOput:= 65535.0,q_rOput=> OR_WireHS);
		CAN_SET_WireHighSpd:= REAL_TO_UINT(OR_WireHS);
		//Set Pulse Raito
		IR_PLS:= STRING_TO_REAL(InStrPLS);
		FB_0( i_xEn:= TRUE,i_rIput:= IR_PLS,i_rMinIput:= 0.0,i_rMaxIput:= 100.0,i_rMinOput:= 0.0,i_rMaxOput:= 65535.0,q_rOput=> OR_PLS);
		CAN_SET_PLS_Ratio:= REAL_TO_UINT(OR_PLS);
		//Set Wire Low Speed
		IR_WireLS:= STRING_TO_REAL(InStrWireLS);
		FB_0( i_xEn:= TRUE,i_rIput:= IR_WireLS,i_rMinIput:= -10.0,i_rMaxIput:= 10.0,i_rMinOput:= 0.0,i_rMaxOput:= 65535.0,q_rOput=> OR_WireLS);
		CAN_SET_WireLowSpd:= REAL_TO_UINT(OR_WireLS);	
		//Set Plasma Gas Flow
		IR_PLGAS:= STRING_TO_REAL(InStrPLGAS);
		FB_0( i_xEn:= TRUE,i_rIput:= IR_PLGAS,i_rMinIput:= 0.0,i_rMaxIput:= 10.0,i_rMinOput:= 0.0,i_rMaxOput:= 65535.0,q_rOput=> OR_PLGAS);
		CAN_SET_PlasmaGasFlow:= REAL_TO_UINT(OR_PLGAS);	
		//Set Shield Gas Flow
		IR_SHGAS:= STRING_TO_REAL(InStrSHGAS);
		FB_0( i_xEn:= TRUE,i_rIput:= IR_SHGAS,i_rMinIput:= 0.0,i_rMaxIput:= 30.0,i_rMinOput:= 0.0,i_rMaxOput:= 65535.0,q_rOput=> OR_SHGAS);
		CAN_SET_ShieldGasFlow:= REAL_TO_UINT(OR_SHGAS);
	END_IF
	//Reading data
	
	//Sending data
	OutMASS[1]:= 83;
	IF 	CAN_GET_CurrFlow = TRUE THEN
		OutMASS[2]:= 49;
	ELSE
		OutMASS[2]:= 48;
	END_IF
	IF 	CAN_GET_ProcActive = TRUE THEN
		OutMASS[3]:= 49;
	ELSE
		OutMASS[3]:= 48;
	END_IF
	IF 	CAN_GET_MainCurrent = TRUE THEN
		OutMASS[4]:= 49;
	ELSE
		OutMASS[4]:= 48;
	END_IF
	IF 	CAN_GET_CollisProtect = TRUE THEN
		OutMASS[5]:= 49;
	ELSE
		OutMASS[5]:= 48;
	END_IF
	IF 	CAN_GET_PowSourReady = TRUE THEN
		OutMASS[6]:= 49;
	ELSE
		OutMASS[6]:= 48;
	END_IF
	IF 	CAN_GET_Commun_Ready = TRUE THEN
		OutMASS[7]:= 49;
	ELSE
		OutMASS[7]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_0 = TRUE THEN
		OutMASS[8]:= 49;
	ELSE
		OutMASS[8]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_1 = TRUE THEN
		OutMASS[9]:= 49;
	ELSE
		OutMASS[9]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_2 = TRUE THEN
		OutMASS[10]:= 49;
	ELSE
		OutMASS[10]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_3 = TRUE THEN
		OutMASS[11]:= 49;
	ELSE
		OutMASS[11]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_4 = TRUE THEN
		OutMASS[12]:= 49;
	ELSE
		OutMASS[12]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_5 = TRUE THEN
		OutMASS[13]:= 49;
	ELSE
		OutMASS[13]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_6 = TRUE THEN
		OutMASS[14]:= 49;
	ELSE
		OutMASS[14]:= 48;
	END_IF
	IF 	CAN_GET_ErrNumber_7 = TRUE THEN
		OutMASS[15]:= 49;
	ELSE
		OutMASS[15]:= 48;
	END_IF
	IF 	CAN_GET_PLS_Sync = TRUE THEN
		OutMASS[16]:= 49;
	ELSE
		OutMASS[16]:= 48;
	END_IF
	IF 	CAN_GET_PilotArc = TRUE THEN
		OutMASS[17]:= 49;
	ELSE
		OutMASS[17]:= 48;
	END_IF
	IF 	CAN_GET_StikingRem = TRUE THEN
		OutMASS[18]:= 49;
	ELSE
		OutMASS[18]:= 48;
	END_IF
	IF 	CAN_GET_WireAvailale = TRUE THEN
		OutMASS[19]:= 49;
	ELSE
		OutMASS[19]:= 48;
	END_IF
	
	FB_1( i_xEn:= TRUE,i_rIput:= UINT_TO_REAL(CAN_GET_WeldVoltage),i_rMinIput:= 0.0,i_rMaxIput:= 65535.0,i_rMinOput:= 0.0,i_rMaxOput:= 100.0,q_rOput=> R_GET_WeldVoltage);
	FB_2( i_xEn:= TRUE,i_rIput:= UINT_TO_REAL(CAN_GET_WeldCurrent),i_rMinIput:= 0.0,i_rMaxIput:= 65535.0,i_rMinOput:= 0.0,i_rMaxOput:= 1000.0,q_rOput=> R_GET_WeldCurrent);
	FB_3( i_xEn:= TRUE,i_rIput:= UINT_TO_REAL(CAN_GET_MotorCurrent),i_rMinIput:= 0.0,i_rMaxIput:= 65535.0,i_rMinOput:= 0.0,i_rMaxOput:= 5.0,q_rOput=> R_GET_MotorCurrent);
	FB_4( i_xEn:= TRUE,i_rIput:= UINT_TO_REAL(CAN_GET_WireFeedSPD),i_rMinIput:= 0.0,i_rMaxIput:= 65535.0,i_rMinOput:= -12.5,i_rMaxOput:= 12.5,q_rOput=> R_GET_WireFeedSPD);
	FB_5( i_xEn:= TRUE,i_rIput:= UINT_TO_REAL(CAN_GET_PlasmaGasFlw),i_rMinIput:= 0.0,i_rMaxIput:= 65535.0,i_rMinOput:= 0.0,i_rMaxOput:= 10.0,q_rOput=> R_GET_PlasmaGasFlw);
	FB_6( i_xEn:= TRUE,i_rIput:= UINT_TO_REAL(CAN_GET_ShieldGasFlw),i_rMinIput:= 0.0,i_rMaxIput:= 65535.0,i_rMinOput:= 0.0,i_rMaxOput:= 30.0,q_rOput=> R_GET_ShieldGasFlw);
	S_GET_WeldVoltage:= REAL_TO_STRING(R_GET_WeldVoltage);
	S_GET_WeldCurrent:= REAL_TO_STRING(R_GET_WeldCurrent);
	S_GET_MotorCurrent:= REAL_TO_STRING(R_GET_MotorCurrent);
	S_GET_WireFeedSPD:= REAL_TO_STRING(R_GET_WireFeedSPD);
	S_GET_PlasmaGasFlw:= REAL_TO_STRING(R_GET_PlasmaGasFlw);
	S_GET_ShieldGasFlw:= REAL_TO_STRING(R_GET_ShieldGasFlw);
	WeldVoltageMASS:= String_TO_ArrayOfByte(i_sIput:= S_GET_WeldVoltage,i_xOrdr:= TRUE);
	WeldCurrentMASS:= String_TO_ArrayOfByte(i_sIput:= S_GET_WeldCurrent,i_xOrdr:= TRUE);
	MotorCurrentMASS:= String_TO_ArrayOfByte(i_sIput:= S_GET_MotorCurrent,i_xOrdr:= TRUE);
	WireFeedSPDMASS:= String_TO_ArrayOfByte(i_sIput:= S_GET_WireFeedSPD,i_xOrdr:= TRUE);
	PlasmaGasFlwMASS:= String_TO_ArrayOfByte(i_sIput:= S_GET_PlasmaGasFlw,i_xOrdr:= TRUE);
	ShieldGasFlwMASS:= String_TO_ArrayOfByte(i_sIput:= S_GET_ShieldGasFlw,i_xOrdr:= TRUE);
	
	FOR I:= 1 TO 5 BY 1 DO
		OutMASS[I+19]:= WeldVoltageMASS[I];
		OutMASS[I+24]:= WeldCurrentMASS[I];
		OutMASS[I+29]:= MotorCurrentMASS[I];
		OutMASS[I+34]:= WireFeedSPDMASS[I];
		OutMASS[I+39]:= PlasmaGasFlwMASS[I];
		OutMASS[I+44]:= ShieldGasFlwMASS[I];
	END_FOR;
	
	IF 	LEN(S_GET_WeldVoltage) = 3 THEN
		OutMASS[23]:= 48;
		OutMASS[24]:= 48;
	ELSIF LEN(S_GET_WeldVoltage) = 4 THEN
		OutMASS[24]:= 48;
	END_IF
	IF 	LEN(S_GET_WeldCurrent) = 3 THEN
		OutMASS[28]:= 48;
		OutMASS[29]:= 48;
	ELSIF LEN(S_GET_WeldCurrent) = 4 THEN
		OutMASS[29]:= 48;
	END_IF
	IF 	LEN(S_GET_MotorCurrent) = 3 THEN
		OutMASS[33]:= 48;
		OutMASS[34]:= 48;
	ELSIF LEN(S_GET_MotorCurrent) = 4 THEN
		OutMASS[34]:= 48;
	END_IF
	IF 	LEN(S_GET_WireFeedSPD) = 3 THEN
		OutMASS[38]:= 48;
		OutMASS[39]:= 48;
	ELSIF LEN(S_GET_WireFeedSPD) = 4 THEN
		OutMASS[39]:= 48;
	END_IF
	IF 	LEN(S_GET_PlasmaGasFlw) = 3 THEN
		OutMASS[43]:= 48;
		OutMASS[44]:= 48;
	ELSIF LEN(S_GET_PlasmaGasFlw) = 4 THEN
		OutMASS[44]:= 48;
	END_IF
	IF 	LEN(S_GET_ShieldGasFlw) = 3 THEN
		OutMASS[48]:= 48;
		OutMASS[49]:= 48;
	ELSIF LEN(S_GET_ShieldGasFlw) = 4 THEN
		OutMASS[49]:= 48;
	END_IF
	OutMASS[50]:= 70;
	//Sending data
	InStrRandBefore:= InStrRandActual;
END_IF
