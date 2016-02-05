$IDNR:a9833888
$NAME:zstk_ha_mittel
$TYPE:Mech_Typ

!
!Aend.-Nr:	REV:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000	A	21.03.2002	Pedrazza B.		    Ersterstellung
!109275		A	13.09.2011	v. Flotow		Syntax V2 hinzu
!
!
!--------------------------------------------------------------------------
 
!Einheiten: [mm,t]

!Geometriedaten:

!1.)ANFORDERUNGEN ELEKTRISCH (VEKTOREINGABE X, Z)


!PROGRAMMSPALTE	!KOMMENTARSPALTE


cog=3000,0      	!Schwerpunkteingabe (VEKTOR)
!                 Bei Standard Z-Stücken
!                 x Komponente = Mitte Zwischenstück
!                 z Komponente = 0

!                 MESSWERTE (ZEICHNUNGEN)

z_a=0,0		!Z_Stueck Anfang = 0,0
z_e=6000,0		!Z_Stueck Ende = Gesamtlänge

!                 BERECHNUNGSWERTE

m=0.474     	!Masse in t 

x_aw=3.89		!Windfläche bei 90° Auslegerwinkel bezogen aufs
!                 Krankoordinatensystem
!                 Windflächenberechnung auf:
!                 N/product/`Typenbezeichnung


!2.)ANFORDERUNGEN STATIK
$CRC32:a9833888.geo	e078a09a