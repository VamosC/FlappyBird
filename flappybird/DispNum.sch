<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="RST" />
        <signal name="clkd(31:0)" />
        <signal name="clkd(18:17)" />
        <signal name="HEXS(15:0)" />
        <signal name="points(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="XLXN_9(3:0)">
            <attr name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="AN(3:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="Segment(7:0)" />
        <signal name="Segment(7)" />
        <signal name="Segment(6)" />
        <signal name="Segment(5)" />
        <signal name="Segment(4)" />
        <signal name="Segment(3)" />
        <signal name="Segment(2)" />
        <signal name="Segment(1)" />
        <signal name="Segment(0)" />
        <signal name="XLXN_9(3)" />
        <signal name="XLXN_9(2)" />
        <signal name="XLXN_9(0)" />
        <signal name="XLXN_9(1)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="HEXS(15:0)" />
        <port polarity="Input" name="points(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Segment(7:0)" />
        <blockdef name="MyMC14495">
            <timestamp>2018-10-31T5:46:23</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DisplaySync">
            <timestamp>2018-11-6T12:21:6</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="clkdiv">
            <timestamp>2018-11-6T13:5:30</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="MyMC14495" name="XLXI_2">
            <blockpin signalname="XLXN_9(1)" name="D1" />
            <blockpin signalname="XLXN_9(3)" name="D3" />
            <blockpin signalname="XLXN_9(0)" name="D0" />
            <blockpin signalname="XLXN_9(2)" name="D2" />
            <blockpin signalname="XLXN_12" name="LE" />
            <blockpin signalname="XLXN_11" name="point" />
            <blockpin signalname="Segment(0)" name="a" />
            <blockpin signalname="Segment(1)" name="b" />
            <blockpin signalname="Segment(2)" name="c" />
            <blockpin signalname="Segment(3)" name="d" />
            <blockpin signalname="Segment(5)" name="f" />
            <blockpin signalname="Segment(6)" name="g" />
            <blockpin signalname="Segment(4)" name="e" />
            <blockpin signalname="Segment(7)" name="p" />
        </block>
        <block symbolname="clkdiv" name="XLXI_5">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RST" name="rst" />
            <blockpin signalname="clkd(31:0)" name="clkdiv(31:0)" />
        </block>
        <block symbolname="DisplaySync" name="XLXI_6">
            <blockpin signalname="clkd(18:17)" name="Scan(1:0)" />
            <blockpin signalname="HEXS(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="points(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="HEX(3:0)" />
            <blockpin signalname="XLXN_11" name="p" />
            <blockpin signalname="XLXN_12" name="LE" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1904" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <wire x2="896" y1="800" y2="800" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="800" name="clk" orien="R180" />
        <branch name="RST">
            <wire x2="896" y1="864" y2="864" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="864" name="RST" orien="R180" />
        <branch name="clkd(31:0)">
            <wire x2="1280" y1="1408" y2="1408" x1="496" />
            <wire x2="496" y1="1408" y2="2176" x1="496" />
            <wire x2="496" y1="2176" y2="2208" x1="496" />
            <wire x2="1344" y1="800" y2="800" x1="1280" />
            <wire x2="1344" y1="800" y2="960" x1="1344" />
            <wire x2="1344" y1="960" y2="960" x1="1280" />
            <wire x2="1280" y1="960" y2="1408" x1="1280" />
        </branch>
        <bustap x2="592" y1="2176" y2="2176" x1="496" />
        <branch name="clkd(18:17)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="2176" type="branch" />
            <wire x2="672" y1="2176" y2="2176" x1="592" />
            <wire x2="752" y1="2176" y2="2176" x1="672" />
            <wire x2="1104" y1="1808" y2="1808" x1="752" />
            <wire x2="752" y1="1808" y2="2176" x1="752" />
        </branch>
        <branch name="HEXS(15:0)">
            <wire x2="1104" y1="1872" y2="1872" x1="368" />
        </branch>
        <branch name="points(3:0)">
            <wire x2="1104" y1="1936" y2="1936" x1="368" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="1104" y1="2000" y2="2000" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="1872" name="HEXS(15:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="1936" name="points(3:0)" orien="R180" />
        <iomarker fontsize="28" x="368" y="2000" name="LES(3:0)" orien="R180" />
        <branch name="XLXN_9(3:0)">
            <wire x2="1680" y1="1808" y2="1808" x1="1488" />
            <wire x2="1680" y1="560" y2="688" x1="1680" />
            <wire x2="1680" y1="688" y2="768" x1="1680" />
            <wire x2="1680" y1="768" y2="784" x1="1680" />
            <wire x2="1680" y1="784" y2="848" x1="1680" />
            <wire x2="1680" y1="848" y2="880" x1="1680" />
            <wire x2="1680" y1="880" y2="960" x1="1680" />
            <wire x2="1680" y1="960" y2="1808" x1="1680" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2560" y1="2000" y2="2000" x1="1488" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1696" y1="1872" y2="1872" x1="1488" />
            <wire x2="1696" y1="1088" y2="1872" x1="1696" />
            <wire x2="1904" y1="1088" y2="1088" x1="1696" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1664" y1="1936" y2="1936" x1="1488" />
            <wire x2="1664" y1="1008" y2="1936" x1="1664" />
            <wire x2="1904" y1="1008" y2="1008" x1="1664" />
        </branch>
        <branch name="Segment(7:0)">
            <wire x2="2752" y1="464" y2="688" x1="2752" />
            <wire x2="2752" y1="688" y2="752" x1="2752" />
            <wire x2="2752" y1="752" y2="816" x1="2752" />
            <wire x2="2752" y1="816" y2="880" x1="2752" />
            <wire x2="2752" y1="880" y2="960" x1="2752" />
            <wire x2="2752" y1="960" y2="1008" x1="2752" />
            <wire x2="2752" y1="1008" y2="1088" x1="2752" />
            <wire x2="2752" y1="1088" y2="1152" x1="2752" />
            <wire x2="2752" y1="1152" y2="1232" x1="2752" />
            <wire x2="2992" y1="1232" y2="1232" x1="2752" />
        </branch>
        <iomarker fontsize="28" x="2992" y="1232" name="Segment(7:0)" orien="R0" />
        <bustap x2="2656" y1="1152" y2="1152" x1="2752" />
        <branch name="Segment(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2592" y="1152" type="branch" />
            <wire x2="2528" y1="1136" y2="1136" x1="2288" />
            <wire x2="2528" y1="1136" y2="1152" x1="2528" />
            <wire x2="2592" y1="1152" y2="1152" x1="2528" />
            <wire x2="2656" y1="1152" y2="1152" x1="2592" />
        </branch>
        <bustap x2="2656" y1="1008" y2="1008" x1="2752" />
        <branch name="Segment(6)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="1008" type="branch" />
            <wire x2="2624" y1="1008" y2="1008" x1="2288" />
            <wire x2="2640" y1="1008" y2="1008" x1="2624" />
            <wire x2="2656" y1="1008" y2="1008" x1="2640" />
        </branch>
        <bustap x2="2656" y1="960" y2="960" x1="2752" />
        <branch name="Segment(5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="960" type="branch" />
            <wire x2="2624" y1="944" y2="944" x1="2288" />
            <wire x2="2624" y1="944" y2="960" x1="2624" />
            <wire x2="2640" y1="960" y2="960" x1="2624" />
            <wire x2="2656" y1="960" y2="960" x1="2640" />
        </branch>
        <bustap x2="2656" y1="1088" y2="1088" x1="2752" />
        <branch name="Segment(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2624" y="1088" type="branch" />
            <wire x2="2592" y1="1072" y2="1072" x1="2288" />
            <wire x2="2592" y1="1072" y2="1088" x1="2592" />
            <wire x2="2624" y1="1088" y2="1088" x1="2592" />
            <wire x2="2656" y1="1088" y2="1088" x1="2624" />
        </branch>
        <bustap x2="2656" y1="880" y2="880" x1="2752" />
        <branch name="Segment(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="880" type="branch" />
            <wire x2="2624" y1="880" y2="880" x1="2288" />
            <wire x2="2640" y1="880" y2="880" x1="2624" />
            <wire x2="2656" y1="880" y2="880" x1="2640" />
        </branch>
        <bustap x2="2656" y1="816" y2="816" x1="2752" />
        <branch name="Segment(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2640" y="816" type="branch" />
            <wire x2="2624" y1="816" y2="816" x1="2288" />
            <wire x2="2640" y1="816" y2="816" x1="2624" />
            <wire x2="2656" y1="816" y2="816" x1="2640" />
        </branch>
        <bustap x2="2656" y1="752" y2="752" x1="2752" />
        <branch name="Segment(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2648" y="752" type="branch" />
            <wire x2="2640" y1="752" y2="752" x1="2288" />
            <wire x2="2656" y1="752" y2="752" x1="2640" />
        </branch>
        <bustap x2="2656" y1="688" y2="688" x1="2752" />
        <branch name="Segment(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2600" y="688" type="branch" />
            <wire x2="2544" y1="688" y2="688" x1="2288" />
            <wire x2="2608" y1="688" y2="688" x1="2544" />
            <wire x2="2656" y1="688" y2="688" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="2560" y="2000" name="AN(3:0)" orien="R0" />
        <instance x="896" y="896" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1104" y="2032" name="XLXI_6" orien="R0">
        </instance>
        <bustap x2="1776" y1="784" y2="784" x1="1680" />
        <bustap x2="1776" y1="960" y2="960" x1="1680" />
        <bustap x2="1776" y1="688" y2="688" x1="1680" />
        <branch name="XLXN_9(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="688" type="branch" />
            <wire x2="1792" y1="688" y2="688" x1="1776" />
            <wire x2="1808" y1="688" y2="688" x1="1792" />
            <wire x2="1904" y1="688" y2="688" x1="1808" />
        </branch>
        <bustap x2="1776" y1="880" y2="880" x1="1680" />
        <branch name="XLXN_9(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="784" type="branch" />
            <wire x2="1792" y1="784" y2="784" x1="1776" />
            <wire x2="1808" y1="784" y2="784" x1="1792" />
            <wire x2="1904" y1="768" y2="768" x1="1808" />
            <wire x2="1808" y1="768" y2="784" x1="1808" />
        </branch>
        <branch name="XLXN_9(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="880" type="branch" />
            <wire x2="1792" y1="880" y2="880" x1="1776" />
            <wire x2="1808" y1="880" y2="880" x1="1792" />
            <wire x2="1904" y1="848" y2="848" x1="1808" />
            <wire x2="1808" y1="848" y2="880" x1="1808" />
        </branch>
        <branch name="XLXN_9(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="960" type="branch" />
            <wire x2="1792" y1="960" y2="960" x1="1776" />
            <wire x2="1808" y1="960" y2="960" x1="1792" />
            <wire x2="1904" y1="928" y2="928" x1="1808" />
            <wire x2="1808" y1="928" y2="960" x1="1808" />
        </branch>
    </sheet>
</drawing>