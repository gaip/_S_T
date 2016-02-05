$IDNR:a10592493
$NAME:ow_LRB_255
$TYPE:Mech_Typ
!
!Aend.-Nr:	REV:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000		A	23.02.2012	v. Flotow		Ersterstellung
!--------------------------------------------------------------------------
 
!Einheiten: [mm, t,]

!Geometriedaten:

!1.)ANFORDERUNGEN ELEKTRISCH BEI ALLEN TYPEN IDENTISCH (VEKTOREINGABE X, Z)


!PROGRAMMSPALTE		!KOMMENTARSPALTE

ow_ursprung=0,0		!x=0, Symmetrieebene zwischen Anlenkpunkten
!                       y=0, Anlenkachse, y+ Richtung Kabine
!                       z=0, Symmetrieebene zwischen Anlenkpunkten
!                       z+ nach oben


cog=-2160,78		!Schwerpunkteingabe (VEKTOR)
!                       Falls keine Zusammenbauzeichnung
!                       Excel Berechnung Pfad:
!                       \\:N/product/`Typenbezeichnung`/


!                       MESSWERTE (ZEICHNUNGEN)

hw_1=-2125,525          !Mitte Hubwinde 1 
mitte_hw1=-2125,525     !Mitte Hubwinde 1=hw_1
anl_hs=-2125,525        !Anlenkung Hubseil (Auf Mitte Winde) 

hw_2=-875,525           !Mitte Hubwinde 2
mitte_hw2=-875,525      !Mitte Hubwinde 2=hw_2

ezw=-4685,690           !Mitte  Einziehwinde


rod=-1200,-455          !negative x Komponente= Mitte Rollendrehkranz
!                        negative z Komponente= Unterkante OW Flansch


x_rod=-1200		      !negative x Komponente= Mitte Rollendrehkranz  

mitteDkranz=-1200,-455  !für Radiusberechnung
!                        negative x Komponente= Mitte Rollendrehkranz
!                        negative z Komponente= Unterkante OW Flansch

rfs1=-1443,1320         !Anlenkung der Rückfallstütze 1 am Oberwagen
!                       (physisch am A-Bock angebolzt) 
gg=-4957,363        	!Anlenkpunkt Gegengewicht (Bolzpunkt)


!                       BERECHNUNGSWERTE


m=12.3         		!Masse in t 
!                       Stahlbau und Einbauten ohne GG, ROD U. WINDEN


x_aw=0			!Die Windfläche wird bei dieser Baugruppe in der 
!                       Elektrik nicht berücksichtigt daher immer auf 0



!2.)ANFORDERUNGEN ELEKTRISCH TYPENABHÄNGIG (ZUM AUSDOKUMENTIEREN ´!`)

!                       MESSWERTE (ZEICHNUNGEN)

abock1=-1500,1164     	!Mitte A-Bock-Anlenkung 	
stuetz=-4940,1010       !=A-Bock-Abstuetzgestaenge(Laschen+Doppellaschen)

!rfs4=0000,0000       	!Anlenkung der RFS-Derrick an OW 
!der=0000,0000        	!Mitte Derrick-Anlenkung 



!3.)ANFORDERUNGEN STATIK BEi ALLEN TYPEN IDENTISCH (EINGABE ÜBER KOORDINATEN)
$CRC32:a10592493.geo	de1a93f4