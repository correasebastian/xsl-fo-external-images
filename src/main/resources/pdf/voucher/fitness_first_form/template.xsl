<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format"
                xmlns:svg="http://www.w3.org/2000/svg">
    <xsl:output version="1.0" method="xml" encoding="UTF-8" indent="no"/>

    <xsl:decimal-format name="form" decimal-separator="." grouping-separator="&#160;"/>

    <xsl:param name="fullName"/>
    <xsl:param name="membershipNo"/>

    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="A4-portrait" page-height="297mm" page-width="210mm" margin="20mm">
                    <fo:region-body margin-top="30mm" margin-left="10mm" margin-right="10mm"/>
                    <fo:region-before extent="25mm"/>
                    <!-- header - background colour and logo -->
                    <fo:region-after extent="25mm"/>
                    <!-- footer  - FF logo and info -->
                    <fo:region-start extent="0mm"/>
                    <fo:region-end extent="0mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="A4-portrait" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block-container height="25mm" background-color="#c8102e">
                        <fo:block text-align="right" margin-right="5mm" margin-top="5mm">
                            <fo:external-graphic src="/images/VitalityLogo_Process_Reverse.png"
                                                 content-height="scale-to-fit" content-width="50mm"
                                                 scaling="non-uniform"/>
                        </fo:block>
                    </fo:block-container>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block-container height="25mm">
                        <fo:table>
                            <fo:table-column/>
                            <fo:table-column/>

                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell display-align="after">
                                        <fo:block font-family="OfficinaSansITCPro-Bold" font-size="14pt"
                                                  color="#c8102e">aiavitality.com.au
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="right">
                                            <fo:external-graphic src="/images/FitnessFirst540x110.png"
                                                                 content-height="scale-to-fit" content-width="54mm"
                                                                 scaling="non-uniform"/>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block border-bottom-width="1pt" border-bottom-style="solid" color="#3c3c3c"
                                  margin-top="3mm"></fo:block>
                        <fo:table margin-top="5mm">
                            <fo:table-column/>
                            <fo:table-column/>

                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell display-align="after">
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="7.5pt">
                                            <fo:inline font-family="OfficinaSansITCPro-Bold">AIA Australia Limited
                                            </fo:inline>
                                            ABN 79 004 837 861
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell display-align="after">
                                        <fo:block text-align="right" color="#3c3c3c"
                                                  font-family="OfficinaSansITCPro-Book" font-size="7.5pt">AIA 07 306 -
                                            03/16
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block-container>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body">
                    <fo:block-container>
                        <fo:block color="#c8102e" font-family="OfficinaSansITCPro-Bold" font-size="24pt">AIA Vitality
                            and Fitness First
                        </fo:block>
                        <fo:block color="#c8102e" font-family="OfficinaSansITCPro-Bold" font-size="24pt">Membership
                            Authority
                        </fo:block>

                        <fo:table text-align="left"  start-indent="2mm" end-indent="2mm" margin-top="5mm" background-color="#eee">
                            <fo:table-column column-width="33mm"/>
                            <fo:table-column column-width="112mm"/>
                            <fo:table-body>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">AIA Vitality Member's full name
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">
                                            <fo:instream-foreign-object>
                                                <svg:svg width="100mm" height="5mm">
                                                    <svg:rect rx="5pt" ry="5pt" width="100mm" height="5mm"
                                                              style="fill:white;stroke-width:1pt;stroke:#3c3c3c"/>
                                                    <svg:text x="5mm" y="4mm"
                                                              style="
                                                              font-family   :   Officina Sans ITC Pro Book;
                                                              font-size     :   10pt;
                                                              stroke        :   #3c3c3c;
                                                              fill          :   #3c3c3c;
                                                              stroke-width  :   0.5pt">
                                                        <xsl:value-of select="$fullName"/>
                                                    </svg:text>
                                                </svg:svg>
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row border-bottom-color="#3c3c3c"
                                              border-bottom-width="1pt"
                                              border-bottom-style="dotted">
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">AIA Vitality Membership number
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">
                                            <fo:instream-foreign-object>
                                                <svg:svg width="100mm" height="5mm">
                                                    <svg:rect rx="5pt" ry="5pt" width="100mm" height="5mm"
                                                              style="fill:white;stroke-width:1pt;stroke:#3c3c3c"/>
                                                    <svg:text x="5mm" y="4mm"
                                                              style="
                                                              font-family   :   Officina Sans ITC Pro Book;
                                                              font-size     :   10pt;
                                                              stroke        :   #3c3c3c;
                                                              fill          :   #3c3c3c;
                                                              stroke-width  :   0.5pt">
                                                        <xsl:value-of select="$membershipNo"/>
                                                    </svg:text>
                                                </svg:svg>
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row border-bottom-color="#3c3c3c"
                                              border-bottom-width="1pt"
                                              border-bottom-style="dotted">
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">
                                            <fo:instream-foreign-object>
                                                <svg:svg width="5mm" height="5mm">
                                                    <svg:rect rx="5pt" ry="5pt" width="5mm" height="5mm"
                                                              style="fill:white;stroke-width:1pt;stroke:#3c3c3c"/>
                                                </svg:svg>
                                            </fo:instream-foreign-object>
                                            <fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;I agree</fo:inline>

                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Bold"
                                                  font-size="12pt">Privacy Statement
                                        </fo:block>
                                        <fo:block space-before="5pt" color="#3c3c3c"
                                                  font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">I hereby agree and consent to Fitness First
                                            disclosing my sensitive information (including but not limited to full name,
                                            dob, mobile number and visitation data to AIA Limited via secure files for
                                            the purpose of providing me with my AIA Vitality and Fitness First member
                                            benefits).
                                        </fo:block>

                                        <fo:block space-before="5pt" color="#3c3c3c"
                                                  font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">I acknowledge that AIA Limited will deal with such
                                            information in accordance with their existing Privacy Policy which can be
                                            found at www.aiavitality.com.au
                                        </fo:block>
                                        <fo:block space-before="5pt" color="#3c3c3c"
                                                  font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">Furthermore, I understand that should my AIA Vitality
                                            Membership be
                                            cancelled, my Fitness First membership minimum term will continue and will
                                            automatically, without notification:
                                        </fo:block>
                                        <fo:list-block space-after="0.25em" space-before="0.25em">
                                            <fo:list-item>
                                                <fo:list-item-label>
                                                    <fo:block>
                                                        &#x2022;
                                                    </fo:block>
                                                </fo:list-item-label>
                                                <fo:list-item-body start-indent="1em">
                                                    <fo:block color="#3c3c3c"
                                                              font-family="OfficinaSansITCPro-Book"
                                                              font-size="10pt">
                                                        Revert to the retail rack rate current at the time of
                                                        cancellation (New Members Only)
                                                    </fo:block>
                                                </fo:list-item-body>
                                            </fo:list-item>
                                            <fo:list-item>
                                                <fo:list-item-label>
                                                    <fo:block>
                                                        •
                                                    </fo:block>
                                                </fo:list-item-label>
                                                <fo:list-item-body start-indent="1em">
                                                    <fo:block color="#3c3c3c"
                                                              font-family="OfficinaSansITCPro-Book"
                                                              font-size="10pt">
                                                        Revert to my previous membership rate and membership type
                                                        (Existing Fitness First Members Only).
                                                    </fo:block>
                                                </fo:list-item-body>
                                            </fo:list-item>
                                        </fo:list-block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row border-bottom-color="#3c3c3c"
                                              border-bottom-width="1pt"
                                              border-bottom-style="dotted">
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">Name
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">
                                            <fo:instream-foreign-object>
                                                <svg:svg width="100mm" height="5mm">
                                                    <svg:rect rx="5pt" ry="5pt" width="100mm" height="5mm"
                                                              style="fill:white;stroke-width:1pt;stroke:#3c3c3c"/>
                                                </svg:svg>
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row border-bottom-color="#3c3c3c"
                                              border-bottom-width="1pt"
                                              border-bottom-style="dotted">
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">Signature
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">
                                            <fo:instream-foreign-object>
                                                <svg:svg width="100mm" height="5mm">
                                                    <svg:rect rx="5pt" ry="5pt" width="100mm" height="5mm"
                                                              style="fill:white;stroke-width:1pt;stroke:#3c3c3c"/>
                                                </svg:svg>
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>

                                <fo:table-row border-bottom-color="#3c3c3c"
                                              border-bottom-width="1pt"
                                              border-bottom-style="dotted">
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">Date
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block color="#3c3c3c" font-family="OfficinaSansITCPro-Book"
                                                  font-size="10pt">
                                            <fo:instream-foreign-object>
                                                <svg:svg width="30mm" height="5mm">
                                                    <svg:rect rx="5pt" ry="5pt" width="30mm" height="5mm"
                                                              style="fill:white;stroke-width:1pt;stroke:#3c3c3c"/>
                                                </svg:svg>
                                            </fo:instream-foreign-object>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding="5pt"></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block-container>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
