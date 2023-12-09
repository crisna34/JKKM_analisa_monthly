CLEAR
SET SAFETY off


&& DATABASE
   data1	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\KLAIM_JKKJKM_112023"
   data2	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\peserta_jkkjkm_112023"
   data3	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\peserta_jkkjkm_102023"
   data4	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\datapmk_individu_072015_112023"
   data5	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\peserta_jkkjkm_122022"
   data6	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\peserta_jkkjkm_112022"
   data7	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\klaim_c110_112023"
   
   ydata1	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\KLAIM_JKKJKM_112023"
   ydata2	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\peserta_jkkjkm_112023"
   ydata3	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\peserta_jkkjkm_102023"
   ydata4	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\datapmk_individu_072015_112023"
   ydata5	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\peserta_jkkjkm_122022"
   ydata6	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\peserta_jkkjkm_112022"
   ydata7	= "D:\JKKJKM\11_Nov\PROGRAM_ANALISA_DATA\pre\Hasil\klaim_c110_112023"
     
  
  && preleimneray data &&
  
*!*	  DROP TABLE &ydata1
*!*	  DROP TABLE &ydata2
*!*	  DROP TABLE &ydata3
*!*	  DROP TABLE &ydata4
*!*	  DROP TABLE &ydata5
*!*	  DROP TABLE &ydata6
*!*	  DROP TABLE &ydata7

    
  
  USE &data1
  SELECT notas, kdkelompok, KEJADIAN, tglkej FROM &data1 INTO Table &ydata1
  CLOSE databases 

  USE &data2
  SELECT notas, gapok, kdkelompok FROM &data2 INTO Table &ydata2
  CLOSE DATABASES
 
  USE &data3
  SELECT notas, gapok, kdkelompok FROM &data3 INTO Table &ydata3
  CLOSE DATABASES
  
  USE &data4
  SELECT notas, kejadian FROM &data4 INTO Table &ydata4
  CLOSE DATABASES
  
  USE &data5
  SELECT notas, gapok, kdkelompok FROM &data5 INTO Table &ydata5
  CLOSE DATABASES
   
  USE &data6
  SELECT notas, gapok, kdkelompok FROM &data6 INTO Table &ydata6
  CLOSE DATABASES 
  
  USE &data7
  SELECT notas, gapok, kdkelompok, tglkej FROM &data7 INTO Table &ydata7
  CLOSE DATABASES 
