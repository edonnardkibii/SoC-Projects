
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 1576.008 ; gain = 0.000 ; free physical = 1396 ; free virtual = 89802default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
O
:Ending Cache Timing Information Task | Checksum: dc01d0ce
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:16 ; elapsed = 00:00:30 . Memory (MB): peak = 1916.539 ; gain = 340.531 ; free physical = 1009 ; free virtual = 86112default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
w
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
272default:default2
272default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
<
'Phase 1 Retarget | Checksum: 1eba59f33
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.14 ; elapsed = 00:00:00.14 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
02default:defaultZ31-389h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
H
3Phase 2 Constant propagation | Checksum: 1eba59f33
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.15 ; elapsed = 00:00:00.16 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
9
$Phase 3 Sweep | Checksum: 1322a10d5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.37 ; elapsed = 00:00:00.37 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
1002default:defaultZ31-389h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
E
0Phase 4 BUFG optimization | Checksum: 1322a10d5
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.41 ; elapsed = 00:00:00.41 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
N
9Phase 5 Shift Register Optimization | Checksum: e4f5b6be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.47 ; elapsed = 00:00:00.47 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
J
5Phase 6 Post Processing Netlist | Checksum: e4f5b6be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.48 ; elapsed = 00:00:00.48 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
I
4Ending Logic Optimization Task | Checksum: e4f5b6be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.49 ; elapsed = 00:00:00.49 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1011 ; free virtual = 86132default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
I
4Ending Power Optimization Task | Checksum: e4f5b6be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00.01 ; elapsed = 00:00:00.03 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1010 ; free virtual = 86132default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
D
/Ending Final Cleanup Task | Checksum: e4f5b6be
*commonh px? 
?

%s
*constraints2?
?Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 1916.539 ; gain = 0.000 ; free physical = 1010 ; free virtual = 86132default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
162default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2 
opt_design: 2default:default2
00:00:182default:default2
00:00:322default:default2
1916.5392default:default2
340.5312default:default2
10102default:default2
86132default:defaultZ17-722h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.272default:default2
00:00:00.102default:default2
1948.5552default:default2
0.0002default:default2
9992default:default2
86032default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/pabele/HTWG/Skripte/SoC/Labor_Vorlesung/02d_Block_Design_erzeugen/Vivado_Projekte/AD_DA_Exp/AD_DA_Exp.runs/impl_1/my_AD_DA_Exp_wrapper_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_drc -file my_AD_DA_Exp_wrapper_drc_opted.rpt -pb my_AD_DA_Exp_wrapper_drc_opted.pb -rpx my_AD_DA_Exp_wrapper_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_drc -file my_AD_DA_Exp_wrapper_drc_opted.rpt -pb my_AD_DA_Exp_wrapper_drc_opted.pb -rpx my_AD_DA_Exp_wrapper_drc_opted.rpx2default:defaultZ4-113h px? 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
?/home/pabele/HTWG/Skripte/SoC/Labor_Vorlesung/02d_Block_Design_erzeugen/Vivado_Projekte/AD_DA_Exp/AD_DA_Exp.runs/impl_1/my_AD_DA_Exp_wrapper_drc_opted.rpt?/home/pabele/HTWG/Skripte/SoC/Labor_Vorlesung/02d_Block_Design_erzeugen/Vivado_Projekte/AD_DA_Exp/AD_DA_Exp.runs/impl_1/my_AD_DA_Exp_wrapper_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 


End Record