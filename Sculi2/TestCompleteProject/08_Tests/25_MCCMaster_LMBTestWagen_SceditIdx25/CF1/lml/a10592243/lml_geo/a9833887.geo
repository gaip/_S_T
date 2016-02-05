$IDNR:a9833887
$NAME:zstk_ha_kurz
$TYPE:Mech_Typ

!
!Aend.-Nr:	REV:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000	A	21.03.2002		Pedrazza B.		Ersterstellung
!109275		A	13.09.2011	v. FLotow		Syntax V2 hinzu
!
!
!--------------------------------------------------------------------------
 
!Einheiten: [mm,t]

!Geometriedaten:

!1.)ANFORDERUNGEN ELEKTRISCH (VEKTOREINGABE X, Z)


!PROGRAMMSPALTE		!KOMMENTARSPALTE


cog=1500,0      	!Schwerpunkteingabe (VEKTOR)
!                 Bei Standard Z-Stücken
!                 x Komponente = Mitte Zwischenstück
!                 z Komponente = 0

!                 MESSWERTE (ZEICHNUNGEN)

z_a=0,0		!Z_Stueck Anfang = 0,0
z_e=3000,0		!Z_Stueck Ende = Gesamtlänge

!                 BERECHNUNGSWERTE

m=0.284        	!Masse in t 

x_aw=2.04		!Windfläche bei 90° Auslegerwinkel bezogen aufs
!                 Krankoordinatensystem
!                 Windflächenberechnung auf:
!                 N/product/`Typenbezeichnung


!2.)ANFORDERUNGEN STATIK
$CRC32:a9833887.geo	1e0916f9