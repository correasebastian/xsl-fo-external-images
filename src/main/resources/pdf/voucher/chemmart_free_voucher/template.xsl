<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>

    <xsl:decimal-format name="form" decimal-separator="." grouping-separator="&#160;"/>

    <xsl:param name="fullName"/>
    <xsl:param name="membershipNo"/>
    <xsl:param name="amount"/>
    <xsl:param name="validUntil"/>
    <xsl:param name="voucherNo"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page"
                                       page-height="10cm"
                                       page-width="21cm"
                                       margin-top="0.5cm"
                                       margin-bottom="0.5cm"
                                       margin-left="0.5cm"
                                       margin-right="0.5cm">
                    <fo:region-body
                            margin-top="2cm"
                            margin-bottom="0.5cm"
                            margin-left="0.5cm"
                            margin-right="0.5cm"/>
                    <fo:region-before extent="2.4cm" />  <!-- for background colour and logo as header-->
                    <fo:region-after extent="0.5cm" />  <!-- for background colour -->
                    <fo:region-start extent="0.0cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="default-page" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block-container height="2.2cm" background-color="#c1d82f">
                        <fo:block text-align="right" margin-right="0.5cm" margin-top="0.5cm">
                            <fo:external-graphic src="/images/VitalityLogo_Process_Reverse.png" content-height="scale-to-fit" content-width="5cm" scaling="non-uniform" />
                        </fo:block>
                    </fo:block-container>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block-container height="0.5cm" background-color="#c1d82f">
                        <fo:block/>
                    </fo:block-container>
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-start">
                    <fo:block-container border-color="#c1d82f" border-style="dashed" border-width="1pt" height="6.3cm" background-color="white"
                                        width="19.8cm" left="0.1cm" top="2.2cm" padding="1pt" position="absolute">
                        <fo:block/>
                    </fo:block-container>
                    <fo:block-container writing-mode="rl-tb" reference-orientation="90" inline-progression-dimension="20pt" height="30pt" width="30pt" left="19.2cm" top="5.5cm" position="absolute">
                           <fo:block  text-align="end" text-align-last="end" color="#c1d82f" font-family="Wingdings"  font-size="18pt">
                                &#35;
                           </fo:block>
                    </fo:block-container>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body" >
                    <fo:block-container>
                        <fo:table text-align="left" margin-top="0.5cm">
                            <fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="16.5cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block><fo:external-graphic src="/images/CHEMMARK_primary_cmyk.png" content-height="scale-to-fit" content-width="3cm" scaling="non-uniform" /></fo:block>
                                      </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#c1d82f"  margin-left="0.3cm" font-family="OfficinaSansITCPro-Bold"  font-size="24pt">Free AIA Vitality Health Check</fo:block>
                                        <fo:block color="#58595b"  margin-left="0.3cm" font-family="OfficinaSansITCPro-Bold"  font-size="11pt" space-before="8pt" >This Voucher entitles you to a free AIA Vitality Health Check at a participating Chemmart Pharmacy.</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table margin-top="0.5cm">
                            <fo:table-column column-width="3cm"/>
                            <fo:table-column column-width="11cm"/>
                            <fo:table-column column-width="5cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#58595b"  margin-left="0.3cm" font-family="OfficinaSanITCMedium"  font-size="16pt"><xsl:value-of select="$fullName"/></fo:block>
                                        <fo:block color="#58595b"  margin-left="0.3cm" font-family="OfficinaSanITCMedium" space-before="4pt" font-size="12pt">AIA Vitality member number: <xsl:value-of select="$membershipNo"/></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#58595b" text-align="center" font-family="OfficinaSanITCMedium"  space-before="8pt" font-size="12pt">Expiry date: <xsl:value-of select="$validUntil"/></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:table text-align="left" margin-top="0.4cm">
                            <fo:table-column column-width="19cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#58595b" font-family="OfficinaSansITCPro-Book"  font-size="8pt" >
                                            <fo:inline font-family="OfficinaSansITCPro-Bold">Terms and conditions: </fo:inline>This voucher is issued by AIA Australia Limited ABN 79 004 837 861. The voucher will be valid until the expiry date and is subject to appointment availability. The voucher
                                            can be used once only and is non-transferable and non-refundable. The voucher cannot be redeemed for cash or credit. The voucher will not be replaced or refunded if lost, stolen or damaged.
                                            The AIA Vitality Health Check will include the following tests: blood pressure, cholesterol, blood glucose and body mass index (BMI). AIA Vitality Members can earn up to 6,000 points for
                                            completing the AIA Vitality Health Check.</fo:block>

                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block margin-right="0.3cm" color="#58595b" font-family="OfficinaSansITCPro-Book" space-before="2pt" font-size="10pt"   text-align-last="justify">
                            THIS VOUCHER IS NOT TRANSFERABLE
                            <fo:leader leader-pattern="space" />
                            VOUCHER NUMBER: <xsl:value-of select="$voucherNo"/>
                        </fo:block>
                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>