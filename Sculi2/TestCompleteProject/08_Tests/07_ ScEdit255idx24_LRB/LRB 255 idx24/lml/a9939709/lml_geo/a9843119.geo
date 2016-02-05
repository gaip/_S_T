$IDNR:a9843119
$NAME:zstk_ha_lang
$TYPE:Mech_Typ

!
!Aend.-Nr:	REV:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000		A	28.06.2007	Dietze R.		Ersterstellung
!109275		A	14.09.2011	v. Flotow		Syntax V2!
!
!--------------------------------------------------------------------------
 
!Einheiten: [mm,t]

!Geometriedaten:

!1.)ANFORDERUNGEN ELEKTRISCH (VEKTOREINGABE X, Z)


!PROGRAMMSPALTE	!KOMMENTARSPALTE


cog=6000,0     	!Schwerpunkteingabe (VEKTOR)
!                Bei Standard Z-Stücken
!                x Komponente = Mitte Zwischenstück
!                z Komponente = 0

!                 MESSWERTE (ZEICHNUNGEN)

z_a=0,0		!Z_Stueck Anfang = 0,0
z_e=12000,0		!Z_Stueck Ende = Gesamtlänge

!                 BERECHNUNGSWERTE

m=0.875        	!Masse in t 

x_aw=7.78		!Windfläche bei 90° Auslegerwinkel bezogen aufs
!                 Krankoordinatensystem
!                 Windflächenberechnung auf:
!                 N/product/`Typenbezeichnung


!2.)ANFORDERUNGEN STATIK
$CRC32:a9843119.geo	5773a63e