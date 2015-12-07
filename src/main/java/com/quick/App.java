package com.quick;

import app.services.pdf.PDFGeneratorService;
import app.services.pdf.PDFGeneratorServiceImpl;
import org.apache.commons.lang.WordUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Hello world!
 *
 */
public class App 
{
    private static final Logger LOG = LoggerFactory.getLogger(App.class);

    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("fullName", WordUtils.capitalizeFully("SANdESH GAndhi "));
        params.put("membershipNo", "AIAAU123456789");
        params.put("voucherNo", "328957");
        params.put("validUntil", new SimpleDateFormat("dd/MMM/yyyy").format(new Date()));

        PDFGeneratorService pdfGeneratorService = new PDFGeneratorServiceImpl();
        try {
            byte[] pdfContent = pdfGeneratorService.generatePDF("voucher/chemmart_free_voucher", params);
            OutputStream out = new FileOutputStream("ChemmartVoucher.pdf");
            out.write(pdfContent);
            out.close();
        } catch (Exception e) {
            LOG.info(e.getMessage());
        }
    }
}
