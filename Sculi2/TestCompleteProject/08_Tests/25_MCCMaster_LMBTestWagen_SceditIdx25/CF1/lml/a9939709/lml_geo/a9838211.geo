$IDNR:a9838211
$NAME:kopf_ha_845_mit_RUNNER_20t
$TYPE:Mech_Typ
!			Neukonstruktion, S-Kopf, HS 855HD 
!
!Aend.-Nr:	REV:	Datum:		Name:		Aend.-Beschreibung:
!------------------------------------------------------------------------------------------------------------------------------------------------------
!00000			09/06/2005	R.Dietze	Ersterstellung
!48668			28.03.2006	M.Stoss		f_hs hinzu
!109275		A	13.09.2011	v. Flotow	Syntax V2
!
!-----------------------------------------------------------------------------------------
!Einheiten: [mm, t,]
 
!Geometriedaten:

kopf_a=0,0
kopf_typ=2	! 1= Klappe(LR); 2= Ratsche (HS)
f_hpt=4590,710	!Anlenkpunkt Fixseil HPT z
f_fix=0,550	!Anlenkung der Haltestangen beim Betrieb mit fixer Nadel
o_hs=4980,270	!hintere Rolle Hubseil
u_hs=7253,-1623	!vordere Rolle Hubseil
f_hs=6830,-1561	!Fixpunkt Hubseil Runner
d_rolle=834	!Rollendurchmesser vordere Rolle
d_o_hs=834	!Rollendurchmesser hintere Rolle
a_ndl=4980,270	!Anlenkpkunt NDL z

end= 5500,0

rfs2=0,0	!Anlenkpunkt RFS 2 z
rfs3=0,0	!Anlenkpunkt RFS 3 z

!Windflaechen 
x_aw=3.8

!Schwerpunktsdaten:
cog=5292,-628	!Schwerpunktlage (inkl. Kopf laut Standard geofile & Halteseilanteil & Runner)
		!& Haken 500kg in vorderer HPT Rolle 
!Bauteilmasse:
m=2.35		!Masse in t, inkl. Rollensatz 919665014 & Halteseilanteil  & Runner & 					!Haken 500kg
$CRC32:a9838211.geo	e5f2917c