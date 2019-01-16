<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Scan(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="HEX(3:0)" />
        <signal name="point(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="point(3)" />
        <signal name="point(2)" />
        <signal name="point(1)" />
        <signal name="point(0)" />
        <signal name="LES(3)" />
        <signal name="LES(2)" />
        <signal name="LES(1)" />
        <signal name="LES(0)" />
        <signal name="p" />
        <signal name="LE" />
        <signal name="Scan(1)" />
        <signal name="Scan(0)" />
        <signal name="XLXN_30" />
        <signal name="XLXN_32" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="AN(3:0)" />
        <signal name="AN(3)" />
        <signal name="AN(2)" />
        <signal name="AN(1)" />
        <signal name="AN(0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Output" name="HEX(3:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="p" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="AN(3:0)" />
        <blockdef name="Mux4to14b">
            <timestamp>2018-11-6T11:42:52</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="MUX4to1">
            <timestamp>2018-11-6T12:9:16</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="Mux4to14b" name="XLXI_1">
            <blockpin signalname="Scan(1:0)" name="S(1:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="HEX(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4to1" name="XLXI_2">
            <blockpin signalname="Scan(1:0)" name="S(1:0)" />
            <blockpin signalname="point(3)" name="I0" />
            <blockpin signalname="point(2)" name="I1" />
            <blockpin signalname="point(1)" name="I2" />
            <blockpin signalname="point(0)" name="I3" />
            <blockpin signalname="p" name="o" />
        </block>
        <block symbolname="MUX4to1" name="XLXI_3">
            <blockpin signalname="Scan(1:0)" name="S(1:0)" />
            <blockpin signalname="LES(3)" name="I0" />
            <blockpin signalname="LES(2)" name="I1" />
            <blockpin signalname="LES(1)" name="I2" />
            <blockpin signalname="LES(0)" name="I3" />
            <blockpin signalname="LE" name="o" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="Scan(0)" name="I0" />
            <blockpin signalname="XLXN_32" name="I1" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="Scan(1)" name="I0" />
            <blockpin signalname="XLXN_30" name="I1" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="Scan(1)" name="I0" />
            <blockpin signalname="Scan(0)" name="I1" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="Scan(1)" name="I" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="Scan(0)" name="I" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="inv4" name="XLXI_10">
            <blockpin signalname="XLXN_39" name="I0" />
            <blockpin signalname="XLXN_38" name="I1" />
            <blockpin signalname="XLXN_37" name="I2" />
            <blockpin signalname="XLXN_36" name="I3" />
            <blockpin signalname="AN(3)" name="O0" />
            <blockpin signalname="AN(2)" name="O1" />
            <blockpin signalname="AN(1)" name="O2" />
            <blockpin signalname="AN(0)" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="992" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Scan(1:0)">
            <wire x2="464" y1="496" y2="496" x1="272" />
            <wire x2="464" y1="496" y2="704" x1="464" />
            <wire x2="464" y1="704" y2="1072" x1="464" />
            <wire x2="464" y1="1072" y2="1360" x1="464" />
            <wire x2="464" y1="1360" y2="1744" x1="464" />
            <wire x2="464" y1="1744" y2="1792" x1="464" />
            <wire x2="464" y1="1792" y2="2272" x1="464" />
            <wire x2="464" y1="2272" y2="2336" x1="464" />
            <wire x2="464" y1="2336" y2="2464" x1="464" />
            <wire x2="464" y1="2464" y2="2640" x1="464" />
            <wire x2="480" y1="2640" y2="2640" x1="464" />
            <wire x2="640" y1="1792" y2="1792" x1="464" />
            <wire x2="640" y1="1792" y2="1888" x1="640" />
            <wire x2="832" y1="1888" y2="1888" x1="640" />
            <wire x2="656" y1="1360" y2="1360" x1="464" />
            <wire x2="656" y1="1360" y2="1488" x1="656" />
            <wire x2="864" y1="1488" y2="1488" x1="656" />
            <wire x2="864" y1="704" y2="704" x1="464" />
        </branch>
        <iomarker fontsize="28" x="272" y="496" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="256" y1="960" y2="960" x1="64" />
            <wire x2="256" y1="960" y2="992" x1="256" />
            <wire x2="256" y1="992" y2="1040" x1="256" />
            <wire x2="256" y1="1040" y2="1088" x1="256" />
            <wire x2="256" y1="1088" y2="1120" x1="256" />
            <wire x2="256" y1="816" y2="880" x1="256" />
            <wire x2="256" y1="880" y2="960" x1="256" />
        </branch>
        <iomarker fontsize="28" x="64" y="960" name="Hexs(15:0)" orien="R180" />
        <bustap x2="352" y1="880" y2="880" x1="256" />
        <branch name="Hexs(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="376" y="880" type="branch" />
            <wire x2="384" y1="880" y2="880" x1="352" />
            <wire x2="400" y1="880" y2="880" x1="384" />
            <wire x2="400" y1="880" y2="960" x1="400" />
            <wire x2="864" y1="960" y2="960" x1="400" />
        </branch>
        <bustap x2="352" y1="992" y2="992" x1="256" />
        <branch name="Hexs(7:4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="392" y="992" type="branch" />
            <wire x2="400" y1="992" y2="992" x1="352" />
            <wire x2="432" y1="992" y2="992" x1="400" />
            <wire x2="864" y1="896" y2="896" x1="432" />
            <wire x2="432" y1="896" y2="992" x1="432" />
        </branch>
        <bustap x2="352" y1="1040" y2="1040" x1="256" />
        <branch name="Hexs(11:8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="392" y="1040" type="branch" />
            <wire x2="400" y1="1040" y2="1040" x1="352" />
            <wire x2="432" y1="1040" y2="1040" x1="400" />
            <wire x2="640" y1="1040" y2="1040" x1="432" />
            <wire x2="640" y1="832" y2="1040" x1="640" />
            <wire x2="864" y1="832" y2="832" x1="640" />
        </branch>
        <bustap x2="352" y1="1088" y2="1088" x1="256" />
        <branch name="Hexs(15:12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="392" y="1088" type="branch" />
            <wire x2="400" y1="1088" y2="1088" x1="352" />
            <wire x2="432" y1="1088" y2="1088" x1="400" />
            <wire x2="624" y1="1088" y2="1088" x1="432" />
            <wire x2="624" y1="768" y2="1088" x1="624" />
            <wire x2="864" y1="768" y2="768" x1="624" />
        </branch>
        <branch name="HEX(3:0)">
            <wire x2="1440" y1="704" y2="704" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1440" y="704" name="HEX(3:0)" orien="R0" />
        <branch name="point(3:0)">
            <wire x2="272" y1="1424" y2="1424" x1="144" />
            <wire x2="272" y1="1424" y2="1488" x1="272" />
            <wire x2="272" y1="1488" y2="1536" x1="272" />
            <wire x2="272" y1="1536" y2="1584" x1="272" />
            <wire x2="272" y1="1584" y2="1632" x1="272" />
            <wire x2="272" y1="1632" y2="1696" x1="272" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="256" y1="1808" y2="1808" x1="144" />
            <wire x2="256" y1="1808" y2="1872" x1="256" />
            <wire x2="256" y1="1872" y2="1936" x1="256" />
            <wire x2="256" y1="1936" y2="2016" x1="256" />
            <wire x2="256" y1="2016" y2="2080" x1="256" />
            <wire x2="256" y1="2080" y2="2176" x1="256" />
        </branch>
        <iomarker fontsize="28" x="144" y="1424" name="point(3:0)" orien="R180" />
        <iomarker fontsize="28" x="144" y="1808" name="LES(3:0)" orien="R180" />
        <bustap x2="368" y1="1488" y2="1488" x1="272" />
        <branch name="point(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="408" y="1488" type="branch" />
            <wire x2="416" y1="1488" y2="1488" x1="368" />
            <wire x2="448" y1="1488" y2="1488" x1="416" />
            <wire x2="448" y1="1488" y2="1552" x1="448" />
            <wire x2="864" y1="1552" y2="1552" x1="448" />
        </branch>
        <bustap x2="368" y1="1536" y2="1536" x1="272" />
        <branch name="point(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="424" y="1536" type="branch" />
            <wire x2="432" y1="1536" y2="1536" x1="368" />
            <wire x2="480" y1="1536" y2="1536" x1="432" />
            <wire x2="480" y1="1536" y2="1616" x1="480" />
            <wire x2="864" y1="1616" y2="1616" x1="480" />
        </branch>
        <bustap x2="368" y1="1584" y2="1584" x1="272" />
        <branch name="point(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="408" y="1584" type="branch" />
            <wire x2="416" y1="1584" y2="1584" x1="368" />
            <wire x2="448" y1="1584" y2="1584" x1="416" />
            <wire x2="656" y1="1584" y2="1584" x1="448" />
            <wire x2="656" y1="1584" y2="1680" x1="656" />
            <wire x2="864" y1="1680" y2="1680" x1="656" />
        </branch>
        <bustap x2="368" y1="1632" y2="1632" x1="272" />
        <branch name="point(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="408" y="1632" type="branch" />
            <wire x2="416" y1="1632" y2="1632" x1="368" />
            <wire x2="448" y1="1632" y2="1632" x1="416" />
            <wire x2="640" y1="1632" y2="1632" x1="448" />
            <wire x2="640" y1="1632" y2="1744" x1="640" />
            <wire x2="864" y1="1744" y2="1744" x1="640" />
        </branch>
        <bustap x2="352" y1="1872" y2="1872" x1="256" />
        <branch name="LES(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="376" y="1872" type="branch" />
            <wire x2="384" y1="1872" y2="1872" x1="352" />
            <wire x2="400" y1="1872" y2="1872" x1="384" />
            <wire x2="400" y1="1872" y2="1952" x1="400" />
            <wire x2="832" y1="1952" y2="1952" x1="400" />
        </branch>
        <bustap x2="352" y1="1936" y2="1936" x1="256" />
        <branch name="LES(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="1936" type="branch" />
            <wire x2="368" y1="1936" y2="1936" x1="352" />
            <wire x2="384" y1="1936" y2="1936" x1="368" />
            <wire x2="608" y1="1936" y2="1936" x1="384" />
            <wire x2="608" y1="1936" y2="2016" x1="608" />
            <wire x2="832" y1="2016" y2="2016" x1="608" />
        </branch>
        <bustap x2="352" y1="2016" y2="2016" x1="256" />
        <branch name="LES(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="368" y="2016" type="branch" />
            <wire x2="368" y1="2016" y2="2016" x1="352" />
            <wire x2="384" y1="2016" y2="2016" x1="368" />
            <wire x2="400" y1="2016" y2="2016" x1="384" />
            <wire x2="592" y1="2016" y2="2016" x1="400" />
            <wire x2="592" y1="2016" y2="2080" x1="592" />
            <wire x2="832" y1="2080" y2="2080" x1="592" />
        </branch>
        <bustap x2="352" y1="2080" y2="2080" x1="256" />
        <branch name="LES(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="376" y="2080" type="branch" />
            <wire x2="384" y1="2080" y2="2080" x1="352" />
            <wire x2="400" y1="2080" y2="2080" x1="384" />
            <wire x2="400" y1="2080" y2="2144" x1="400" />
            <wire x2="832" y1="2144" y2="2144" x1="400" />
        </branch>
        <instance x="864" y="1776" name="XLXI_2" orien="R0">
        </instance>
        <instance x="832" y="2176" name="XLXI_3" orien="R0">
        </instance>
        <branch name="p">
            <wire x2="1280" y1="1488" y2="1488" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1488" name="p" orien="R0" />
        <branch name="LE">
            <wire x2="1248" y1="1888" y2="1888" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1888" name="LE" orien="R0" />
        <instance x="1984" y="1936" name="XLXI_4" orien="R0" />
        <instance x="1984" y="2144" name="XLXI_5" orien="R0" />
        <instance x="1984" y="2336" name="XLXI_6" orien="R0" />
        <instance x="1984" y="2544" name="XLXI_7" orien="R0" />
        <instance x="1600" y="1840" name="XLXI_8" orien="R0" />
        <instance x="1584" y="2048" name="XLXI_9" orien="R0" />
        <bustap x2="560" y1="2336" y2="2336" x1="464" />
        <branch name="Scan(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="2336" type="branch" />
            <wire x2="672" y1="2336" y2="2336" x1="560" />
            <wire x2="784" y1="2336" y2="2336" x1="672" />
            <wire x2="784" y1="1808" y2="2336" x1="784" />
            <wire x2="1488" y1="1808" y2="1808" x1="784" />
            <wire x2="1600" y1="1808" y2="1808" x1="1488" />
            <wire x2="1488" y1="1808" y2="2272" x1="1488" />
            <wire x2="1488" y1="2272" y2="2480" x1="1488" />
            <wire x2="1984" y1="2480" y2="2480" x1="1488" />
            <wire x2="1984" y1="2272" y2="2272" x1="1488" />
        </branch>
        <bustap x2="560" y1="2464" y2="2464" x1="464" />
        <branch name="Scan(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="2464" type="branch" />
            <wire x2="688" y1="2464" y2="2464" x1="560" />
            <wire x2="816" y1="2464" y2="2464" x1="688" />
            <wire x2="1232" y1="2464" y2="2464" x1="816" />
            <wire x2="1232" y1="2016" y2="2464" x1="1232" />
            <wire x2="1552" y1="2016" y2="2016" x1="1232" />
            <wire x2="1584" y1="2016" y2="2016" x1="1552" />
            <wire x2="1552" y1="2016" y2="2080" x1="1552" />
            <wire x2="1984" y1="2080" y2="2080" x1="1552" />
            <wire x2="1552" y1="2080" y2="2416" x1="1552" />
            <wire x2="1984" y1="2416" y2="2416" x1="1552" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="1888" y1="2016" y2="2016" x1="1808" />
            <wire x2="1888" y1="2016" y2="2208" x1="1888" />
            <wire x2="1984" y1="2208" y2="2208" x1="1888" />
            <wire x2="1888" y1="1872" y2="2016" x1="1888" />
            <wire x2="1984" y1="1872" y2="1872" x1="1888" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1920" y1="1808" y2="1808" x1="1824" />
            <wire x2="1984" y1="1808" y2="1808" x1="1920" />
            <wire x2="1920" y1="1808" y2="2016" x1="1920" />
            <wire x2="1984" y1="2016" y2="2016" x1="1920" />
        </branch>
        <instance x="2576" y="2240" name="XLXI_10" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2400" y1="1840" y2="1840" x1="2240" />
            <wire x2="2400" y1="1840" y2="2016" x1="2400" />
            <wire x2="2576" y1="2016" y2="2016" x1="2400" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2400" y1="2048" y2="2048" x1="2240" />
            <wire x2="2400" y1="2048" y2="2080" x1="2400" />
            <wire x2="2576" y1="2080" y2="2080" x1="2400" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2400" y1="2240" y2="2240" x1="2240" />
            <wire x2="2400" y1="2144" y2="2240" x1="2400" />
            <wire x2="2576" y1="2144" y2="2144" x1="2400" />
        </branch>
        <branch name="XLXN_39">
            <wire x2="2416" y1="2448" y2="2448" x1="2240" />
            <wire x2="2416" y1="2208" y2="2448" x1="2416" />
            <wire x2="2576" y1="2208" y2="2208" x1="2416" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="3088" y1="1824" y2="2000" x1="3088" />
            <wire x2="3088" y1="2000" y2="2080" x1="3088" />
            <wire x2="3088" y1="2080" y2="2160" x1="3088" />
            <wire x2="3088" y1="2160" y2="2240" x1="3088" />
            <wire x2="3088" y1="2240" y2="2448" x1="3088" />
            <wire x2="3232" y1="2448" y2="2448" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3232" y="2448" name="AN(3:0)" orien="R0" />
        <bustap x2="2992" y1="2000" y2="2000" x1="3088" />
        <branch name="AN(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2000" type="branch" />
            <wire x2="2864" y1="2208" y2="2208" x1="2800" />
            <wire x2="2864" y1="2000" y2="2208" x1="2864" />
            <wire x2="2928" y1="2000" y2="2000" x1="2864" />
            <wire x2="2960" y1="2000" y2="2000" x1="2928" />
            <wire x2="2992" y1="2000" y2="2000" x1="2960" />
        </branch>
        <bustap x2="2992" y1="2080" y2="2080" x1="3088" />
        <branch name="AN(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2976" y="2080" type="branch" />
            <wire x2="2976" y1="2144" y2="2144" x1="2800" />
            <wire x2="2992" y1="2080" y2="2080" x1="2976" />
            <wire x2="2976" y1="2080" y2="2144" x1="2976" />
        </branch>
        <bustap x2="2992" y1="2160" y2="2160" x1="3088" />
        <branch name="AN(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2960" y="2160" type="branch" />
            <wire x2="2928" y1="2080" y2="2080" x1="2800" />
            <wire x2="2928" y1="2080" y2="2160" x1="2928" />
            <wire x2="2960" y1="2160" y2="2160" x1="2928" />
            <wire x2="2992" y1="2160" y2="2160" x1="2960" />
        </branch>
        <bustap x2="2992" y1="2240" y2="2240" x1="3088" />
        <branch name="AN(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2952" y="2240" type="branch" />
            <wire x2="2912" y1="2016" y2="2016" x1="2800" />
            <wire x2="2912" y1="2016" y2="2240" x1="2912" />
            <wire x2="2960" y1="2240" y2="2240" x1="2912" />
            <wire x2="2992" y1="2240" y2="2240" x1="2960" />
        </branch>
    </sheet>
</drawing>