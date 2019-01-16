<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="S(1:0)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="I0" />
        <signal name="XLXN_18" />
        <signal name="I1" />
        <signal name="I2" />
        <signal name="I3" />
        <signal name="XLXN_22" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="o" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Input" name="I0" />
        <port polarity="Input" name="I1" />
        <port polarity="Input" name="I2" />
        <port polarity="Input" name="I3" />
        <port polarity="Output" name="o" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="S(1)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="S(0)" name="I" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="S(0)" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="S(1)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="S(1)" name="I0" />
            <blockpin signalname="S(0)" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0" name="I0" />
            <blockpin signalname="XLXN_13" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1" name="I0" />
            <blockpin signalname="XLXN_14" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2" name="I0" />
            <blockpin signalname="XLXN_15" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_30" name="I0" />
            <blockpin signalname="XLXN_29" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="o" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1600" y="464" name="XLXI_3" orien="R0" />
        <instance x="1600" y="688" name="XLXI_4" orien="R0" />
        <instance x="1600" y="976" name="XLXI_5" orien="R0" />
        <instance x="1600" y="1216" name="XLXI_6" orien="R0" />
        <branch name="S(1:0)">
            <wire x2="576" y1="1008" y2="1008" x1="416" />
            <wire x2="576" y1="208" y2="672" x1="576" />
            <wire x2="576" y1="672" y2="944" x1="576" />
            <wire x2="576" y1="944" y2="1008" x1="576" />
        </branch>
        <iomarker fontsize="28" x="416" y="1008" name="S(1:0)" orien="R180" />
        <bustap x2="672" y1="672" y2="672" x1="576" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="744" y="672" type="branch" />
            <wire x2="744" y1="672" y2="672" x1="672" />
            <wire x2="816" y1="672" y2="672" x1="744" />
            <wire x2="944" y1="224" y2="224" x1="816" />
            <wire x2="1056" y1="224" y2="224" x1="944" />
            <wire x2="944" y1="224" y2="912" x1="944" />
            <wire x2="1600" y1="912" y2="912" x1="944" />
            <wire x2="944" y1="912" y2="1152" x1="944" />
            <wire x2="1600" y1="1152" y2="1152" x1="944" />
            <wire x2="816" y1="224" y2="672" x1="816" />
        </branch>
        <bustap x2="672" y1="944" y2="944" x1="576" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="944" type="branch" />
            <wire x2="768" y1="944" y2="944" x1="672" />
            <wire x2="864" y1="944" y2="944" x1="768" />
            <wire x2="992" y1="400" y2="400" x1="864" />
            <wire x2="1056" y1="400" y2="400" x1="992" />
            <wire x2="992" y1="400" y2="624" x1="992" />
            <wire x2="992" y1="624" y2="1088" x1="992" />
            <wire x2="1600" y1="1088" y2="1088" x1="992" />
            <wire x2="1600" y1="624" y2="624" x1="992" />
            <wire x2="864" y1="400" y2="944" x1="864" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="2304" y1="368" y2="368" x1="1856" />
        </branch>
        <branch name="XLXN_14">
            <wire x2="2304" y1="592" y2="592" x1="1856" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2304" y1="880" y2="880" x1="1856" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="2304" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="I0">
            <wire x2="1248" y1="1360" y2="1376" x1="1248" />
            <wire x2="1872" y1="1360" y2="1360" x1="1248" />
            <wire x2="1872" y1="432" y2="1360" x1="1872" />
            <wire x2="2304" y1="432" y2="432" x1="1872" />
        </branch>
        <branch name="I1">
            <wire x2="1984" y1="1552" y2="1552" x1="1248" />
            <wire x2="2304" y1="656" y2="656" x1="1984" />
            <wire x2="1984" y1="656" y2="1552" x1="1984" />
        </branch>
        <branch name="I2">
            <wire x2="2112" y1="1744" y2="1744" x1="1248" />
            <wire x2="2304" y1="944" y2="944" x1="2112" />
            <wire x2="2112" y1="944" y2="1744" x1="2112" />
        </branch>
        <branch name="I3">
            <wire x2="2192" y1="1984" y2="1984" x1="1248" />
            <wire x2="2304" y1="1184" y2="1184" x1="2192" />
            <wire x2="2192" y1="1184" y2="1984" x1="2192" />
        </branch>
        <iomarker fontsize="28" x="1248" y="1376" name="I0" orien="R90" />
        <iomarker fontsize="28" x="1248" y="1552" name="I1" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1744" name="I2" orien="R180" />
        <iomarker fontsize="28" x="1248" y="1984" name="I3" orien="R180" />
        <instance x="1056" y="256" name="XLXI_1" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1440" y1="224" y2="224" x1="1280" />
            <wire x2="1440" y1="224" y2="336" x1="1440" />
            <wire x2="1600" y1="336" y2="336" x1="1440" />
            <wire x2="1440" y1="336" y2="560" x1="1440" />
            <wire x2="1600" y1="560" y2="560" x1="1440" />
        </branch>
        <instance x="1056" y="432" name="XLXI_2" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1392" y1="400" y2="400" x1="1280" />
            <wire x2="1392" y1="400" y2="848" x1="1392" />
            <wire x2="1600" y1="848" y2="848" x1="1392" />
            <wire x2="1600" y1="400" y2="400" x1="1392" />
        </branch>
        <instance x="2304" y="496" name="XLXI_7" orien="R0" />
        <instance x="2304" y="720" name="XLXI_8" orien="R0" />
        <instance x="2304" y="1008" name="XLXI_9" orien="R0" />
        <instance x="2304" y="1248" name="XLXI_10" orien="R0" />
        <instance x="2912" y="928" name="XLXI_11" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="2912" y1="400" y2="400" x1="2560" />
            <wire x2="2912" y1="400" y2="672" x1="2912" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2736" y1="624" y2="624" x1="2560" />
            <wire x2="2736" y1="624" y2="736" x1="2736" />
            <wire x2="2912" y1="736" y2="736" x1="2736" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="2736" y1="912" y2="912" x1="2560" />
            <wire x2="2736" y1="800" y2="912" x1="2736" />
            <wire x2="2912" y1="800" y2="800" x1="2736" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="2912" y1="1152" y2="1152" x1="2560" />
            <wire x2="2912" y1="864" y2="1152" x1="2912" />
        </branch>
        <branch name="o">
            <wire x2="3200" y1="768" y2="768" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3200" y="768" name="o" orien="R0" />
    </sheet>
</drawing>