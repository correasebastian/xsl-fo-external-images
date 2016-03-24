<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>

    <xsl:decimal-format name="form" decimal-separator="." grouping-separator="&#160;"/>

    <xsl:param name="fullName"/>
    <xsl:param name="membershipNo"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="default-page"
                                       page-height="297mm"
                                       page-width="210mm"
                                       margin-top="5mm"
                                       margin-bottom="5mm"
                                       margin-left="5mm"
                                       margin-right="5mm">
                    <fo:region-body
                            margin-top="20mm"
                            margin-bottom="5mm"
                            margin-left="5mm"
                            margin-right="5mm"/>
                    <fo:region-before extent="24mm" />  <!-- for background colour and logo as header-->
                    <fo:region-after extent="24mm" />  <!-- for FF logo -->
                    <fo:region-start extent="0mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="default-page" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block-container height="22mm" background-color="#c8102e">
                        <fo:block text-align="right" margin-right="5mm" margin-top="5mm">
                            <fo:external-graphic src="/images/VitalityLogo_Process_Reverse.png" content-height="scale-to-fit" content-width="50mm" scaling="non-uniform" />
                        </fo:block>
                    </fo:block-container>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block-container height="22mm">
                         <fo:table>
                            <fo:table-column />
                            <fo:table-column />

                            <fo:table-body>
                                <fo:table-row >
                                    <fo:table-cell display-align="after">
                                        <fo:block font-family="OfficinaSansITCPro-Bold" font-size="14pt" color="#c8102e">aiavitality.com.au</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <fo:external-graphic src="/images/FitnessFirst540x110.png" content-height="scale-to-fit" content-width="54mm" scaling="non-uniform" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block-container>
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-start">
                    <fo:block-container border-color="#c8102e" border-style="dashed" border-width="1pt" height="6.3cm" background-color="white"
                                        width="19.8cm" left="0.1cm" top="2.2cm" padding="1pt" position="absolute">
                        <fo:block/>
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
                                        <fo:block color="#c8102e"  margin-left="0.3cm" font-family="OfficinaSansITCPro-Bold"  font-size="24pt">Free AIA Vitality Health Check</fo:block>
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
                                        <fo:block color="#58595b" text-align="center" font-family="OfficinaSanITCMedium"  space-before="8pt" font-size="12pt">Expiry date:</fo:block>
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
                                            <fo:inline font-family="OfficinaSansITCPro-Bold">Terms and conditions: </fo:inline>
I hereby agree and consent to Fitness First disclosing my sensitive information (including bu not limited to full name, dob, mobile number and visitation data to AIA Limited via secure files for the purpose of providing me with my AIA Vitality and Fitness First member benefits).
I acknowledge that AIA Limited will deal with such information in accordance with their existing Privacy Policy which can be found at www.aiavitality.com.au
Furthermore, I understamd that should my AIA Vitality Membership be cancelled, my Fitness First membership minimum term will continue and will automatically, without notification:
Revert to the retail rack rate current at the time of cancellation (New Members Only)
Revert to my previous membership rate and membership type (Existing Fitness First Members Only).</fo:block>

                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block margin-right="0.3cm" color="#58595b" font-family="OfficinaSansITCPro-Book" space-before="2pt" font-size="10pt"   text-align-last="justify">
                            THIS VOUCHER IS NOT TRANSFERABLE
                            <fo:leader leader-pattern="space" />
                            </fo:block>
                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
