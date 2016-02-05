$IDNR:a9832817
$NAME:kopf_ha_90to
$TYPE:Mech_Typ
!			Neukonstruktion, S-Kopf, HS 855HD 
!
!Aend.-Nr:	REV:	Datum:		Name:		Aend.-Beschreibung:
!--------------------------------------------------------------------------------------------------------------
!00000	A	04.07.2001		R.Dietze		Ersterstellung
!19088		06.12.2001		R.Dietze		Gewicht angepaﬂt
!27073		17.03.2003		G.Wernautz		Werte Fixseillaenge 15/30∞hinzu + Durchmesser obere Rolle hinzu
!36115		21.06.2004		R.Dietze		kopf_typ hinzu
!49683		21.02.2006		M.Stoss			f_hs hinzu
!--------------------------------------------------------------------------------------------------------------
!Einheiten: [mm, t,]
 
!Geometriedaten:

kopf_a=0,0
kopf_typ=2		! 1= Klappe(LR); 2= Ratsche (HS)
f_hpt=4590,710      	!Anlenkpunkt Fixseil HPT z
f_fix=0,550    		!Anlenkung der Haltestangen beim Betrieb mit fixer Nadel
o_hs=4980,270        	!hintere Rolle Hubseil
u_hs=5500,-660       	!vordere Rolle Hubseil
f_hs=4588,-350		!Fixpunkt Hubseil
d_rolle=834        	!Rollendurchmesser vordere Rolle
d_o_hs=834		!Rollendurchmesser hintere Rolle
a_ndl=4980,270       	!Anlenkpkunt NDL z

end= 5500,0

rfs2=0,0         	!Anlenkpunkt RFS 2 z
rfs3=0,0         	!Anlenkpunkt RFS 3 z

!Windflaechen 
x_aw=3.8

!Schwerpunktsdaten:
cog=4500,-100     	!Schwerpunktlage (inkl. Rollensatz)

!Bauteilmasse:
m=1.78             	!Masse in t, inkl. Rollensatz
$CRC32:a9832817.geo	a5c83244