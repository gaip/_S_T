$IDNR:a9833885
$NAME:kopf_ha
$TYPE:Mech_Typ
!			Kran, Kunststoffseilrollen, HS 843HD 
!
!Aend.-Nr:	REV:	Datum:		Name:		Aend.-Beschreibung:
!-------------------------------------------------------------------------------------------------------------------------
!00000		21.03.2002	Pedrazza B.	Ersterstellung
!M27073		21.05.2003	Dietze R.	Parameter d_o_hs hinzu
!M36115		21.06.2004	R.Dietze	kopf_typ hinzu
!M48668		06.03.2006	M.Stoﬂ		f_hs hinzu
!M79275		14.01.2009	M.Stoﬂ		f_hs richtig gestellt
!109275		A	13.09.2011	v. Flotow	Syntax V2 hinzu
!--------------------------------------------------------------------------------------------------------------------------
 
!Einheiten: [mm, t,]

!Geometriedaten:

kopf_a=0,0
kopf_typ=2		! 1= Klappe(LR); 2= Ratsche (HS)
f_hpt=4590,710      	!Anlenkpunkt Fixseil HPT z
f_fix=246,681  		!Anlenkung der Haltestangen beim Betrieb mit fixer Nadel
o_hs=4980,270        	!hintere Rolle Hubseil
u_hs=5500,-660       	!vordere Rolle Hubseil
f_hs=4590,-350		!Fixpunkt Hubseil
d_rolle=740        	!Rollendurchmesser vordere Rolle
d_o_hs=830		!Rollendurchmesser hintere Rolle

a_ndl=4980,270       	!Anlenkpkunt NDL z

end= 5500,0

!rfs2=0,0         	!Anlenkpunkt RFS 2 z
!rfs3=0,0         	!Anlenkpunkt RFS 3 z

!Windflaechen 
x_aw=3.87

!Schwerpunktsdaten:
cog=4147,-78      	!Schwerpunktlage (inkl. Rollensatz)

!Bauteilmasse:
m=1.19             	!Masse in t, inkl. Rollensatz
$CRC32:a9833885.geo	e0b22d13