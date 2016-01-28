<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>

    <xsl:param name="barcode"/>
    <xsl:param name="expiryDate"/>
    <!--<xsl:param name="memberNo"/>-->
    <xsl:param name="verificationCode"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page"
                                       page-height="297mm" page-width="210mm">
                    <fo:region-body margin-left="0" margin-right="0" margin-top="0" margin-bottom="0.25cm" />
                    <fo:region-before extent="0.2cm"/>
                    <fo:region-after extent="0.2cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>




            <fo:page-sequence master-reference="default-page" format="1">

                <fo:flow flow-name="xsl-region-body" >
                    <fo:block-container font-size="10px">

                        <fo:block>
                            <fo:external-graphic src="/images/fruits.png"/>
                        </fo:block>

                        <fo:block>
                            <fo:block-container position="absolute"
                                                      top="10pt" left="20pt">
                                <fo:block text-align="center" font-size="105pt" font-family="knockout" color="white">STAY ACTIVE, BE REWARDED</fo:block>
                            </fo:block-container>

                            <fo:block-container position="absolute"
                                                top="100pt" left="35pt">
                                <fo:block text-align="center" font-size="55pt" font-family="knockout" color="white">$7.50 BOOST GIFT VOUCHER</fo:block>
                            </fo:block-container>

                        </fo:block>


                        <fo:block>

                            <fo:block-container position="absolute"
                                                top="160pt" left="80pt">

                                <fo:block>
                                    <fo:external-graphic src="/images/vector_smart.png"/>
                                </fo:block>

                            </fo:block-container>


                            <fo:block-container position="absolute"
                                                top="250pt">

                                <fo:block text-align="center">
                                    <fo:external-graphic src="/images/rectangle.png"/>
                                </fo:block>

                            </fo:block-container>

                            <fo:block-container position="absolute"
                                                top="340pt">

                                <fo:block text-align="center">
                                    <fo:instream-foreign-object>
                                        <bc:barcode render-mode="bitmap"
                                                    xmlns:bc="http://barcode4j.krysalis.org/ns"
                                                    message="{$barcode}" orientation="0">
                                            <bc:code128>
                                                <bc:height>2.5cm</bc:height>
                                                <bc:module-width>0.40mm</bc:module-width>
                                            </bc:code128>
                                        </bc:barcode>
                                    </fo:instream-foreign-object>
                                </fo:block>


                            </fo:block-container>



                            <fo:block-container position="absolute"
                                                top="460pt"  >
                                <!--<fo:block text-align="center" font-size="35pt" font-family="knockout" color="white">UNIQUE CODE <xsl:value-of select="$memberNo"/></fo:block>-->
                                <fo:block text-align="center" font-size="27pt" font-family="knockout" color="white">VERIFICATION CODE - <xsl:value-of select="$verificationCode"/></fo:block>
                            </fo:block-container>
                        </fo:block>

                    </fo:block-container>

                    <fo:block-container font-size="10px" >

                        <fo:block>
                            <fo:block-container position="absolute" top="10pt" left="30pt">
                                <fo:block>
                                    <fo:external-graphic src="/images/aia_vitality.png"/>
                                </fo:block>
                            </fo:block-container>

                            <fo:block-container position="absolute" top="10pt" left="420pt">
                                <fo:block>
                                    <fo:external-graphic src="/images/boost_logo.png"/>
                                </fo:block>
                            </fo:block-container>
                        </fo:block>

                    </fo:block-container>

                    <fo:block-container font-size="10px">
                        <fo:block>
                            <fo:block-container position="absolute"
                                                top="85pt" left="30pt" right="30pt">
                                <fo:block text-align="left" font-size="11pt" font-family="gotham"><fo:inline>Scan in store to redeem. Treat this voucher like cash. Lost or stolen vouchers will not be replaced or refunded.
                                    Redeemable at any Boost Juice store in Australia, excluding Boost Mobeels. This voucher may be used in more than one transaction for cumulative purchases of up to the
                                    face-value of voucher. Not reloadable or redeemable for cash. By using this voucher, you agree to the terms and conditions.</fo:inline>
                                </fo:block>
                                <fo:block text-align="center" font-size="11pt" font-family="gotham"><fo:inline>EXPIRY DATE <xsl:value-of select="$expiryDate"/></fo:inline> </fo:block>
                            </fo:block-container>
                        </fo:block>

                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>