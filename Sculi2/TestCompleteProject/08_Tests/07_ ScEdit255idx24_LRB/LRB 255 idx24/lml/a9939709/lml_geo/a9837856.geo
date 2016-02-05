$IDNR:a9837856
$NAME:kopf_ha
$TYPE:Mech_Typ
!			Kran, Kunststoffseilrollen, HS 843HD Anbau fixe Ndl.
!
!Aend.-Nr:	REV:	Datum:		Name:		Aend.-Beschreibung:
!-------------------------------------------------------------------------------------------------------------------------
!00000		21.03.2002	Dietze R.	Ersterstellung
!88297		11.11.2009	Stoß M.		Bauteilmasse richt gestellt 1.19 t => 1.35 t
!109275		A	13.09.2011	v. FLotow	Syntax V2 hinzu
!--------------------------------------------------------------------------------------------------------------------------
 
!Einheiten: [mm, t,]

!Geometriedaten:

kopf_a=0,0
kopf_typ=2		! 1= Klappe(LR); 2= Ratsche (HS)
f_hpt=4590,710      	!Anlenkpunkt Fixseil HPT z
f_fix=0,550  		!Anlenkung der Haltestangen beim Betrieb mit fixer Nadel
o_hs=4980,270        	!hintere Rolle Hubseil
u_hs=5500,-660       	!vordere Rolle Hubseil
f_hs=4590,-350		!Fixpunkt Hubseil 
d_rolle=744        	!Rollendurchmesser vordere Rolle
d_o_hs=744		!Rollendurchmesser hintere Rolle

a_ndl=4980,270       	!Anlenkpkunt NDL z

end= 5500,0

!rfs2=0,0         	!Anlenkpunkt RFS 2 z
!rfs3=0,0         	!Anlenkpunkt RFS 3 z

!Windflaechen 
x_aw=3.87

!Schwerpunktsdaten:
cog=4147,-78      	!Schwerpunktlage (inkl. Rollensatz)

!Bauteilmasse:
m=1.35             	!Masse in t, inkl. Rollensatz
$CRC32:a9837856.geo	b630e4f4