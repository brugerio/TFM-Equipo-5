ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_2018]
   ADD CONSTRAINT FK_Cie10_2018 FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_2019]
   ADD CONSTRAINT FK_Cie10_2019 FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_2020]
   ADD CONSTRAINT FK_Cie10_2020 FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_2021]
   ADD CONSTRAINT FK_Cie10_2021 FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;


ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_2022]
   ADD CONSTRAINT FK_Cie10_2022 FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_2023]
   ADD CONSTRAINT FK_Cie10_2023 FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;

ALTER TABLE [Datos_Abiertos].[dbo].[Egresos_consolidado]
   ADD CONSTRAINT FK_Cie10_Consilidado FOREIGN KEY (AFECPRIN)
      REFERENCES [Datos_Abiertos].[dbo].[CAT_CIE10_2021] (CLAVE)
      ON DELETE CASCADE
      ON UPDATE CASCADE
;






