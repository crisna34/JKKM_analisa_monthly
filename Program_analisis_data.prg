
******************************************************************************************************
&& Tanggal valuasi
SET DATE BRITISH 
mtgval 	= CTOD('30-11-2023')


&& DATABASE
   data1	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\KLAIM_JKKJKM_112023"
   data2	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\peserta_jkkjkm_112023"
   data3	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\peserta_jkkjkm_102023"
   data4	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\datapmk_individu_072015_112023"
   data5	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\peserta_jkkjkm_122022"
   data6	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\peserta_jkkjkm_112022"
   data7	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\klaim_c110_112023"
   
&& MTM   
   mtm1		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_DATABARU"
   mtm2 	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_DATAMATCH"
   mtm3 	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_DATAKELUAR"
   mtm4		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_REALISASI_KLAIM"
   mtm5		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_DATAMUNCUL"
   mtm6		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_DATAMUTASI"
   mtm7		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_REALISASI_PMK"
   mtm8		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTM\MTM_MUTASI_END"
   
&& MTM GAPOK   
   excel1   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTMGAPOK\DATA_BARU"
   excel2   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTMGAPOK\DATA_MATCH"
   excel3   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\MTMGAPOK\DATA_KELUAR"
   
   
&& YTD   
   ytd1		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_DATABARU"
   ytd2 	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_DATAMATCH"
   ytd3 	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_DATAKELUAR"
   ytd4		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_REALISASI_KLAIM"
   ytd5		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_DATAMUNCUL"
   ytd6		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_DATAMUTASI"
   ytd7		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_REALISASI_PMK"
   ytd8		= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTD\YTD_MUTASI_END"
   
&& YOY GAPOK   
   excel4   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YOYGAPOK\DATA_BARU"
   excel5   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YOYGAPOK\DATA_MATCH"
   excel6   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YOYGAPOK\DATA_KELUAR"
   
&& ANALISIS C110 DAN JKM
   anacj1   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\1_MATCH_C110_JKM"
   anacj2   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\2_COUNT_BLMC110" 
   anacj8   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\BLMC110"
   anacj3   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\3_BLMJKM_DIBAWAH_JULI2015"
   anacj4   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\4_BLMJKM_JULI2015"
   anacj5   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\5_BLMJKM_DIATAS_JULI2015"
   anacj6   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\6_MATCH_PMK"
   anacj7   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\ANALISIS_C110_JKM\7_MATCH_PMK_KELOMPOK"
   
&& YTD GAPOK   
   excel7   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTDGAPOK\DATA_BARU"
   excel8   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTDGAPOK\DATA_MATCH"
   excel9   = "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\HASIL\YTDGAPOK\DATA_KELUAR"
   
  
  && PART OF MTM &&
   
  USE &data2
  SELECT * FROM &data2 A WHERE NOT exist (SELECT * FROM &data3 B WHERE A.notas = B.notas) INTO TABLE &mtm1
  CLOSE DATABASES
  
  USE &mtm1
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &mtm1 GROUP BY kdkelompok INTO TABLE &excel1
  COPY TO  &excel1 xl5
  CLOSE databases
  
  USE &data2
  SELECT * FROM &data2 A WHERE exist (SELECT * FROM &data3 B WHERE A.notas = B.notas) INTO TABLE &mtm2
  CLOSE DATABASES
  
  USE &mtm2
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &mtm2 GROUP BY kdkelompok INTO TABLE &excel2
  COPY TO  &excel2 xl5
  CLOSE databases
  
  USE &data3
  SELECT * FROM &data3 A WHERE NOT exist (SELECT * FROM &data2 B WHERE A.notas = B.notas) INTO TABLE &mtm3
  CLOSE DATABASES
  
  USE &mtm3
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &mtm3 GROUP BY kdkelompok INTO TABLE &excel3
  COPY TO  &excel3 xl5
  CLOSE databases
  
  USE &data1
  SELECT KEJADIAN, COUNT(*) AS PST FROM &data1 A WHERE KEJADIAN IN ('J100' , 'G200') AND EXIST (SELECT * FROM &mtm3 B WHERE A.NOTAS = B.NOTAS) GROUP BY KEJADIAN INTO TABLE &mtm4
  CLOSE databases
  
  USE &data1
  SELECT KEJADIAN, COUNT(*) AS PST FROM &data1 A WHERE KEJADIAN IN ('J100' , 'G200') AND NOT EXIST (SELECT * FROM &mtm3 B WHERE A.NOTAS = B.NOTAS) GROUP BY KEJADIAN INTO TABLE &mtm5
  CLOSE DATABASES
  
  USE &mtm3
  SELECT * FROM &mtm3 a WHERE NOT exist (SELECT * FROM &data1 B WHERE KEJADIAN IN ('J100' , 'G200') AND a.notas=b.notas) INTO TABLE &mtm6
  CLOSE DATABASES 
  
  USE &data4
  SELECT kejadian, COUNT(*) as pst FROM &data4 a WHERE kejadian in ('B110', 'C110','D110') AND exist (SELECT * FROM &mtm6 b WHERE a.notas=b.notas) GROUP BY kejadian INTO TABLE &mtm7
  CLOSE DATABASES
  
  USE &mtm6
  SELECT COUNT(*) AS Pst from &mtm6 a WHERE NOT exist (SELECT * FROM &data4 b WHERE kejadian in ('B110', 'C110','D110') AND a.notas = b.notas) INTO TABLE &mtm8
  CLOSE DATABASES
  
  
  && PART OF YTD &&
  
  USE &data2
  SELECT KDKELOMPOK, COUNT(*) AS PST FROM &data2 A WHERE NOT exist (SELECT * FROM &data5 B WHERE A.notas = B.notas) GROUP BY KDKELOMPOK INTO TABLE &ytd1
  CLOSE DATABASES
  
  USE &data2
  SELECT COUNT(*) as PST FROM &data2 A WHERE exist (SELECT * FROM &data5 B WHERE A.notas = B.notas) INTO TABLE &ytd2
  CLOSE DATABASES
  
  USE &data5
  SELECT * FROM &data5 A WHERE NOT exist (SELECT * FROM &data2 B WHERE A.notas = B.notas) INTO TABLE &ytd3
  CLOSE DATABASES
  
  USE &data1
  SELECT KEJADIAN, COUNT(*) AS PST FROM &data1 A WHERE KEJADIAN IN ('J100' , 'G200') AND EXIST (SELECT * FROM &ytd3 B WHERE A.NOTAS = B.NOTAS) GROUP BY KEJADIAN INTO TABLE &ytd4
  CLOSE databases
  
  USE &data1
  SELECT KEJADIAN, COUNT(*) AS PST FROM &data1 A WHERE KEJADIAN IN ('J100' , 'G200') AND NOT EXIST (SELECT * FROM &ytd3 B WHERE A.NOTAS = B.NOTAS) GROUP BY KEJADIAN INTO TABLE &ytd5
  CLOSE DATABASES
  
  USE &ytd3
  SELECT * FROM &ytd3 a WHERE NOT exist (SELECT * FROM &data1 B WHERE KEJADIAN IN ('J100' , 'G200') AND a.notas=b.notas) INTO TABLE &ytd6
  CLOSE DATABASES 
  
  USE &ytd6
  SELECT COUNT(*) as pst FROM &ytd6 a WHERE exist (SELECT * FROM &data4 b WHERE a.notas=b.notas) INTO TABLE &ytd7
  CLOSE DATABASES
  
  USE &ytd6
  SELECT COUNT(*) as pst FROM &ytd6 a WHERE not exist (SELECT * FROM &data4 b WHERE a.notas=b.notas) INTO TABLE &ytd8
  CLOSE DATABASES
  
  
  && PART OF YOY &&
  
  USE &data2
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &data2 A WHERE NOT exist (SELECT * FROM &data6 B WHERE A.notas = B.notas) GROUP BY kdkelompok INTO TABLE &excel4
  COPY TO &excel4 xl5
  CLOSE DATABASES 
  
  USE &data2
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &data2 A WHERE exist (SELECT * FROM &data6 B WHERE A.notas = B.notas) GROUP BY kdkelompok INTO TABLE &excel5
  COPY TO &excel5 xl5
  CLOSE DATABASES 
  
  USE &data6
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &data6 A WHERE NOT exist (SELECT * FROM &data2 B WHERE A.notas = B.notas) GROUP BY kdkelompok INTO TABLE &excel6
  COPY TO &excel6 xl5
  CLOSE DATABASES 
  
   && PART OF YTDGAPOK &&
  
  USE &data2
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &data2 A WHERE NOT exist (SELECT * FROM &data5 B WHERE A.notas = B.notas) GROUP BY kdkelompok INTO TABLE &excel7
  COPY TO &excel7 xl5
  CLOSE DATABASES 
  
  USE &data2
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &data2 A WHERE exist (SELECT * FROM &data5 B WHERE A.notas = B.notas) GROUP BY kdkelompok INTO TABLE &excel8
  COPY TO &excel8 xl5
  CLOSE DATABASES 
  
  USE &data5
  SELECT kdkelompok, COUNT(*) as pst, SUM(gapok) FROM &data5 A WHERE NOT exist (SELECT * FROM &data2 B WHERE A.notas = B.notas) GROUP BY kdkelompok INTO TABLE &excel9
  COPY TO &excel9 xl5
  CLOSE DATABASES 
  
  
  && PART OF ANALISIS C110 JKM &&
  
   USE &data1
  SELECT YEAR(Tglkej) AS TAHUN, COUNT(*) AS PESERTA FROM &data1 a WHERE kejadian = 'J100' AND exist (select * FROM &data7 b WHERE a.notas=b.notas) GROUP BY TAHUN INTO TABLE &anacj1
  COPY TO &anacj1 xl5
  CLOSE DATABASES
  
  USE &data1
  SELECT * FROM &data1 a WHERE kejadian = 'J100' AND NOT exist (select * FROM &data7 b WHERE a.notas=b.notas) INTO TABLE &anacj8
  CLOSE DATABASES
  
  USE &data1
  SELECT YEAR(Tglkej) AS TAHUN, COUNT(*) AS PESERTA FROM &data1 a WHERE kejadian = 'J100' AND NOT exist (select * FROM &data7 b WHERE a.notas=b.notas) GROUP BY TAHUN INTO TABLE &anacj2
  CLOSE DATABASES
  
  USE &data7
  SELECT count(*) FROM &data7 A WHERE (Tglkej)<DATE(2015,07,01) AND NOT exist (SELECT * FROM &data1 B WHERE kejadian = 'J100' and A.notas = B.notas) INTO TABLE &anacj3
  CLOSE DATABASES
  
  USE &data7
  SELECT count(*) FROM &data7 A WHERE (Tglkej)>=DATE(2015,07,01) and Tglkej <=DATE(2015,12,31) AND NOT exist (SELECT * FROM &data1 B WHERE kejadian = 'J100' and A.notas = B.notas) INTO TABLE &anacj4
  CLOSE DATABASES
  
  USE &data7
  SELECT YEAR(Tglkej)AS TAHUN, COUNT(*) AS PESERTA FROM &data7 A WHERE YEAR(TGLKEJ) > 2015 AND NOT exist (SELECT * FROM  &data1 B WHERE kejadian = 'J100' and A.notas = B.notas) group by tahun INTO TABLE &anacj5
  CLOSE DATABASES
  
  USE &anacj8
  SELECT kdkelompok, COUNT(*) as pst FROM &anacj8 A WHERE NOT exist (SELECT * FROM  &data4 B WHERE A.notas = B.notas)GROUP BY kdkelompok INTO TABLE &anacj6
  CLOSE DATABASES
  
  USE &anacj8
  SELECT YEAR(TGLKEJ) AS TAHUN, COUNT(*) AS PESERTA FROM &anacj8 A WHERE NOT exist (SELECT * FROM  &data4 B WHERE A.notas = B.notas)GROUP BY TAHUN INTO TABLE &anacj7
  CLOSE databases
  
