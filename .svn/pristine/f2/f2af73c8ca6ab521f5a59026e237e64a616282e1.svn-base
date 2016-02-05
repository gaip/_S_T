$IDNR:a9835004
$NAME:uw
$TYPE:Mech_Typ
!
!Aend.-Nr: IDX:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000	0	06.02.2003	Dietze R.	 	Ersterstellung
!109275		12.09.2011	v. Flotow		Syntax V2 hinzu!
!
!--------------------------------------------------------------------------
 
!Einheiten: [mm, t,]

!Geometriedaten:


!1.)ANFORDERUNGEN ELEKTRISCH BEI ALLEN TYPEN IDENTISCH (VEKTOREINGABE X, Z)

				  
!PROGRAMMSPALTE		!KOMMENTARSPALTE

ursprung=0,0		!x=0, Drehkranz Mitte, +x Richtung Leitrad
			!y=0, Drehkranz Mitte, +y Richtung Kabine
			!z=0, Oberkante Flansch bearbeitet,+z nach oben

cog=0,-673		!Schwerpunkteingabe (VEKTOR)
anzug_t=20		!Anzug RT am Turas 	fiktiver Wert
anzug_l=20		!Anzug RT am Leitrad	fiktiver Wert
bc_angle=0
zb=0,0

!MESSWERTE (ZEICHNUNGEN)

kgt=2500,-1254		!Kippkante beim Aufrichten über Turas
			!x Komponente= Abstand Turas zu x=0 
			!negativ z Komponente= Abstand Oberkante Flansch
			!zum Boden(mit Flachbodenplatten)


kgl=2500,-1254		!Kippkante beim Aufrichten über Leitrad
			!x Komponente= Abstand Leitrad zu x=0
			!negativ z Komponente= Abstand Oberkante Flansch
			!zum Boden(mit Flachbodenplatten)


! Skalare Werte in X Richtung (Bodendruckanzeige)

p_l=5000		!Abstand Turas zu Leitrad 
p_l_c=3980		!Abstand vordere zu hintere Laufrolle
p_kk=3980		!Abstand vordere zu hintere Laufrolle= p_l_c
			!Skalare Werte in Y Richtung (Bodendruckanzeige)

p_b=700			!Breite Bodenplatten
p_b_c=640		!Breite Bodenplatten ohne Schrägen li+re
p_s=3800		!Spurweite ausgefahren



!                       BERECHNUNGSWERTE

kk_f=1995,-1254    	!Kleine Kippkante, ausgefahrene Raupe
			!x Komponente= Berechnungswert 1
			!dokumentiert in Geo-Files HS885
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit Flachbodenplatten)


kk_b=-1995,-1254	!Kleine Kippkante, ausgefahrene Raupe, nach hinten	
			!negativ x Komponente= Berechnungswert 1
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit Flachbodenplatten)


m_kette=2.2		!Anteil Kette der am Boden bleibt = Berechnungswert2
			!Berechnungswert2 Dokumentiert in Geo- Files HS885

m=17.0			!Masse Uwkpl. inkl. Raupenbestueckung ohne m_kette


x_aw=0			!Die Windfläche wird bei dieser Baugruppe in der 
			!Elektrik nicht berücksichtigt daher immer auf 0

!2.)ANFORDERUNGEN ELEKTRISCH TYPENABHÄNGIG (ZUM  AUSDOKUMENTIEREN`!`) 


!MESSWERTE (ZEICHNUNGEN)

p_ks=2200		!Spurweite eingefahren (Bodendruckanzeige)


! BERECHNUNGSWERTE


kk_k_f=1195,-1254	!Kleine Kippkante, eingefahrene Raupe
			!x Komponente= Berechnungswert 3
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit Flachbodenplatten)
   


kk_k_b=-1195,-1254	!Kleine Kippkante, eingefahrene Raupe, nach hinten
			!negativ x Komponente= Berechnungswert 1
			!negativ z Komponente= Abstand Oberkante Flansch 
			!zum Boden(mit Flachbodenplatten)
p_k_l=5000		!Abstand Turas zu Leitrad
p_k_b=700		!Breite Bodenplatten
p_k_s=2200		!Spurweite eingefahren
p_k_kk=3980		!Abstand (theoretisch, aus 2 x KK eingefahren) 
			!vordere zu hinterer Laufrolle
			!Kippkante bei Aufrichthilfe Wert bei Elektrik noch 
			!nicht definiert


!3.)ANFORDERUNGEN STATIK BEI ALLEN TYPEN IDENTISCH (EINGABE ÜBER KOORDINATEN)
$CRC32:a9835004.geo	12814c1f