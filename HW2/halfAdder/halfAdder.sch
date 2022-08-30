<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B" />
        <signal name="XLXN_2" />
        <signal name="A" />
        <signal name="SUM" />
        <signal name="CARRY" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="SUM" />
        <port polarity="Output" name="CARRY" />
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
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="CARRY" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_2">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="SUM" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1792" y="928" name="XLXI_1" orien="R0" />
        <instance x="1808" y="656" name="XLXI_2" orien="R0" />
        <branch name="B">
            <wire x2="1456" y1="688" y2="688" x1="1216" />
            <wire x2="1456" y1="688" y2="800" x1="1456" />
            <wire x2="1456" y1="800" y2="816" x1="1456" />
            <wire x2="1792" y1="800" y2="800" x1="1456" />
            <wire x2="1808" y1="592" y2="592" x1="1456" />
            <wire x2="1456" y1="592" y2="688" x1="1456" />
        </branch>
        <branch name="A">
            <wire x2="1248" y1="496" y2="528" x1="1248" />
            <wire x2="1328" y1="528" y2="528" x1="1248" />
            <wire x2="1808" y1="528" y2="528" x1="1328" />
            <wire x2="1328" y1="528" y2="864" x1="1328" />
            <wire x2="1344" y1="864" y2="864" x1="1328" />
            <wire x2="1792" y1="864" y2="864" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1248" y="496" name="A" orien="R180" />
        <iomarker fontsize="28" x="1216" y="688" name="B" orien="R180" />
        <branch name="SUM">
            <wire x2="2096" y1="560" y2="560" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2096" y="560" name="SUM" orien="R0" />
        <branch name="CARRY">
            <wire x2="2080" y1="832" y2="832" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2080" y="832" name="CARRY" orien="R0" />
    </sheet>
</drawing>