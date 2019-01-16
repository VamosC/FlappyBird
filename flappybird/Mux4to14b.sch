<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="kintex7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="S(1:0)" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="I3(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="I1(3:0)" />
        <signal name="I0(3:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="I0(0)" />
        <signal name="I1(0)" />
        <signal name="I2(0)" />
        <signal name="I3(0)" />
        <signal name="I0(1)" />
        <signal name="I1(1)" />
        <signal name="I2(1)" />
        <signal name="I3(1)" />
        <signal name="I0(3)" />
        <signal name="I1(3)" />
        <signal name="I2(3)" />
        <signal name="I3(3)" />
        <signal name="I0(2)" />
        <signal name="I1(2)" />
        <signal name="I2(2)" />
        <signal name="I3(2)" />
        <signal name="o(3:0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Output" name="o(3:0)" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_4" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="S(0)" name="I0" />
            <blockpin signalname="XLXN_3" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="S(1)" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="S(1)" name="I0" />
            <blockpin signalname="S(0)" name="I1" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_5">
            <blockpin signalname="S(1)" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="S(0)" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_59" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_57" name="I2" />
            <blockpin signalname="XLXN_56" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_16">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_17">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_22">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_68" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_69" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_47" name="I1" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_40">
            <blockpin signalname="XLXN_63" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_61" name="I2" />
            <blockpin signalname="XLXN_60" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_41">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="XLXN_66" name="I1" />
            <blockpin signalname="XLXN_65" name="I2" />
            <blockpin signalname="XLXN_64" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_42">
            <blockpin signalname="XLXN_71" name="I0" />
            <blockpin signalname="XLXN_70" name="I1" />
            <blockpin signalname="XLXN_69" name="I2" />
            <blockpin signalname="XLXN_68" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1440" y="464" name="XLXI_1" orien="R0" />
        <instance x="1456" y="672" name="XLXI_2" orien="R0" />
        <instance x="1472" y="880" name="XLXI_3" orien="R0" />
        <instance x="1488" y="1088" name="XLXI_4" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="1296" y1="288" y2="288" x1="992" />
            <wire x2="1296" y1="288" y2="336" x1="1296" />
            <wire x2="1440" y1="336" y2="336" x1="1296" />
            <wire x2="1296" y1="336" y2="544" x1="1296" />
            <wire x2="1456" y1="544" y2="544" x1="1296" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1248" y1="400" y2="400" x1="1008" />
            <wire x2="1440" y1="400" y2="400" x1="1248" />
            <wire x2="1248" y1="400" y2="752" x1="1248" />
            <wire x2="1472" y1="752" y2="752" x1="1248" />
        </branch>
        <instance x="768" y="320" name="XLXI_5" orien="R0" />
        <instance x="784" y="432" name="XLXI_6" orien="R0" />
        <branch name="S(1:0)">
            <wire x2="288" y1="320" y2="320" x1="144" />
            <wire x2="288" y1="320" y2="368" x1="288" />
            <wire x2="288" y1="368" y2="432" x1="288" />
            <wire x2="288" y1="432" y2="576" x1="288" />
        </branch>
        <iomarker fontsize="28" x="144" y="320" name="S(1:0)" orien="R180" />
        <bustap x2="384" y1="368" y2="368" x1="288" />
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="472" y="368" type="branch" />
            <wire x2="472" y1="368" y2="368" x1="384" />
            <wire x2="560" y1="368" y2="368" x1="472" />
            <wire x2="688" y1="288" y2="288" x1="560" />
            <wire x2="768" y1="288" y2="288" x1="688" />
            <wire x2="688" y1="288" y2="816" x1="688" />
            <wire x2="1472" y1="816" y2="816" x1="688" />
            <wire x2="688" y1="816" y2="1024" x1="688" />
            <wire x2="1488" y1="1024" y2="1024" x1="688" />
            <wire x2="560" y1="288" y2="368" x1="560" />
        </branch>
        <bustap x2="384" y1="432" y2="432" x1="288" />
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="472" y="432" type="branch" />
            <wire x2="472" y1="432" y2="432" x1="384" />
            <wire x2="560" y1="432" y2="432" x1="472" />
            <wire x2="720" y1="400" y2="400" x1="560" />
            <wire x2="784" y1="400" y2="400" x1="720" />
            <wire x2="720" y1="400" y2="608" x1="720" />
            <wire x2="720" y1="608" y2="960" x1="720" />
            <wire x2="1488" y1="960" y2="960" x1="720" />
            <wire x2="1456" y1="608" y2="608" x1="720" />
            <wire x2="560" y1="400" y2="432" x1="560" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1792" y1="784" y2="784" x1="1728" />
            <wire x2="2448" y1="784" y2="784" x1="1792" />
            <wire x2="1792" y1="784" y2="1744" x1="1792" />
            <wire x2="2448" y1="1744" y2="1744" x1="1792" />
            <wire x2="1792" y1="1744" y2="2624" x1="1792" />
            <wire x2="1792" y1="2624" y2="3472" x1="1792" />
            <wire x2="2448" y1="3472" y2="3472" x1="1792" />
            <wire x2="2448" y1="2624" y2="2624" x1="1792" />
        </branch>
        <instance x="2448" y="912" name="XLXI_9" orien="R0" />
        <instance x="2432" y="704" name="XLXI_8" orien="R0" />
        <instance x="2432" y="496" name="XLXI_7" orien="R0" />
        <instance x="2448" y="1120" name="XLXI_10" orien="R0" />
        <instance x="2448" y="1456" name="XLXI_16" orien="R0" />
        <instance x="2448" y="1664" name="XLXI_17" orien="R0" />
        <instance x="2448" y="1872" name="XLXI_18" orien="R0" />
        <instance x="2448" y="2080" name="XLXI_19" orien="R0" />
        <instance x="2448" y="2384" name="XLXI_20" orien="R0" />
        <instance x="2448" y="2576" name="XLXI_21" orien="R0" />
        <instance x="2448" y="2752" name="XLXI_22" orien="R0" />
        <instance x="2448" y="2944" name="XLXI_23" orien="R0" />
        <instance x="2448" y="3216" name="XLXI_24" orien="R0" />
        <instance x="2448" y="3408" name="XLXI_25" orien="R0" />
        <instance x="2448" y="3600" name="XLXI_26" orien="R0" />
        <instance x="2448" y="3808" name="XLXI_27" orien="R0" />
        <branch name="XLXN_44">
            <wire x2="1856" y1="368" y2="368" x1="1696" />
            <wire x2="2432" y1="368" y2="368" x1="1856" />
            <wire x2="1856" y1="368" y2="1328" x1="1856" />
            <wire x2="2448" y1="1328" y2="1328" x1="1856" />
            <wire x2="1856" y1="1328" y2="2256" x1="1856" />
            <wire x2="1856" y1="2256" y2="3088" x1="1856" />
            <wire x2="2448" y1="3088" y2="3088" x1="1856" />
            <wire x2="2448" y1="2256" y2="2256" x1="1856" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1824" y1="576" y2="576" x1="1712" />
            <wire x2="2432" y1="576" y2="576" x1="1824" />
            <wire x2="1824" y1="576" y2="1536" x1="1824" />
            <wire x2="2448" y1="1536" y2="1536" x1="1824" />
            <wire x2="1824" y1="1536" y2="2448" x1="1824" />
            <wire x2="1824" y1="2448" y2="3280" x1="1824" />
            <wire x2="2448" y1="3280" y2="3280" x1="1824" />
            <wire x2="2448" y1="2448" y2="2448" x1="1824" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1760" y1="992" y2="992" x1="1744" />
            <wire x2="2448" y1="992" y2="992" x1="1760" />
            <wire x2="1760" y1="992" y2="1952" x1="1760" />
            <wire x2="2448" y1="1952" y2="1952" x1="1760" />
            <wire x2="1760" y1="1952" y2="2816" x1="1760" />
            <wire x2="1760" y1="2816" y2="3680" x1="1760" />
            <wire x2="2448" y1="3680" y2="3680" x1="1760" />
            <wire x2="2448" y1="2816" y2="2816" x1="1760" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="2080" y1="2880" y2="2880" x1="784" />
            <wire x2="2080" y1="2880" y2="3744" x1="2080" />
            <wire x2="2112" y1="3744" y2="3744" x1="2080" />
            <wire x2="2112" y1="3744" y2="3776" x1="2112" />
            <wire x2="2112" y1="3776" y2="3792" x1="2112" />
            <wire x2="2112" y1="2880" y2="2880" x1="2080" />
            <wire x2="2112" y1="2880" y2="2960" x1="2112" />
            <wire x2="2112" y1="2960" y2="2992" x1="2112" />
            <wire x2="2128" y1="2992" y2="2992" x1="2112" />
            <wire x2="2096" y1="1056" y2="1056" x1="2080" />
            <wire x2="2096" y1="1056" y2="1120" x1="2096" />
            <wire x2="2096" y1="1120" y2="1152" x1="2096" />
            <wire x2="2080" y1="1056" y2="1456" x1="2080" />
            <wire x2="2080" y1="1456" y2="2016" x1="2080" />
            <wire x2="2112" y1="2016" y2="2016" x1="2080" />
            <wire x2="2112" y1="2016" y2="2080" x1="2112" />
            <wire x2="2112" y1="2080" y2="2128" x1="2112" />
            <wire x2="2080" y1="2016" y2="2880" x1="2080" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="2048" y1="2688" y2="2688" x1="736" />
            <wire x2="2048" y1="2688" y2="3536" x1="2048" />
            <wire x2="2112" y1="3536" y2="3536" x1="2048" />
            <wire x2="2112" y1="3536" y2="3584" x1="2112" />
            <wire x2="2112" y1="3584" y2="3616" x1="2112" />
            <wire x2="2112" y1="2688" y2="2688" x1="2048" />
            <wire x2="2112" y1="2688" y2="2704" x1="2112" />
            <wire x2="2112" y1="2704" y2="2720" x1="2112" />
            <wire x2="2112" y1="2720" y2="2752" x1="2112" />
            <wire x2="2096" y1="848" y2="848" x1="2048" />
            <wire x2="2096" y1="848" y2="896" x1="2096" />
            <wire x2="2096" y1="896" y2="928" x1="2096" />
            <wire x2="2048" y1="848" y2="1808" x1="2048" />
            <wire x2="2112" y1="1808" y2="1808" x1="2048" />
            <wire x2="2112" y1="1808" y2="1856" x1="2112" />
            <wire x2="2112" y1="1856" y2="1888" x1="2112" />
            <wire x2="2048" y1="1808" y2="2688" x1="2048" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="2016" y1="2512" y2="2512" x1="720" />
            <wire x2="2016" y1="2512" y2="3344" x1="2016" />
            <wire x2="2112" y1="3344" y2="3344" x1="2016" />
            <wire x2="2112" y1="3344" y2="3392" x1="2112" />
            <wire x2="2112" y1="3392" y2="3408" x1="2112" />
            <wire x2="2112" y1="2512" y2="2512" x1="2016" />
            <wire x2="2112" y1="2512" y2="2544" x1="2112" />
            <wire x2="2112" y1="2544" y2="2560" x1="2112" />
            <wire x2="2096" y1="640" y2="640" x1="2016" />
            <wire x2="2096" y1="640" y2="688" x1="2096" />
            <wire x2="2096" y1="688" y2="720" x1="2096" />
            <wire x2="2096" y1="720" y2="736" x1="2096" />
            <wire x2="2016" y1="640" y2="1600" x1="2016" />
            <wire x2="2112" y1="1600" y2="1600" x1="2016" />
            <wire x2="2112" y1="1600" y2="1648" x1="2112" />
            <wire x2="2112" y1="1648" y2="1680" x1="2112" />
            <wire x2="2016" y1="1600" y2="2512" x1="2016" />
        </branch>
        <branch name="I0(3:0)">
            <wire x2="1984" y1="2320" y2="2320" x1="720" />
            <wire x2="1984" y1="2320" y2="3152" x1="1984" />
            <wire x2="2112" y1="3152" y2="3152" x1="1984" />
            <wire x2="2112" y1="3152" y2="3200" x1="2112" />
            <wire x2="2112" y1="3200" y2="3232" x1="2112" />
            <wire x2="2112" y1="2320" y2="2320" x1="1984" />
            <wire x2="2112" y1="2320" y2="2352" x1="2112" />
            <wire x2="2112" y1="2352" y2="2384" x1="2112" />
            <wire x2="1984" y1="400" y2="432" x1="1984" />
            <wire x2="1984" y1="432" y2="448" x1="1984" />
            <wire x2="1984" y1="448" y2="1392" x1="1984" />
            <wire x2="2096" y1="1392" y2="1392" x1="1984" />
            <wire x2="2128" y1="1392" y2="1392" x1="2096" />
            <wire x2="2128" y1="1392" y2="1456" x1="2128" />
            <wire x2="2128" y1="1456" y2="1472" x1="2128" />
            <wire x2="1984" y1="1392" y2="1456" x1="1984" />
            <wire x2="1984" y1="1456" y2="2320" x1="1984" />
        </branch>
        <instance x="3136" y="848" name="XLXI_11" orien="R0" />
        <instance x="3136" y="1824" name="XLXI_40" orien="R0" />
        <instance x="3104" y="2720" name="XLXI_41" orien="R0" />
        <instance x="3104" y="3584" name="XLXI_42" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="3136" y1="400" y2="400" x1="2688" />
            <wire x2="3136" y1="400" y2="592" x1="3136" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="2912" y1="608" y2="608" x1="2688" />
            <wire x2="2912" y1="608" y2="656" x1="2912" />
            <wire x2="3136" y1="656" y2="656" x1="2912" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="2912" y1="816" y2="816" x1="2704" />
            <wire x2="2912" y1="720" y2="816" x1="2912" />
            <wire x2="3136" y1="720" y2="720" x1="2912" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="3136" y1="1024" y2="1024" x1="2704" />
            <wire x2="3136" y1="784" y2="1024" x1="3136" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="3136" y1="1360" y2="1360" x1="2704" />
            <wire x2="3136" y1="1360" y2="1568" x1="3136" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2912" y1="1568" y2="1568" x1="2704" />
            <wire x2="2912" y1="1568" y2="1632" x1="2912" />
            <wire x2="3136" y1="1632" y2="1632" x1="2912" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2912" y1="1776" y2="1776" x1="2704" />
            <wire x2="2912" y1="1696" y2="1776" x1="2912" />
            <wire x2="3136" y1="1696" y2="1696" x1="2912" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="3136" y1="1984" y2="1984" x1="2704" />
            <wire x2="3136" y1="1760" y2="1984" x1="3136" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="3104" y1="2288" y2="2288" x1="2704" />
            <wire x2="3104" y1="2288" y2="2464" x1="3104" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="2896" y1="2480" y2="2480" x1="2704" />
            <wire x2="2896" y1="2480" y2="2528" x1="2896" />
            <wire x2="3104" y1="2528" y2="2528" x1="2896" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2896" y1="2656" y2="2656" x1="2704" />
            <wire x2="2896" y1="2592" y2="2656" x1="2896" />
            <wire x2="3104" y1="2592" y2="2592" x1="2896" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="3104" y1="2848" y2="2848" x1="2704" />
            <wire x2="3104" y1="2656" y2="2848" x1="3104" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="3104" y1="3120" y2="3120" x1="2704" />
            <wire x2="3104" y1="3120" y2="3328" x1="3104" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2896" y1="3312" y2="3312" x1="2704" />
            <wire x2="2896" y1="3312" y2="3392" x1="2896" />
            <wire x2="3104" y1="3392" y2="3392" x1="2896" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="2896" y1="3504" y2="3504" x1="2704" />
            <wire x2="2896" y1="3456" y2="3504" x1="2896" />
            <wire x2="3104" y1="3456" y2="3456" x1="2896" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="3104" y1="3712" y2="3712" x1="2704" />
            <wire x2="3104" y1="3520" y2="3712" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="720" y="2320" name="I0(3:0)" orien="R180" />
        <iomarker fontsize="28" x="720" y="2512" name="I1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="736" y="2688" name="I2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="784" y="2880" name="I3(3:0)" orien="R180" />
        <bustap x2="2080" y1="448" y2="448" x1="1984" />
        <branch name="I0(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2248" y="448" type="branch" />
            <wire x2="2248" y1="448" y2="448" x1="2080" />
            <wire x2="2416" y1="448" y2="448" x1="2248" />
            <wire x2="2320" y1="416" y2="432" x1="2320" />
            <wire x2="2432" y1="432" y2="432" x1="2320" />
            <wire x2="2416" y1="416" y2="416" x1="2320" />
            <wire x2="2416" y1="416" y2="448" x1="2416" />
        </branch>
        <bustap x2="2192" y1="688" y2="688" x1="2096" />
        <branch name="I1(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="688" type="branch" />
            <wire x2="2232" y1="688" y2="688" x1="2192" />
            <wire x2="2272" y1="688" y2="688" x1="2232" />
            <wire x2="2320" y1="688" y2="688" x1="2272" />
            <wire x2="2432" y1="640" y2="640" x1="2320" />
            <wire x2="2320" y1="640" y2="688" x1="2320" />
        </branch>
        <bustap x2="2192" y1="896" y2="896" x1="2096" />
        <branch name="I2(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="896" type="branch" />
            <wire x2="2240" y1="896" y2="896" x1="2192" />
            <wire x2="2288" y1="896" y2="896" x1="2240" />
            <wire x2="2320" y1="896" y2="896" x1="2288" />
            <wire x2="2448" y1="848" y2="848" x1="2320" />
            <wire x2="2320" y1="848" y2="896" x1="2320" />
        </branch>
        <bustap x2="2192" y1="1120" y2="1120" x1="2096" />
        <branch name="I3(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2240" y="1120" type="branch" />
            <wire x2="2240" y1="1120" y2="1120" x1="2192" />
            <wire x2="2288" y1="1120" y2="1120" x1="2240" />
            <wire x2="2320" y1="1120" y2="1120" x1="2288" />
            <wire x2="2448" y1="1056" y2="1056" x1="2320" />
            <wire x2="2320" y1="1056" y2="1120" x1="2320" />
        </branch>
        <bustap x2="2224" y1="1456" y2="1456" x1="2128" />
        <branch name="I0(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2248" y="1456" type="branch" />
            <wire x2="2248" y1="1456" y2="1456" x1="2224" />
            <wire x2="2272" y1="1456" y2="1456" x1="2248" />
            <wire x2="2320" y1="1456" y2="1456" x1="2272" />
            <wire x2="2448" y1="1392" y2="1392" x1="2320" />
            <wire x2="2320" y1="1392" y2="1456" x1="2320" />
        </branch>
        <bustap x2="2208" y1="1648" y2="1648" x1="2112" />
        <branch name="I1(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2264" y="1648" type="branch" />
            <wire x2="2264" y1="1648" y2="1648" x1="2208" />
            <wire x2="2320" y1="1648" y2="1648" x1="2264" />
            <wire x2="2336" y1="1648" y2="1648" x1="2320" />
            <wire x2="2448" y1="1600" y2="1600" x1="2336" />
            <wire x2="2336" y1="1600" y2="1648" x1="2336" />
        </branch>
        <bustap x2="2208" y1="1856" y2="1856" x1="2112" />
        <branch name="I2(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="1856" type="branch" />
            <wire x2="2256" y1="1856" y2="1856" x1="2208" />
            <wire x2="2304" y1="1856" y2="1856" x1="2256" />
            <wire x2="2336" y1="1856" y2="1856" x1="2304" />
            <wire x2="2448" y1="1808" y2="1808" x1="2336" />
            <wire x2="2336" y1="1808" y2="1856" x1="2336" />
        </branch>
        <bustap x2="2208" y1="2080" y2="2080" x1="2112" />
        <branch name="I3(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2080" type="branch" />
            <wire x2="2256" y1="2080" y2="2080" x1="2208" />
            <wire x2="2304" y1="2080" y2="2080" x1="2256" />
            <wire x2="2336" y1="2080" y2="2080" x1="2304" />
            <wire x2="2448" y1="2016" y2="2016" x1="2336" />
            <wire x2="2336" y1="2016" y2="2080" x1="2336" />
        </branch>
        <bustap x2="2208" y1="3200" y2="3200" x1="2112" />
        <branch name="I0(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2248" y="3200" type="branch" />
            <wire x2="2248" y1="3200" y2="3200" x1="2208" />
            <wire x2="2288" y1="3200" y2="3200" x1="2248" />
            <wire x2="2336" y1="3200" y2="3200" x1="2288" />
            <wire x2="2448" y1="3152" y2="3152" x1="2336" />
            <wire x2="2336" y1="3152" y2="3200" x1="2336" />
        </branch>
        <bustap x2="2208" y1="3392" y2="3392" x1="2112" />
        <branch name="I1(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2264" y="3392" type="branch" />
            <wire x2="2264" y1="3392" y2="3392" x1="2208" />
            <wire x2="2320" y1="3392" y2="3392" x1="2264" />
            <wire x2="2336" y1="3392" y2="3392" x1="2320" />
            <wire x2="2448" y1="3344" y2="3344" x1="2336" />
            <wire x2="2336" y1="3344" y2="3392" x1="2336" />
        </branch>
        <bustap x2="2208" y1="3584" y2="3584" x1="2112" />
        <branch name="I2(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2248" y="3584" type="branch" />
            <wire x2="2248" y1="3584" y2="3584" x1="2208" />
            <wire x2="2288" y1="3584" y2="3584" x1="2248" />
            <wire x2="2336" y1="3584" y2="3584" x1="2288" />
            <wire x2="2448" y1="3536" y2="3536" x1="2336" />
            <wire x2="2336" y1="3536" y2="3584" x1="2336" />
        </branch>
        <bustap x2="2208" y1="3776" y2="3776" x1="2112" />
        <branch name="I3(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="3776" type="branch" />
            <wire x2="2256" y1="3776" y2="3776" x1="2208" />
            <wire x2="2304" y1="3776" y2="3776" x1="2256" />
            <wire x2="2336" y1="3776" y2="3776" x1="2304" />
            <wire x2="2448" y1="3744" y2="3744" x1="2336" />
            <wire x2="2336" y1="3744" y2="3776" x1="2336" />
        </branch>
        <bustap x2="2208" y1="2352" y2="2352" x1="2112" />
        <branch name="I0(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2232" y="2352" type="branch" />
            <wire x2="2232" y1="2352" y2="2352" x1="2208" />
            <wire x2="2256" y1="2352" y2="2352" x1="2232" />
            <wire x2="2336" y1="2352" y2="2352" x1="2256" />
            <wire x2="2448" y1="2320" y2="2320" x1="2336" />
            <wire x2="2336" y1="2320" y2="2352" x1="2336" />
        </branch>
        <bustap x2="2208" y1="2544" y2="2544" x1="2112" />
        <branch name="I1(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2256" y="2544" type="branch" />
            <wire x2="2256" y1="2544" y2="2544" x1="2208" />
            <wire x2="2304" y1="2544" y2="2544" x1="2256" />
            <wire x2="2336" y1="2544" y2="2544" x1="2304" />
            <wire x2="2448" y1="2512" y2="2512" x1="2336" />
            <wire x2="2336" y1="2512" y2="2544" x1="2336" />
        </branch>
        <bustap x2="2208" y1="2720" y2="2720" x1="2112" />
        <branch name="I2(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2248" y="2720" type="branch" />
            <wire x2="2248" y1="2720" y2="2720" x1="2208" />
            <wire x2="2288" y1="2720" y2="2720" x1="2248" />
            <wire x2="2336" y1="2720" y2="2720" x1="2288" />
            <wire x2="2448" y1="2688" y2="2688" x1="2336" />
            <wire x2="2336" y1="2688" y2="2720" x1="2336" />
        </branch>
        <bustap x2="2208" y1="2960" y2="2960" x1="2112" />
        <branch name="I3(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2264" y="2960" type="branch" />
            <wire x2="2264" y1="2960" y2="2960" x1="2208" />
            <wire x2="2320" y1="2960" y2="2960" x1="2264" />
            <wire x2="2336" y1="2960" y2="2960" x1="2320" />
            <wire x2="2448" y1="2880" y2="2880" x1="2336" />
            <wire x2="2336" y1="2880" y2="2960" x1="2336" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="4144" y1="400" y2="688" x1="4144" />
            <wire x2="4144" y1="688" y2="1712" x1="4144" />
            <wire x2="4144" y1="1712" y2="1728" x1="4144" />
            <wire x2="4144" y1="1728" y2="2064" x1="4144" />
            <wire x2="4944" y1="2064" y2="2064" x1="4144" />
            <wire x2="4144" y1="2064" y2="2640" x1="4144" />
            <wire x2="4144" y1="2640" y2="3472" x1="4144" />
            <wire x2="4144" y1="3472" y2="3824" x1="4144" />
        </branch>
        <iomarker fontsize="28" x="4944" y="2064" name="o(3:0)" orien="R0" />
        <bustap x2="4048" y1="688" y2="688" x1="4144" />
        <branch name="o(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3888" y="688" type="branch" />
            <wire x2="3728" y1="688" y2="688" x1="3392" />
            <wire x2="3888" y1="688" y2="688" x1="3728" />
            <wire x2="4048" y1="688" y2="688" x1="3888" />
        </branch>
        <bustap x2="4048" y1="1712" y2="1712" x1="4144" />
        <branch name="o(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3864" y="1712" type="branch" />
            <wire x2="3680" y1="1664" y2="1664" x1="3392" />
            <wire x2="3680" y1="1664" y2="1712" x1="3680" />
            <wire x2="3864" y1="1712" y2="1712" x1="3680" />
            <wire x2="4048" y1="1712" y2="1712" x1="3864" />
        </branch>
        <bustap x2="4048" y1="2640" y2="2640" x1="4144" />
        <branch name="o(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3840" y="2640" type="branch" />
            <wire x2="3632" y1="2560" y2="2560" x1="3360" />
            <wire x2="3632" y1="2560" y2="2640" x1="3632" />
            <wire x2="3840" y1="2640" y2="2640" x1="3632" />
            <wire x2="4048" y1="2640" y2="2640" x1="3840" />
        </branch>
        <bustap x2="4048" y1="3472" y2="3472" x1="4144" />
        <branch name="o(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="3832" y="3472" type="branch" />
            <wire x2="3616" y1="3424" y2="3424" x1="3360" />
            <wire x2="3616" y1="3424" y2="3472" x1="3616" />
            <wire x2="3832" y1="3472" y2="3472" x1="3616" />
            <wire x2="4048" y1="3472" y2="3472" x1="3832" />
        </branch>
    </sheet>
</drawing>