$IDNR:a10592553
$NAME:uw_LRB_255
$TYPE:Mech_Typ
!
!Aend.-Nr: IDX:	Datum:		Name:			Aend.-Beschreibung:
!--------------------------------------------------------------------------
!00000	0	24.02.2012	v. FLotow	 	Ersterstellung
!--------------------------------------------------------------------------
 
!Einheiten: [mm, t,]

!PROGRAMMSPALTE		!KOMMENTARSPALTE

ursprung=0,0		

cog=0,-576		!Schwerpunkteingabe (VEKTOR)
bc_angle=0		!max. zulässige Drehwinkel bei "blocked crawler"
zb=0,0

kgt=2447,-1183		!Kippkante beim Aufrichten über Turas; x Komponente= Abstand Turas zu x=0; richtiger Wert wäre 2500, aber da die Software nur kontrolliert,
			!ob Aufrichten über irgendeine Kante möglich ist, setzen wir hier den Wert auf den Kleinsten.  
			!negativ z Komponente= Abstand Oberkante Flansch zum Boden

kgl=2447,-1183		!Kippkante beim Aufrichten über Leitrad; x Komponente= Abstand Leitrad zu x=0
			!negativ z Komponente= Abstand Oberkante Flansch zum Boden

p_l=4947		!Abstand Turas zu Leitrad 
p_l_c=3980		!Abstand vordere zu hintere Laufrolle
p_kk=3980		!Abstand vordere zu hintere Laufrolle= p_l_c
			!Skalare Werte in Y Richtung (Bodendruckanzeige)

p_b=800			!Breite Bodenplatten
p_b_c=740		!Breite Bodenplatten ohne Schrägen li+re
p_s=3800		!Spurweite ausgefahren


kk_f=1995,-1183    	!Kleine Kippkante, ausgefahrene Raupe
			!negativ z Komponente= Abstand Oberkante Flansch zum Boden

kk_b=-1995,-1183	!Kleine Kippkante, ausgefahrene Raupe, nach hinten	
			!negativ z Komponente= Abstand Oberkante Flansch zum Boden

m_kette=1.65		!Anteil Kette der am Boden bleibt; Raupenbestueckung (992025614) = 61 Glieder davon sind ca.25 am Boden = 2.4 t
m=24.4			!Masse Uwkpl. (991793714) inkl. Raupenbestueckung (992025614) ohne m_kette 

x_aw=0			!Die Windfläche wird bei dieser Baugruppe in der Elektrik nicht berücksichtigt daher immer auf 0

p_ks=2590		!Spurweite eingefahren (Bodendruckanzeige)

kk_k_f=1390,-1183	!Kleine Kippkante, eingefahrene Raupe
			!negativ z Komponente= Abstand Oberkante Flansch zum Boden 

kk_k_b=-1390,-1183	!Kleine Kippkante, eingefahrene Raupe, nach hinten
			!negativ z Komponente= Abstand Oberkante Flansch zum Boden

p_k_l=4947		!Abstand Turas zu Leitrad
p_k_b=800		!Breite Bodenplatten
p_k_s=2590		!Spurweite eingefahren
p_k_kk=3980		!Abstand vordere zu hinterer Laufrolle
$CRC32:a10592553.geo	a3481318