PROGRAM PLC_PRG
VAR
	rotateL: BOOL:=FALSE;
	rotateR: BOOL:=FALSE;
	x: BYTE:=23;
	n: INT:=1;
	Ton_0:TON;
	OutBit: BYTE;
END_VAR

Ton_0 (IN:= NOT Ton_0.Q, PT:=T#1S);
IF Ton_0.Q AND rotateL THEN
	OutBit.0 :=x.7;
	x:=SHL(x,n);
	x.0:=OutBit.0;
ELSIF Ton_0.Q AND rotateR THEN
	outBit.0:=x.0;
	x:=SHR(x,n);
	x.7:=OutBit.0;	
END_IF
