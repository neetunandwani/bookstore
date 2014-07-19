package com.testapp

import com.testapp.co.ImportExcelCO
import jxl.*
import org.springframework.web.multipart.MultipartFile;


class ImportExcelController {
    def importExcelService
    def grailsApplication

    def index() {

        render view: "tempForm"

    }

    def importFile() {
        MultipartFile file = params.fileUpload as MultipartFile

        byte[] fileBytes=file.getBytes()

        render fileBytes
    }

    def importExcel() {


        WorkbookSettings wbSettings = new WorkbookSettings();
        wbSettings.setSuppressWarnings(true);
        Workbook workbook = Workbook.getWorkbook(grailsApplication.mainContext.getResource("excelSheet.xls").getFile(), wbSettings);
        Sheet sheet = workbook.getSheet(0);

        ImportExcelCO importExcelCo = new ImportExcelCO()

        def result = importExcelService.putAllPropertiesWithExcel(importExcelCo, sheet)


    }


}
