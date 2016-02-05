$IDNR:a10573714
$NAME:AUSLEGERKOPF_HA
$TYPE:Mech_Typ
$SYSCODE:0808.24

!Änderung	Datum		Name		Grund	
!00000		06.07.2011	Doenz Ch.	init


!Einheiten: [mm, t,]
 
!Geometriedaten:

kopf_a=0,0
!f_hpt=6300,940         !Anlenkpunkt Fixseil HPT 
!f_fix=0,1050           !Anlenkung der Haltestangen beim Betrieb mit fixer Nadel
                       	!Bemerkung: Diese Koordinate ist nur speziell fuer TB_EL
o_hs=3500,25           	!hintere Rolle Hubseil
u_hs=3500,25       	!vordere Rolle Hubseil
f_hs=3000,-265          !Fixpunkt Hubseil (2D x,z, d.h. mittig angenommen)
d_rolle=630                !Rollendurchmesser vordere Rolle
!a_ndl=7700,-900          !Anlenkpkunt NDL
end=3500,25
!rfs2=6290,650            !Anlenkpunkt RFS 2
!rfs3=7108,681            !Anlenkpunkt RFS 3
x_aw=12                    !Windflaechen 
cog=2530,18          	   !Schwerpunktlage (inkl. Rollensatz)
m=0.74                    !Masse in t, inkl. Rollensatz 

kopf_typ=2               ! 1= Klappe(LR); 2= Ratsche (HS
$CRC32:a10573714.geo	6a36a1a3