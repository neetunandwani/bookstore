package bookstore

import com.testapp.ImportExcel
import com.testapp.co.ImportExcelCO
import jxl.Cell
import jxl.Sheet

class ImportExcelService {

    def serviceMethod() {

    }

    def putAllPropertiesWithExcel(ImportExcelCO importExcelCo, Sheet sheet) {

      Cell[] cellColumn=sheet.getColumn(0)
      Cell[] cellRow=sheet.getRow(0)

        int colSize=cellColumn.length
        (colSize-1).times {it->
          importExcelCo.setProperty('fastighet',sheet.getCell(0,it+1).getContents())
          importExcelCo.setProperty('typ',sheet.getCell(1,it+1).getContents())
          importExcelCo.setProperty('personnr',sheet.getCell(2,it+1).getContents())
          importExcelCo.setProperty('efternamnFastighet',sheet.getCell(3,it+1).getContents())
          importExcelCo.setProperty('förnamnFastighet',sheet.getCell(4,it+1).getContents())
          importExcelCo.setProperty('gatuadress',sheet.getCell(5,it+1).getContents())
          importExcelCo.setProperty('gatunr',sheet.getCell(6,it+1).getContents())
          importExcelCo.setProperty('postnr',Integer.parseInt(sheet.getCell(7,it+1).getContents()))
          importExcelCo.setProperty('postort',sheet.getCell(8,it+1).getContents())
          importExcelCo.setProperty('stnKc',sheet.getCell(9,it+1).getContents())
          importExcelCo.setProperty('objekt',sheet.getCell(10,it+1).getContents())
          importExcelCo.setProperty('område',sheet.getCell(11,it+1).getContents())
          importExcelCo.setProperty('fmo',sheet.getCell(12,it+1).getContents())
          importExcelCo.setProperty('miljöTeknikskåp',sheet.getCell(13,it+1).getContents())
          importExcelCo.setProperty('beteckning',sheet.getCell(14,it+1).getContents())
          importExcelCo.setProperty('adressTillFastighetsägare',sheet.getCell(15,it+1).getContents())
          importExcelCo.setProperty('noteringarEntreprenör',sheet.getCell(16,it+1).getContents())
          importExcelCo.setProperty('faktureringsadress',sheet.getCell(17,it+1).getContents())
          importExcelCo.setProperty('finansiering',sheet.getCell(18,it+1).getContents())
          importExcelCo.setProperty('fakturerad',sheet.getCell(19,it+1).getContents())
          importExcelCo.setProperty('mobilnr',sheet.getCell(20,it+1).getContents())
          importExcelCo.setProperty('hemnr',sheet.getCell(21,it+1).getContents())
          importExcelCo.setProperty('ePost',sheet.getCell(22,it+1).getContents())
          importExcelCo.setProperty('samfällighet',sheet.getCell(23,it+1).getContents())
          importExcelCo.setProperty('pris',sheet.getCell(24,it+1).getContents())
          importExcelCo.setProperty('datumSlutkundsavtal',sheet.getCell(25,it+1).getContents())
          importExcelCo.setProperty('punktID',sheet.getCell(26,it+1).getContents()!=""?Long.parseLong(sheet.getCell(26,it+1).getContents()):null)
          importExcelCo.setProperty('switchnamn',sheet.getCell(27,it+1).getContents())
          importExcelCo.setProperty('portISwitch',sheet.getCell(28,it+1).getContents())
          importExcelCo.setProperty('odfStationssida',sheet.getCell(29,it+1).getContents())
          importExcelCo.setProperty('brev1PrognosKvartal',sheet.getCell(30,it+1).getContents())
          importExcelCo.setProperty('brev2PrognosMånad',sheet.getCell(31,it+1).getContents())
          importExcelCo.setProperty('uppföljningssamtal',sheet.getCell(32,it+1).getContents())
          importExcelCo.setProperty('uttagFörNPS',sheet.getCell(33,it+1).getContents())
          importExcelCo.setProperty('noteringarOperatör',sheet.getCell(34,it+1).getContents())
          importExcelCo.setProperty('beställd',sheet.getCell(35,it+1).getContents())
          importExcelCo.setProperty('fastInomhusLevProg',sheet.getCell(36,it+1).getContents())
          importExcelCo.setProperty('fastInomhusKlartDatum',sheet.getCell(37,it+1).getContents())
          importExcelCo.setProperty('säljkampanj',sheet.getCell(38,it+1).getContents())
          importExcelCo.setProperty('beställdAv',sheet.getCell(39,it+1).getContents())
          importExcelCo.setProperty('entreprenör',sheet.getCell(40,it+1).getContents())
          importExcelCo.setProperty('kontaktEntreprenör',sheet.getCell(41,it+1).getContents())
          importExcelCo.setProperty('epost',sheet.getCell(42,it+1).getContents())
          importExcelCo.setProperty('mobilnr1',sheet.getCell(43,it+1).getContents())
          importExcelCo.setProperty('sdu',sheet.getCell(44,it+1).getContents())
          importExcelCo.setProperty('orderlagdINA',sheet.getCell(45,it+1).getContents())

            if(importExcelCo.validate()){
                ImportExcel importExcel=new ImportExcel(importExcelCo.properties)
               if(importExcel.validate())
               {
                   importExcel.save(flush: true,failOnError: true)
               }
                else{
                   println("domain validate fail")
                   importExcel.errors.each {
                       println it
                   }

               }
            }
            else
            {
                println("co validate fail")

            }
      }

      return

    }


}
