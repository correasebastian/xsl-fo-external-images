package com.quick;

import app.services.pdf.PDFGeneratorService;
import app.services.pdf.PDFGeneratorServiceImpl;
import com.csvreader.CsvReader;
import org.apache.commons.lang.WordUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Print vouchers from FOP XSLT templates!
 */
public class App {
    private static final Logger LOG = LoggerFactory.getLogger(App.class);

    public static void main(String[] args) {

        ///////////////////   Fitness First ///////////////////////////////
        System.out.println("Hello World! for Fitness First Membership Authority Form");
        Map<String, Object> paramsFF = new HashMap<String, Object>();
        paramsFF.put("fullName", WordUtils.capitalizeFully("SANdESH GAndhi "));
        paramsFF.put("membershipNo", "AIAAU123456789");
        paramsFF.put("voucherNo", "328957");
        paramsFF.put("validUntil", new SimpleDateFormat("dd/MM/yyyy").format(new Date()));

        PDFGeneratorService pdfGeneratorServiceFF = new PDFGeneratorServiceImpl();
        try {
            byte[] pdfContentFF = pdfGeneratorServiceFF.generatePDF("voucher/fitness_first_form", paramsFF);
            OutputStream outFF = new FileOutputStream("FFMAF-sample.pdf");
            outFF.write(pdfContentFF);
            outFF.close();
        } catch (Exception e) {
            LOG.error(e.getMessage());
        }

        //////////////////////////////////////////////////////////////////
/*
        System.out.println("Hello World! for Chemmart voucher");
        Map<String, Object> params = new HashMap<String, Object>();
        params.put("fullName", WordUtils.capitalizeFully("SANdESH GAndhi "));
        params.put("membershipNo", "AIAAU123456789");
        params.put("voucherNo", "328957");
        params.put("validUntil", new SimpleDateFormat("dd/MM/yyyy").format(new Date()));

        PDFGeneratorService pdfGeneratorService = new PDFGeneratorServiceImpl();
        try {
            byte[] pdfContent = pdfGeneratorService.generatePDF("voucher/chemmart_free_voucher", params);
            OutputStream out = new FileOutputStream("ChemmartVoucher-sample.pdf");
            out.write(pdfContent);
            out.close();
        } catch (Exception e) {
            LOG.error(e.getMessage());
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////


        System.out.println("Hello World! Active rewards");

        try {

            CsvReader boostVouchers = new CsvReader("boost_juice_vouchers.csv");

            boostVouchers.readHeaders();

            while (boostVouchers.readRecord()) {
                String barcode = boostVouchers.get("Barcode");
                String expiryDate = boostVouchers.get("ExpiryDate");
                String verificationCode = boostVouchers.get("VerificationCode");

                // perform program logic here
                Map<String, Object> params2 = new HashMap<String, Object>();
                params2.put("barcode", barcode);
                params2.put("expiryDate", expiryDate);
                //params2.put("memberNo", memberNo[i]);
                params2.put("verificationCode", verificationCode);

                PDFGeneratorService pdfGeneratorService2 = new PDFGeneratorServiceImpl();
                byte[] pdfContent = pdfGeneratorService2.generatePDF("voucher/active_rewards", params2);
                OutputStream out = new FileOutputStream("BoostJuiceVoucher" + barcode + ".pdf");
                out.write(pdfContent);
                out.close();
            }

            boostVouchers.close();

        } catch (FileNotFoundException e) {
            LOG.error(e.getMessage());
        } catch (IOException e) {
            LOG.error(e.getMessage());
        } catch (PDFGeneratorService.PDFGeneratorServiceException e) {
            LOG.error(e.getMessage());
        }
        */
    }

    private static String getYearMonthFromIssueDate(String issueDateAsString) throws ParseException {
        SimpleDateFormat issueDateFormat = new SimpleDateFormat("dd/MM/yyyy");
        Date issueDate = issueDateFormat.parse(issueDateAsString);
        Calendar voucherIssueDate = Calendar.getInstance();
        voucherIssueDate.setTime(issueDate);
        voucherIssueDate.add(Calendar.MONTH, 12);
        return issueDateFormat.format(voucherIssueDate.getTime());
    }
}
