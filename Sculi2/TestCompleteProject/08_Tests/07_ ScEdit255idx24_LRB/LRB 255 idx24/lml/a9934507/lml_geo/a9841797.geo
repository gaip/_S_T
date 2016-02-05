$IDNR:a9841797
$NAME:uw
$TYPE:Mech_Typ
!
!Aend.-Nr: IDX:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000	0	01.02.2007	Keckeis St.	 	Ersterstellung
!
!
!
!
!--------------------------------------------------------------------------
 
!Einheiten: [mm, t,]

!Geometriedaten:


!1.)ANFORDERUNGEN ELEKTRISCH BEI ALLEN TYPEN IDENTISCH (VEKTOREINGABE X, Z)

				  
!PROGRAMMSPALTE		!KOMMENTARSPALTE

ursprung=0,0		!x=0, Drehkranz Mitte, +x Richtung Leitrad
			!y=0, Drehkranz Mitte, +y Richtung Kabine
			!z=0, Oberkante Flansch bearbeitet,+z nach oben

cog=0,-570		!Schwerpunkteingabe (VEKTOR)[y,x] 
			!Schwerpunkt UW-kpl. + Raupenbestueckung 
			!(mit 3Steg 900mm Bodenplatte B7S)

anzug_t=16		!Anzug RT am Turas 	fiktiver Wert
anzug_l=11.5		!Anzug RT am Leitrad	fiktiver Wert
bc_angle=1.8
zb=0,0

!MESSWERTE (aus Idn.983782914 ZNr.515 021 1000 010 01)

kgt=2500,-1185		!Kippkante beim Aufrichten über Turas
			!x Komponente= Abstand Turas zu x=0 
			!negativ z Komponente= Abstand Oberkante Flansch
			!zum Boden(mit 3Steg 900mm Bodenplatte B7S)


kgl=2447,-1185		!Kippkante beim Aufrichten über Leitrad
			!x Komponente= Abstand Leitrad zu x=0
			!negativ z Komponente= Abstand Oberkante Flansch
			!zum Boden(mit 3Steg 900mm Bodenplatte B7S)


! Skalare Werte in X Richtung (Bodendruckanzeige)

p_l=4947		!Abstand Turas zu Leitrad 
p_l_c=3980		!Abstand vordere zu hintere Laufrolle
p_kk=3980		!Abstand vordere zu hintere Laufrolle= p_l_c
			!Skalare Werte in Y Richtung (Bodendruckanzeige)

p_b=900			!Breite Bodenplatten
p_b_c=840		!Breite Bodenplatten ohne Schrägen li+re
p_s=3800		!Spurweite ausgefahren



!                       BERECHNUNGSWERTE

kk_f=1990,-1185    	!Kleine Kippkante, ausgefahrene Raupe
			!x Komponente= Berechnungswert 1
			!dokumentiert in Geo-Files HS885
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit 3Steg 900mm Bodenplatte B7S)


kk_b=-1990,-1185	!Kleine Kippkante, ausgefahrene Raupe, nach hinten	
			!negativ x Komponente= Berechnungswert 1
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit 3Steg 900mm Bodenplatte B7S)


m_kette=3.3		!Anteil Kette der am Boden bleibt = Berechnungswert2
			!Berechnungswert2 Dokumentiert in Geo- Files HS885

m=21			!Masse Uwkpl. inkl. Raupenbestueckung ohne m_kette


x_aw=0			!Die Windfläche wird bei dieser Baugruppe in der 
			!Elektrik nicht berücksichtigt daher immer auf 0

!2.)ANFORDERUNGEN ELEKTRISCH TYPENABHÄNGIG (ZUM  AUSDOKUMENTIEREN`!`) 


!MESSWERTE (aus Idn.983782914 ZNr.515 021 1000 010 01)

p_ks=2300		!Spurweite eingefahren (Bodendruckanzeige)


! BERECHNUNGSWERTE


kk_k_f=1240,-1185	!Kleine Kippkante, eingefahrene Raupe
			!x Komponente= Berechnungswert 3
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit 3Steg 900mmBodenplatte B7S)
   


kk_k_b=-1240,-1185	!Kleine Kippkante, eingefahrene Raupe, nach hinten
			!negativ x Komponente= Berechnungswert 1
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit Flachbodenplatten)
p_k_l=4947		!Abstand Turas zu Leitrad
p_k_b=900		!Breite Bodenplatten
p_k_s=2300		!Spurweite eingefahren
p_k_kk=3980		!Abstand (theoretisch, aus 2 x KK eingefahren) 
			!vordere zu hinterer Laufrolle
			!Kippkante bei Aufrichthilfe Wert bei Elektrik noch 
			!nicht definiert


!3.)ANFORDERUNGEN STATIK BEI ALLEN TYPEN IDENTISCH (EINGABE ÜBER KOORDINATEN)
$CRC32:a9841797.geo	8dd351e1