(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.3' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    321467,       6320]
NotebookOptionsPosition[    313464,       6082]
NotebookOutlinePosition[    314105,       6106]
CellTagsIndexPosition[    314062,       6103]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Project 1: Prolate Spinning Body", "Title", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Mauricio Coen", "Author", "PluginEmbeddedContent"],

Cell["AERO 628 Spring 2016", "Institution", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Angular Velocity Solution", "Section", "PluginEmbeddedContent"],

Cell["The body has the following inertia matrix:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{"I", "=", 
   RowBox[{"(", "\[NoBreak]", GridBox[{
      {"It", "0", "0"},
      {"0", "It", "0"},
      {"0", "0", "Ia"}
     },
     GridBoxAlignment->{
      "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}},
        "RowsIndexed" -> {}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.7]}, 
         Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
         Offset[0.2], {
          Offset[0.4]}, 
         Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["And has a torque applied u, where:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["u", "It"], "=", "0.2"}], TraditionalForm]], "EquationNumbered",\
 "PluginEmbeddedContent"],

Cell["\<\
Using Euler\[CloseCurlyQuote]s Eqs. of Motion: Since it is an \
axissymmetric-prolate body, the angular acceleration in the body-3 direction \
is zero. \
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["l", "3"], "=", 
   RowBox[{
    RowBox[{"Ia", " ", 
     OverscriptBox[
      SubscriptBox["\[Omega]", "3"], "."]}], "=", "0"}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "So we can call ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Omega]", "3"], TraditionalForm]]],
 "=n which is a constant. Now simplifying the other expressions of Euler Eqs. \
of Motion:"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["l", "2"], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"n", " ", 
      SubscriptBox["\[Omega]", "1"], " ", 
      RowBox[{"(", 
       RowBox[{"It", "-", "Ia"}], ")"}]}], "+", 
     RowBox[{"It", " ", 
      OverscriptBox[
       SubscriptBox["\[Omega]", "2"], "."]}]}], "=", "0"}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox[
    SubscriptBox["\[Omega]", "2"], "."], "=", 
   RowBox[{
    FractionBox[
     RowBox[{"(", 
      RowBox[{"Ia", "-", "It"}], ")"}], "It"], "n", " ", 
    SubscriptBox["\[Omega]", "1"]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{"u", "=", 
   RowBox[{
    RowBox[{"n", " ", 
     SubscriptBox["\[Omega]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{"Ia", "-", "It"}], ")"}]}], "+", 
    RowBox[{"It", " ", 
     OverscriptBox[
      SubscriptBox["\[Omega]", "1"], "."]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox[
    SubscriptBox["\[Omega]", "1"], "."], "=", 
   RowBox[{
    FractionBox["u", "It"], "+", 
    RowBox[{
     FractionBox[
      RowBox[{"(", 
       RowBox[{"It", "-", "Ia"}], ")"}], "It"], " ", "n", " ", 
     SubscriptBox["\[Omega]", "2"]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["Now, we define the following expressions:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["u", "It"], "\[Congruent]", "l"}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{"\[Lambda]", "\[Congruent]", 
   RowBox[{
    FractionBox[
     RowBox[{"It", "-", "Ia"}], "It"], " ", "n"}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["Which will simplify the angular velocity equations:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox[
    SubscriptBox["\[Omega]", "1"], "."], "=", 
   RowBox[{
    RowBox[{"\[Lambda]", " ", 
     SubscriptBox["\[Omega]", "2"]}], "+", "l"}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox[
    SubscriptBox["\[Omega]", "2"], "."], "=", 
   RowBox[{
    RowBox[{"-", "\[Lambda]"}], " ", 
    SubscriptBox["\[Omega]", "1"]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell["\<\
Using Euler\[CloseCurlyQuote]s Eqs. of Motion: Since it is an \
axissymmetric-prolate body, the angular acceleration in the body-3 direction \
is zero. \
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["l", "3"], "=", 
   RowBox[{
    RowBox[{"Ia", " ", 
     OverscriptBox[
      SubscriptBox["\[Omega]", "3"], "."]}], "=", "0"}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["Differentiating the above and substituting:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox[
    SubscriptBox["\[Omega]", "2"], ".."], "=", 
   RowBox[{
    RowBox[{"-", "\[Lambda]"}], 
    OverscriptBox[
     SubscriptBox["\[Omega]", "1"], "."]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    OverscriptBox[
     SubscriptBox["\[Omega]", "2"], ".."], "+", 
    RowBox[{
     SuperscriptBox["\[Lambda]", "2"], 
     SubscriptBox["\[Omega]", "2"]}]}], "=", "\[Lambda]l"}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["\<\
The differential equation can be solved by merging the homogeneous solution: \
\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["w", 
    RowBox[{"2", " ", "H"}]], "=", 
   RowBox[{
    RowBox[{"a", " ", "sin", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}], "+", 
    RowBox[{"b", " ", "cos", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "With the particular solution ",
 Cell[BoxData[
  RowBox[{
   SubscriptBox["\[Omega]", 
    RowBox[{"2", "P"}]], "=", "c"}]], "Input",
  CellChangeTimes->{{3.6623119805032377`*^9, 3.6623120460268116`*^9}, {
    3.662312089195494*^9, 3.662312089756687*^9}, 3.662312124689839*^9, 
    3.6623882187371273`*^9}],
 ":"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{"c", "=", " ", 
   RowBox[{"-", 
    FractionBox["l", "\[Lambda]"]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell["So the general solution is:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["\[Omega]", "2"], "=", 
   RowBox[{
    RowBox[{"a", " ", "sin", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}], "+", 
    RowBox[{"b", " ", "cos", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}], "-", 
    FractionBox["l", "\[Lambda]"]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell[TextData[{
 "Now we can differentiate when ",
 StyleBox["t=0",
  FontSlant->"Italic"],
 " and plug into the ",
 Cell[BoxData[
  FormBox[
   OverscriptBox[
    SubscriptBox["\[Omega]", "2"], "."], TraditionalForm]]],
 " equation:"
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox[
    SubscriptBox["\[Omega]", "2"], "."], "=", 
   RowBox[{
    RowBox[{
     RowBox[{"a", " ", "cos", " ", 
      RowBox[{"(", 
       RowBox[{"\[Lambda]", " ", 
        RowBox[{"t", "(", "0", ")"}]}], ")"}]}], "-", 
     RowBox[{"b", " ", "sin", " ", 
      RowBox[{"(", 
       RowBox[{"\[Lambda]", " ", 
        RowBox[{"t", "(", "0", ")"}]}], ")"}]}]}], "=", 
    RowBox[{
     RowBox[{"-", "\[Lambda]"}], " ", 
     RowBox[{
      SubscriptBox["\[Omega]", "1"], "(", "0", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{"a", "=", 
   RowBox[{
    RowBox[{"-", "\[Lambda]"}], " ", 
    RowBox[{
     SubscriptBox["\[Omega]", "1"], "(", "0", ")"}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SubscriptBox["\[Omega]", "2"], "(", "0", ")"}], "=", 
   RowBox[{
    RowBox[{"b", " ", "cos", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", 
       RowBox[{"t", "(", "0", ")"}]}], ")"}]}], "-", 
    FractionBox["l", "\[Lambda]"], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"-", "\[Lambda]"}], ")"}], " ", 
     RowBox[{
      SubscriptBox["\[Omega]", "1"], "(", "0", ")"}], " ", "sin", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", 
       RowBox[{"t", "(", "0", ")"}]}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{"b", "=", 
   RowBox[{
    FractionBox["l", "\[Lambda]"], "+", 
    RowBox[{
     SubscriptBox["\[Omega]", "2"], "(", "0", ")"}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["Finally the complete solutions are:", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["\[Omega]", "1"], "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      SubscriptBox["\[Omega]", "1"], "(", "0", ")"}], " ", "cos", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["l", "\[Lambda]"], "+", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], "(", "0", ")"}]}], ")"}], " ", "sin", 
     " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubscriptBox["\[Omega]", "2"], "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      SubscriptBox["\[Omega]", "1"], "(", "0", ")"}], " ", "sin", " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       FractionBox["l", "\[Lambda]"], "+", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], "(", "0", ")"}]}], ")"}], " ", "cos", 
     " ", 
     RowBox[{"(", 
      RowBox[{"\[Lambda]", " ", "t"}], ")"}]}], "-", 
    FractionBox["l", "\[Lambda]"]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Orientation Angles Solution", "Section", "PluginEmbeddedContent"],

Cell["\<\
Using a 1-2-3 (\[Alpha] , \[Beta], \[Gamma]) rotation sequence, we get the \
following attitude kinematics matrix:\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  StyleBox[
   RowBox[{"                                                                ", 
    RowBox[{
     RowBox[{"(", "\[NoBreak]", GridBox[{
        {
         OverscriptBox["\[Alpha]", "."]},
        {GridBox[{
           {
            OverscriptBox["\[Beta]", "."]},
           {
            OverscriptBox["\[Gamma]", "."]}
          }]}
       }], "\[NoBreak]", ")"}], "=", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"Cos", "[", "\[Beta]", "]"}]], " ", 
      RowBox[{"(", "\[NoBreak]\[NoBreak]", 
       RowBox[{GridBox[{
          {
           RowBox[{"Cos", "[", "\[Gamma]", "]"}]},
          {GridBox[{
             {
              RowBox[{
               RowBox[{"Cos", "[", "\[Beta]", "]"}], " ", 
               RowBox[{"Sin", "[", "\[Gamma]", "]"}]}]},
             {
              RowBox[{
               RowBox[{"-", 
                RowBox[{"Sin", "[", "\[Beta]", "]"}]}], "  ", 
               RowBox[{"Cos", "[", "\[Gamma]", "]"}]}]}
            }]}
         }], GridBox[{
          {
           RowBox[{"-", 
            RowBox[{"Sin", "[", "\[Gamma]", "]"}]}], "0"},
          {GridBox[{
             {
              RowBox[{
               RowBox[{"Cos", "[", "\[Gamma]", "]"}], " ", 
               RowBox[{"Cos", "[", "\[Beta]", "]"}]}]},
             {
              RowBox[{
               RowBox[{"Sin", "[", "\[Gamma]", "]"}], " ", 
               RowBox[{"Sin", "[", "\[Beta]", "]"}]}]}
            }], GridBox[{
             {"0"},
             {
              RowBox[{"Cos", "[", "\[Beta]", "]"}]}
            }]}
         }]}], ")"}], 
      RowBox[{"(", "\[NoBreak]", GridBox[{
         {GridBox[{
            {
             SubscriptBox["\[Omega]", "1"]},
            {
             SubscriptBox["\[Omega]", "2"]}
           }]},
         {
          SubscriptBox["\[Omega]", "3"]}
        }], "\[NoBreak]", ")"}]}]}]}], "Text"], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent",
 TextAlignment->0.5],

Cell[TextData[{
 "Notice that ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Gamma]", "."], TraditionalForm]]],
 " can be simplified in the following way: "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     RowBox[{"tan", "(", "\[Beta]", ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["\[Omega]", "1"], " ", 
        RowBox[{"cos", "(", "\[Gamma]", ")"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], " ", 
        RowBox[{"sin", "(", "\[Gamma]", ")"}]}]}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "Substituting for ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Alpha]", "."], TraditionalForm]]],
 " in the equation above:",
 ". "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     OverscriptBox["\[Alpha]", "."], " ", 
     RowBox[{"sin", "(", "\[Beta]", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["\<\
Since we have a prolate body, we can approximate the orientation angles \
solution with small angle approximations, where Cos[\[Beta]] \[TildeTilde] 1 \
and Sin[\[Beta]] \[TildeTilde] \[Beta]: \
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Alpha]", "."], "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["\[Omega]", "1"], " ", 
     RowBox[{"cos", "(", "\[Gamma]", ")"}]}], "-", 
    RowBox[{
     SubscriptBox["\[Omega]", "2"], " ", 
     RowBox[{"sin", "(", "\[Gamma]", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Beta]", "."], "=", 
   RowBox[{
    RowBox[{
     SubscriptBox["\[Omega]", "1"], " ", 
     RowBox[{"sin", "(", "\[Gamma]", ")"}]}], "+", 
    RowBox[{
     SubscriptBox["\[Omega]", "2"], " ", 
     RowBox[{"cos", "(", "\[Gamma]", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell["\<\
Now we integrate with respect to time to find closed form solutions of the \
orientation angles:\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"\[Integral]", 
    RowBox[{
     OverscriptBox["\[Gamma]", "."], 
     RowBox[{"\[DifferentialD]", "t"}]}]}], " ", "=", " ", 
   RowBox[{"\[Gamma]", " ", "=", " ", 
    RowBox[{"n", " ", "t"}]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"\[Integral]", 
    RowBox[{
     RowBox[{"[", 
      RowBox[{
       RowBox[{
        SubscriptBox["\[Omega]", "1"], " ", 
        RowBox[{"cos", "(", "\[Gamma]", ")"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], " ", 
        RowBox[{"sin", "(", "\[Gamma]", ")"}]}]}], "]"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}], "=", " ", 
   RowBox[{"\[Alpha]", " ", "=", " ", 
    FractionBox[
     RowBox[{"It", " ", "l", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Ia", " ", 
         RowBox[{"Cos", "[", 
          RowBox[{"n", " ", "t"}], "]"}]}], "-", 
        RowBox[{"It", " ", 
         RowBox[{"Cos", "[", 
          FractionBox[
           RowBox[{"Ia", " ", "n", " ", "t"}], "It"], "]"}]}]}], ")"}]}], 
     RowBox[{"Ia", " ", 
      RowBox[{"(", 
       RowBox[{"Ia", "-", "It"}], ")"}], " ", 
      SuperscriptBox["n", "2"]}]]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"\[Integral]", 
    RowBox[{
     RowBox[{"[", 
      RowBox[{
       RowBox[{
        SubscriptBox["\[Omega]", "1"], " ", 
        RowBox[{"sin", "(", "\[Gamma]", ")"}]}], "+", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], " ", 
        RowBox[{"cos", "(", "\[Gamma]", ")"}]}]}], "]"}], 
     RowBox[{"\[DifferentialD]", "t"}]}]}], " ", "=", " ", 
   RowBox[{"\[Beta]", " ", "=", " ", 
    FractionBox[
     RowBox[{"It", " ", "l", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Ia", " ", 
         RowBox[{"Sin", "[", 
          RowBox[{"n", " ", "t"}], "]"}]}], "-", 
        RowBox[{"It", " ", 
         RowBox[{"Sin", "[", 
          FractionBox[
           RowBox[{"Ia", " ", "n", " ", "t"}], "It"], "]"}]}]}], ")"}]}], 
     RowBox[{"Ia", " ", 
      RowBox[{"(", 
       RowBox[{"Ia", "-", "It"}], ")"}], " ", 
      SuperscriptBox["n", "2"]}]]}]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell["", "Text", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Numerical Integration", "Section", "PluginEmbeddedContent"],

Cell["\<\
The full nonlinear system is numerically integrated with Matlab ODE45() to \
provide a high accuracy solution of the prolate body\[CloseCurlyQuote]s \
rotation. \
\>", "Text", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Results", "Section", "PluginEmbeddedContent"],

Cell["\<\
The \[Alpha] and \[Beta] angles as a function or time are shown in Figure 1. \
The parameters used are: \[Gamma]=5 rad/s, It=1, Ia=0.05, initial conditions: \
all zero except \[Gamma].\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {}, 
      TagBox[{
        RGBColor[0.368417, 0.506779, 0.709798], 
        AbsoluteThickness[1.6], 
        Opacity[1.], 
        LineBox[CompressedData["
1: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
DCt9P4t91fTD11Vj8/OAA91Gr/+dWE3/AxlJB7E=
         "]]}, 
       Annotation[#, {{Legended}, Charting`Private`Tag$628883, {1}}]& ], 
      TagBox[{
        RGBColor[0.880722, 0.611041, 0.142051], 
        AbsoluteThickness[1.6], 
        Opacity[1.], 
        LineBox[CompressedData["
1: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
/wcN1P8rWJyZEglJyUC9+kUDL1Ylym5UugHSlOJ1Cd81UDet+ASvaATIbI8/
wljQwDZhIe7tpy6DbKDdEwVlTZzgmczLzVOBLyb3fmuoa6Ly/vSdQ+E76VSu
FmN9bU3UHfE7Uv3hKF32nnGH5SZN/LbDPef3pCdd7inpz8XdmigSX8QusjOI
3u1/zDzcShMP7S2vZ9wIpqca3b0Tc0gTL7zKkd3kFEqXf8Whlu2giXX2n8rc
bobT5b8P7e04r4maXF9Lw+Ju0rvzlBJ7Lmji5qpyw+xVt+ip549+G7msibWx
bbndntF0+ZVXASv/aaKAx4llLeU79G4Wez3fLU3kzyp60L45lp4abcQnGauJ
s1R12vkvsXR52cI0Haom/p3ew3Fa5C69u29wZPNDTZwK9Lv1X/ZdemqO4kaz
LE3cYKrLFq9/jy6/KfbFsaeauGPm/WkDs3h695+XIqdKNbGUpl+b2xhPT21c
Ze9TqYlfOlpZzdvu0xX2+01eb9TE4cbOvH+kBPp72/QEoxeayPil90IyIoEe
dbx12+RrTfSyr/l7rT+BPudGuXnsgyZq1O1RdIlLpBectVkv9EUT9TcGhQ1+
S6Sf9L32obFXEz/L64x0rk2ivwnuUtYZ0cSu42LtuyqT6NfDeV/2/dTEE5SB
k4NzSXTjm5u87k9poozPF6HNusn0mRgXccs5TYw92/f8kHsyPS/+TvW/JU0M
C6Zds0lOpjtRa51KVzTx3mr/NzYvkulS6T+4PTi1cLLzqLrvVDK9LVuyUH61
FtotSSi2SFHpEflmh94KauHG7uAjEVup9K3FPov/iWqhQ8/eU7RjVPpU+YOH
W6W0MHhTd9XDACo9t7bZfEJOCy0y3t61jqHSHRvnxx6RtNC57ePA3CMqXfyl
2t2jZC0c53XF+nIqvbn1gKGglhaGaeYxPzVR6aHvQnob1mnhS8xdPv2eSt/8
OT/iwkYtDBm79Cb3K5U+3tuppW2ohauejDk1jFDpWd+53n7dpoVl0y7zgxNU
ut2o3sV4Uy3U0dEYspil0oUnTyjs3qmFHV9JXgqLVHrTbDRj2VILL7CvfpT4
h0oP/lPlWWKthTvMtlr//Eul668aXuNuo4XbcoU/Eec1fZRbvFzumBaqjf+R
+0PY0wVM7d84EHbrfSeUCXxE1Iv9PxctFA98q7a0RKULSafkbnHXwtqYnRK1
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
/B8hvpov
         "]]}, 
       Annotation[#, {{Legended}, Charting`Private`Tag$628883, {
         2}}]& ]}, {{}, {{}, {}, 
       TagBox[{
         GrayLevel[0.5], 
         PointSize[0.006944444444444445], 
         AbsoluteThickness[1.6], 
         LineBox[CompressedData["
1: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
OsCzhfl55O1GlF/QW4YiHQi+v+L8xYXw0/AA69MyHXA0Xu2dPEfUu3dF6ks1
4ffUn/jDhxuxmGbbw5MNOuDnwHs4YWcjbvNiXe9vJfzvFo76qtmIDb+HHPd0
6wDXzKuPskKNuPdaxrvafh14f6XjlsFGA4adf3TuyHsdCP/9XdrhYwO2Hb6x
8GNUB9ylPMuMKxuQ2fyEd+C0DmzJifB7F9WA5gY7WcW+6QCzKN/LrVcacOOv
Wb/HvA44uCZ6n9/ZgIUNe571/SL8PnItb0ywAR1D91/QXNMB8asLYe++1KOE
lY1m2D8d2Dr3x/HOm3p8EavROcqgCwoid1323a1H5UnmS7qsBKYfdd2zvx5z
1aa3hHDpgtOOoYYSoXrUvYEvP/Drwh6Z40KDY3VYadP245ioLnCEfWPa9bIO
d5L6yYNSuiAh+G19zamOuL999D6koAvbjGSbrTXr8ODs56ZeVV3I9c/dm7RY
ix7BiUr2JF04cdPKJ/JNLcbK2YZ+J+vC1cl2FfKdWqxEjtnbRrpgVrg1ehxq
cdSuyXKLsS7sKome+LalFnnUaz/bm+mCtaz5v8MvEU03KvzK9upCbHuD1d0d
iDc7S0R5DuhCnIuu+MeRGnz1LL/YyVYX/rkn/nvnXYPutjwHau10QYaVSeiP
fA0acrv/EDyjC+Fdomw3equRvr0v9IqDLhz8F3Ep5m41dtzVVWy8rAuOQY6M
cUbV6HnserOFmy4I7xTXCfpdhapaJQ5dHroQzyvHQVtRhcMMK0w2XrpwTnw1
iOduFYYO62e88yf8uShIybapQqYu+Wm7YF04JGJomKtchYHIKzPxQBfYBQb2
zDJUIV0hzSmHSF2gllI7pb5Uom/aXPxsjC6cWl0YWOmuxPArVrnGzwk99JsL
MVWVmKyfXxfzgsgXc/NgcW4l5v/jHviRoQveNIrv3qVVYm2r29edObqgI3k2
2jexEt9cy1t/VqgL+oxOqXIJlfha8gfnSqkudAnO+evFE/naVGWtqnWhzaLp
hgixHn3dkZxZrwul2wJkyc8rcThv8K1eqy6w7v9jSZtciRKzZpfqunRB+uLb
n2UvKvG04huG/f26cKX6VWkGUT/tjELS8BDhR/HRHeIvK3G8OcD36KguFNYt
8bulVqK4+rj9uyldmGaXrtiSVInHIrbDoRldeGq1fa95TCVGrcRL980R+Ow1
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
LzHA1Hwsc+k+xv//dVgF2gjT4wKdGP8PSSVFkw==
          "]]}, 
        Annotation[#, {{Legended}, 
          Charting`Private`Tag$628926, {}}]& ]}, {}}, {{}, {{}, {}, 
       TagBox[{
         RGBColor[1, 0, 0], 
         PointSize[0.006944444444444445], 
         AbsoluteThickness[1.6], 
         LineBox[CompressedData["
1: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
DU8OlKwUasLvBeST2n0Fdbt8fdZaqQldV2Qjr2vEoqa2f9+vtGgCz8hlfr26
aDTZ/sZLq1MTPqZmr178eA7x08van73QhE+h9+P66WFoc9cVrbARTUi9vlWG
+OowCujdmyw+pQn+gr/UiZ4eqOWChdnad03QTPthtjnQEEsS5D69/60JEiZh
QzZ7/PGpiT/X2zi1wKRvUIa/7TjuTx0l5gprgcspma33isJxl5lM+KicFmjJ
c6bs2xyNKeMe9TJaWjCaUERQ/xSLW+NSVz2JWiCffSbYJz8O1+u+2JKGtKBF
bpt6itc1rHc4/JXrdi24epvr3fZXN3F+nswJIXctCP1LvS9x/zaWHiNzP/fT
AunTQQf9be7g29JB+TeOaIG9ysnuyXcpWGxxeq/xGS0o3agjXNl3F2fSj4m8
u6gFzb6P01efp2GFrO89Mde0gD/un2eTXgbODz0Tq3FXC87wGW2OCL+H2x7d
RRIPtSBRdC2drTITD7+q/c3xWAve/Nv0Y8/LLLzE8aZxpVYLlB58D+sZyca8
W1bCv5AZ5yOe7WF5dh8v19u7CPRpwVl59RCe4hz8zuSejumQFsznxGctHX6A
KbUz7AETWrBaaL1dieshLiFajCfOaQGzjeq3Q7se4rmG9Um0yog3K9SpKuEh
NrJsnP7Jog2++zctNdQ/xOHtZ+cf82lDTPYuG5MPD3GTrclygKQ2KBU+8Py3
9hDvolUvbFLRhpdx55/O8+fiSWvDb7V62pBT0OOsJZeLI9rLv/qZakPTV49Q
slou5gfdz9w22iDgtkB7pZWLP3tnxHHu1IYqzRHu29q5uOUMmya7lzYYVLwQ
Emfo79wO7WY5oA1EmSF+snouDn48coTphDZM6COXadVc7FZWFyoRqQ0iQQ3r
Cwx569Pb4fpXtSHKoqx7s2Yu1qo8EmV7WxtkN7RPiRBysWj1tlifLG3YIUvy
7rTMxWFpcI63UBsOaXZX5Lnk4oEIi+MtFdpAd9ez5j2Wiw18TQ+ENGuDclOQ
0eztXHwTiN6yHdowRyPlCrfl4of7zsT1DDDsr9Q7G/7MxVVRdVXn3mvD+mED
mRmTR5iW+WtU/Ys2/Fehdr/p8iM81GC66fWiNog39osxjzzC1IfpmR83tCGh
Szy1wCYPVySsaM1z6ADmz32xWJ+Hs0PdG9eFdCDujGPEiGk+TvCsceCU04ED
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
d2B7Z/HlOvT/V4c1wUYsPn7Bqg79DzW23p4=
          "]]}, 
        Annotation[#, {{Legended}, 
          Charting`Private`Tag$628960, {}}]& ]}, {}}}, AspectRatio -> 
    NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
    AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction -> 
    Identity, Frame -> {{False, False}, {False, False}}, 
    FrameLabel -> {{None, None}, {None, None}}, 
    FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
    GridLines -> {None, None}, GridLinesStyle -> Directive[
      GrayLevel[0.5, 0.4]], 
    Method -> {
     "DefaultBoundaryStyle" -> Automatic, "DefaultMeshStyle" -> 
      AbsolutePointSize[6], "ScalingFunctions" -> None}, 
    PlotRange -> {{0, 30}, {-0.3368417891461034, 0.17634542749518753`}}, 
    PlotRangeClipping -> True, PlotRangePadding -> {{
       Scaled[0.02], 
       Scaled[0.02]}, {
       Scaled[0.05], 
       Scaled[0.05]}}, Ticks -> {Automatic, Automatic}],FormBox[
    TagBox[
     GridBox[{{
        FormBox[
         TemplateBox[{"\"\[Alpha] linear\"", "\"\[Beta] linear\""}, 
          "LineLegend", DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.5], 
                    Opacity[1.], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"LineLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
                   ",", 
                   RowBox[{"Directive", "[", 
                    RowBox[{
                    RowBox[{"Opacity", "[", "1.`", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], 
                    "]"}]}], "}"}], ",", 
               RowBox[{"{", 
                 RowBox[{#, ",", #2}], "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}, {
        FormBox[
         TemplateBox[{"\"\[Alpha] nonlinear\""}, "LineLegend", 
          DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.125], 
                    AbsoluteThickness[1.6], 
                    GrayLevel[0.5]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.125], 
                    AbsoluteThickness[1.6], 
                    GrayLevel[0.5]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"LineLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{"Directive", "[", 
                   RowBox[{
                    RowBox[{"PointSize", "[", "0.006944444444444445`", "]"}], 
                    ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    GrayLevel[0.5], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> GrayLevel[0.33333333333333337`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "GrayLevel[0.5]"], Appearance -> None,
                     BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    GrayLevel[0.5]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["GrayLevelColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    GrayLevel[0.5], Editable -> False, Selectable -> False]}],
                    "]"}], "}"}], ",", 
               RowBox[{"{", #, "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
               RowBox[{"Joined", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", "True", "}"}], ",", 
                    RowBox[{"{", "True", "}"}]}], "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}, {
        FormBox[
         TemplateBox[{"\"\[Beta] nonlinear\""}, "LineLegend", 
          DisplayFunction -> (StyleBox[
            StyleBox[
             PaneBox[
              TagBox[
               GridBox[{{
                  TagBox[
                   GridBox[{{
                    GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.125], 
                    AbsoluteThickness[1.6], 
                    RGBColor[1, 0, 0]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.125], 
                    AbsoluteThickness[1.6], 
                    RGBColor[1, 0, 0]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxDividers -> {
                    "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                    GridBoxItemSize -> {
                    "Columns" -> {{All}}, "Rows" -> {{All}}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
                GridBoxAlignment -> {
                 "Columns" -> {{Left}}, "Rows" -> {{Top}}}, AutoDelete -> 
                False, GridBoxItemSize -> {
                 "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
               "Grid"], Alignment -> Left, AppearanceElements -> None, 
              ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
              "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
            FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
            False]& ), InterpretationFunction :> (RowBox[{"LineLegend", "[", 
             RowBox[{
               RowBox[{"{", 
                 RowBox[{"Directive", "[", 
                   RowBox[{
                    RowBox[{"PointSize", "[", "0.006944444444444445`", "]"}], 
                    ",", 
                    RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}], ",", 
                    InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[1, 0, 0], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> RGBColor[0.6666666666666666, 0., 0.], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "RGBColor[1, 0, 0]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[1, 0, 0]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[1, 0, 0], Editable -> False, Selectable -> 
                    False]}], "]"}], "}"}], ",", 
               RowBox[{"{", #, "}"}], ",", 
               RowBox[{"LegendMarkers", "\[Rule]", "None"}], ",", 
               RowBox[{"Joined", "\[Rule]", 
                 RowBox[{"{", 
                   RowBox[{
                    RowBox[{"{", "True", "}"}], ",", 
                    RowBox[{"{", "True", "}"}]}], "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", 
                 RowBox[{"{", "}"}]}], ",", 
               RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
          Editable -> True], TraditionalForm]}}, 
      GridBoxAlignment -> {"Columns" -> {{Left}}}, AutoDelete -> False, 
      GridBoxItemSize -> {
       "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
      GridBoxSpacings -> {"Columns" -> {{0}}}], "Grid"], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output", \
"PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Figure ", "FigureCaptionLabel"],
 StyleBox[
 CounterBox["FigureCaption"], "FigureCaptionLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "FigureCaptionLabel"],
 "Orientation angles over  frequency"
}], "FigureCaption", "PluginEmbeddedContent"],

Cell["\<\
As it can be seen. The linear solution tracks the nonlinear solution very \
well. `\
\>", "Text", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Fourier Analysis", "Section", "PluginEmbeddedContent"],

Cell[TextData[{
 "The linear nutational frequency (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["F", "n"], ")"}], TraditionalForm]]],
 " equals ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[Omega]", "3"], "(", "0", ")"}], TraditionalForm]]],
 ", ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["F", "n"], TraditionalForm]]],
 "=0.796 Hz."
}], "Text", "PluginEmbeddedContent"],

Cell[TextData[{
 "The linear precessional frequency (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["F", "p"], ")"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      FractionBox["Ia", "It"], 
      SubscriptBox["F", "n"]}], "="}]}], TraditionalForm]]],
 "0.0398 Hz"
}], "Text", "PluginEmbeddedContent"],

Cell["\<\
The nonlinear solution can be transformed with a Fast Fourier Transform and \
then the frequency spectrum plotted. Below, the frequency spectrum\
\>", "Text", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
EQbHGNywuMEdVaJ/CARBELUbMvjdI0mSrutufO1G306M6v5CMYNHW9HlQozB
yxlcUyoYXLO5wR1JGHzWnksT5q9d8Mlg1orOY/BoP7ijUis6QRBELYcMfq9E
IpHo5J4cd8JuiKncXa/yr8INbjssF50ZXC3+W91oK7pa2eA8F73M4HYIDT7v
m4zpy7bMHjYQ/OmgBG0zanDHlMjgBEEQtRwy+N0jom/Lig6UdrvFBXgNcYfq
KMXmwg1u2eCLGfy1Rx/YOvxlvTBLtisZ3AxVNviCg5lzVu1kBvddAcnPRo1z
g+tKgAxOEARRyyGDVx3iYoopR1Hu+DYrK2vkyJGDBw/evXs3xM1+EgwG3aMy
MjJwnxEjRhw8eNDv97vn8fl84jynTp3asmVLTk4OM7gWEv3gfjaO2/NGgwcW
v9XZKc0PqGK+UUMYnD15GEFUs2IygzuqT2SyLT56c+qSTWsmfgbf7RL94Mzg
LItNo35wgiCI2gyGk24jsCRJ7du3r9nvc58hy9GEbvGAlJaW1qpVq7lz565b
ty4pKWnq1KkQq+3mcvjw4bZt286fP3/RokVPPfUUvortQvF4v/Lz85999tkn
nnjiu+++izc4+1gu/FtdZnAwItF+cEVSZQVdzAyOMbhtqBaPwdHm3OBrvyv5
bOqSHXMnKcdS0OCmzg1u6TSajCAIopYjzBIKhUTL8EMPPVR982r9eyDCZ+Hf
AQMGDB8+XGxPSUnB56X4Aq1iutJevXpNmTJFbMcYvF27dnhr4m9Kz549t2/f
/sgjj2AkHm9wNxd9Wd+nwVsQbUWPj8EVLxo8Oh7ckYTB92YZ73w04fSGZSW7
lkLEp8pU0YUgCCIBcKM/MU8H0qhRo5r7OvchIlndTVmvU6dObm6uaE7Ht3Xr
1kVHQyxUR1Oj6Fu0aHHmzBnxZIW71atXD6NyiPW5r1ix4u2338aVpk2bRmNw
I2LZMYNrJWjwFf2fETG4zCY1kRzLVtxcdNsweRF1YXA/wNkQ9Og3/No3WzPX
TAfJr6uxqqq2QgYnCIKotVQIt9EgjRs3js+sJv5JhHaFwTHEbtKkSWpqKl5h
UcMNY/Bt27aJOVDcp6nWrVtnZmbivVA5SUlJO3fuRJWj03GfZ555pqCgQNM0
NPvp06dFTTbbgVKHG1z3/KXOA1+/0wUiXp8MphONwUsiVkQzXYMzNccMngnM
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
GL7LpeJ9rbpFXGLRPFRtP7TSYjmg6uDOkIjPMPgqq2VbKizR6RjuernXNo3o
jbbYisNfGzf6OfuklhqAuDW13+ChUEi8ignafviJbmNwTTfdP8gV/ru/c7NV
xGap035Nl5yyjf9/e98dFVWS9r3/fN8f3znvnNmZd3dnFZWcg5jGGXWcdcKG
2Ynq6JgTKogJMSMqwTGiYlZUzAGzGEEMiAkRzAyimMkZuptO9f3ufbrLSwdH
nAbm3ff+znPuqVt9u2913bpPqqeeqlSzMqW+Vv9q3xMhekujK1GraW/yQlXt
y9qqEo3q2LWHx64/OprxKOFK9vqk61F7TgWv2dV/8YYfFq75PGJpuylzncZO
c5www3fOoh6r47/deTBs46E5WxJ/3p20/Eja+qQbW1Pv7b6am3A9L/W5MiWv
KrNCmOl+ztgDLburYFmV7Eb284z7z9Jv5V66mpWSfPbEwf1Hd8Ynxq/aNn/q
7ujxeyNGJ4QPTpj+Y8Lkb/eF/Dth4j9Pjv/23NQ+N6IDHq4Mzd8UXrw1AlS0
Za4ucSU7sYalbGKXdrLMgyz7JHuUwp5eYIXZrCibFYtUmi0si68A3WdVd1jt
vdob+38O6FFz+xDT3GOq28IRz06rUSmU6PSqWnW1Sg8BTfL3wdOiYQFBixYv
Ky8tExzjgk2qqvcsdKxWI0yFViqt8shKMyqvr2hVvBLZepCY3McgwYuM5RJj
wYRKGmgQVTXcC6rV1RLp9AoTUmuqNVrDZnm4QG8Ym0xqqv/6m9tgN7HOImmU
QqyhmHNPo6yuQkGtqGUadUO9yg2dt20wldYJU/ZV+lf7D6HGmgWu/G3zCm/k
tUav1dXUQXfTVCkrUVAKSZ801kgITWkINbj/DaaLTkzkIBzduATXWxg4Mn6f
+P1LcL6HGt9V7S0hld2SQanTG4wm2pREodGDqjWveIEeGqpOo9XC9FcplbUo
4yiu7351jUJRw2rLhXxiwnSzQnAF11UI66r01cbE6oIA1xupRlOsF+Nh6sRZ
6jLREf1MDDzLZOy6aMinMmEHkB0atrqCLSlka2+WrMwoWHLpSWTy/amH0oN3
nBsed2LQmiN9liX8Y25cj5mru01Z7jNyrteI2V1Cl/59zoa+U1cOnb1h3ILt
M2L3Rq07sGTj/pXx+zZs3Zt0+uz5pKSrKadvpSbnXEl5lnGu4GZqya3Uspup
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
fk65HZWUFXk6M+LUjUX7r87feylq54XZW87M2pwECo9PRnlG3MnQ1UfGLk0I
jtk7btm+CbEHcByzZM+c2dGREfNBs8IiJoVMGxscMm7spIkTpkybOuuf//gG
5QnjJwcFjkf9mKAJIwPG9O3Ve0Dfn4YMGDi4/4B+P/bp07MX6KfeP+LUIg0b
MGho/4GDf+o/qG8/EApD+g1AjTUKGzQSNGPAiGn9hk3pO2Ryn8GTeg8M6TUA
hYk9+6Men84cGIBy+JDR0/sPnx3w49xRfeeM7BM2rOfUgd9MGfD1jCHfo3LW
8F4WaemIgRYpZviAJcP6Lx7aD4TCsoBBsaOGrAwctmb0oNWjBq4aOWDFiH7L
h/VdOuTHmMG9lwzqhdPY4T+hZtnQPjjiFJetDRy8cdBPq378PiF4FGj2p10O
TQyOG9h356hhm4f03zJs4PaAIbsDR+wfF3g4ZGzi5AnHp4ZsnRZskXaGTdgd
HpIwd/KheTOOLZp9ellUysr551YvPDF/jkU6GhWWGD3r+M+zTy2MOBMz78KK
RWmrYy6vXXZu55oDK6Mv798U2u+rU5uXJW9dkbpn/ZG1C5K2xFqkjKM7rdGN
xF2cMo/tBmUd33P+4MELhw5dSky8dvLkjeTkW+fO3U1NvZ+WdufCBYv05Nb9
X65lPr5579ala3evZmRevPLDP/+tqKiSvei/QwwaNCgmJoYMbdjgHTt25ElR
lEolZCKdOjs7N2crrcPBwYEZF5ThiDZDejb4Vyzb4PX8hvVX7lj+Rk2tks9e
2Ts4qeqEK2sVkGE60S+u09JiDWa0u7mTvK6eSaxiCpBSIJVIaqWQB0SnrG8y
v0qFJW6LbpEKtNUlTFnMFC/VlVTzFy/HejuP6JkhAEknRtkJYVSlQtYUdYEY
7vWS1b18pYG8IZlOPFYbCcKaqFx0JhiorrZG2DdWpXS0d6BmoZtqatUa41Is
tZhdB5qGYNRrDVECb07WpiZLtQYq07FyvUAUSPBUdBQ8qGPGSVL2jncnk7nR
AkmZ+y6EsHa94XbVkvoy3EXDynWG/XBfhUhphdRlOEory9SsWCkER1fqDD9i
PtQwkrQa6HMaVxcfJqZi06glF0jmUEkX5fUoa9WaOqVKUVNbU1VdVVFZWV5R
UlBYWlhUVlQMQrnoZX7+s+cvnjzNuXffImXcu3397q2rtzIvZ2VczLh2/trl
s1fSzlxKPX42mcrJaRdOnk/p8vnfjiafQmHvhUsJqZdx3HHm/OYTSRuOnohL
PLnp+GkcLdO2M+viT6+KO75szeGYVQeXrDyA49LVh0B0unjFfqrEBcvXHlm2
+sDSVfsXx+5duGz3z0t2RC3cGjE/fs68TaDZ0RtnRW4Ii1g/c+66GXPWEn35
w+jp0Rsmz10TNn9T8LSYOYu3jpq0oM/w6cPGRQ0fHz1iwryRIfNREzh5UdCU
xWOmLgkOXWSRAsZGDR8TMWT07IEBYT8NndZ7YOgP/SZ+/9OEgUNnWKR+g6aC
+g+ehvLg4WHDRs4eMXruyKDIwaHT/zFwWMCM2Z/07NtvfOi3IwJ7jh7bd2xI
76DxFmnMqNEWafyY4HFBY4JHB6IcNHIUiOonDBw8cdCQSUOGTR42YlrAqBmj
AsMCx8wKCp45Osgijeg7YOqY8cP7Dhg3fNT4kYGgsaMC62U7rM81ZTQXYK76
+Pikp6frjEHdrVq1glXORHuWJ0t58uQJTN26ujrN7wzQLtBgMr1LSl5tWdXg
31HrjKR5RZo6kZQSUhDRyl+LBMn4orAEx7+2stcYZ89LjcuHDaGqenFOHCJJ
w1RqIQ2mkIBExfRKw6pgtb5UrS9X6yvUuiq1rkajVQqtVNOu2sJlQnJxITek
QGDxKp3CIqmFFqmJNELeMfWzgicunk5MVWykUnHHtApx/1NY3wq9Gn/T8KDV
Gh0IP/GaIB8rpCwUcqoKgdplTFkp5D0X2qPRiknJyO2gUEC5EVKXVisMy5F0
2lYt7cARCvMLxIeoM4/bMUQSClvDVFnIkKapskyC3S+hX824oioSdZgSVppH
he7uLVhRrvC3FAVC4rvqF0LKO35ZXbVAqirhv+IIopracqGGylKi3W3M87xZ
odoaraJWWDHP066KC7aEgoO9O44oa0UFETK9rr4CazEyBJV4d4RHLEKP0SGd
KBfWYGh1dWpr86rSzL3iXLL2OdOAUCgS9J+658LkNGv5cTvUFDJDhh8i8pzk
iW4Ta5RnpEdiVMZDSc2v0kNx1cYDkR7Wp1zjR3/o/F2muDshxXWkqOuFedwS
vTSZoqMmQ/TV5FqhPLOm0u9b+1/09x9L/hfRLzpBS0zNZ//H428oXylh99Ts
YgHLqrFMT0sUFun+k+K7eYU3H7y4kf30+r3H6XfzQCjk3bwJepSVBXqYmZl7
48br6UVu3s0r6c8fPc6+dSc97TKoQ1t/RZUxN6B0IMkSvLnh7++fk5OD11kp
okePHsePH+eLsyhNCjB06FBHR0f33x+8vLy8vb3t7Ow6d+4Maf7BBx+0aNGi
oT/i4eZpJHcDubsayRnk5e4kJRcPb4vk4OIOwd3xo644erdtb+/s1srBuWUb
R3svHwcjOXoK5OwhkIu7j5tI7m4CebgaqK2zK8jP2R3k6+Lp6+zt7eLj5eLn
5eLv4dLe3bUDyM21k5trZxeRhGsskbeTu3sbZ4cPWjm1aOPl6ObW2ql7py6e
Dq7tXOxAbV1BrXzdHLzdnLzcnNEPLh6eaJWDp7+9Z/vWXh1aeXVq6dVZIO9O
DSIXT2ciN4965A5yd+XEO9mhVWunNvaujk5tff0gxD/6sDOOLk7OTg6ODg5O
ICdHNydndyL8LpoN8nOx83VuCfJxagHydvwr1ZuTn6uDr4u9j3Mbb6fWIBRw
Kq3xcmwF8nSwI2rXokXHVq283n//S19f93ff/bBNmw52dl2cnD5xde3m4tLV
2Rnljx0dQR85OIB8XO28XVoSoQzydUPHtnJ3+IuH4wdezi1QjyNOXVr/t5Pd
e36OLfyd7Tq4tenk4dDR3b6dSysf+w88W/3Ju81fUPB1+Cs+RSUIV6LSy9PP
Qxgk3iAUQG6uXi7OHp4evi3+2hoFRwdX+ghlV6hoTk7Ozs4uIlBwEoGCqxFu
RhjHv0Ce7h5eHp7enl5EKLu5uFqkNn6+nFr7+nByat8OxxaeHg7+bVH+wzv/
5fZhJ1zTwqGDnVOn1i6d27h+JCV7t48t0nteflJ637st6L99/P/s1/5Pvu1A
KEvpfb92oPd8/U0Ilf/dtv2f/Dv8uV1HIpRR8//cPVt0/vgdb98/+vn/uUMn
h+5/+y8vn//r7Pqub1sQKkHvtW33vn97ItzXIr3r4QNCC9GGv7Tt8Nd2nVp2
6GzX8aO/ePtZpA982krpr77+LfzagRxcP37nfbc2zp07fPQ1jn9u6fdBK3/f
9n9v5djJIll7Lnh9fL198ODc8YTFGhSEJ+vs7OXiAvJ2dfVxcwP5uruDqGxO
9natOnfo6Ni6DX7hL3/6s4+X97dffyNL698hYL1C5BnmakXA1t69ezczJhgn
BR66Oox0MnV/V6BG0hFax9tHy1t1oYux568W7xgCtax50YlqFSoQlcmRLlmp
oapHhlTrZsTXQtP6IWMMCd8+tVbitq1kOkvL2hjtrSo91cFGLIEhXs+efROy
+vvWiCJmhQh5MRJemAen7KBqimNWCZMCmloxMq9KjOhTq+qo++pqa8ipbjHN
jk7MzmytndayUEoTsFAAQIVxkV255JQT37mlpMpQKK8VjgqtkECG7+JCmWSq
VG+6pwm/jJZo8/VesICpoJd8pDNduyOsCtHWB8WrYORTgc9/vX58mhO3x+sk
eF1cKH/QPEzBOLujLK6l7MM1BVW4QF+lBRmcHoJzQ2Mg8nVY23vEsA7ShCxW
lljPtVMqxHzqiw2EsrZQrynQqfOFPCeFuYaEJ1RQFQtHBbmOioTTupJXSVGs
/b5Jah9toRBYjt/XFVomfZFl4ul880telauUllMBg7SVlqmuTCDBsVYqFDQV
VK/V64j4G2XwtVhJzcPquzSZcZpSxu8NePE//PDDjIwMOq2oqIAlm5SUhJeX
Hhl525q1jb8CtJkK5C6QxtI3DBYluF4qwUWxahC+lllhdWWVxuh7rKkSt9wC
26+pNazRoBzXerUkaltByVs0QuR1TZ2RDCKWT8JLNQqxJaIMUeiNX7fWHmGT
TnHjh9LiCk2dIBK04mypNF8ZyT6+vYUF1UXYzlvRQOIrjCikXieNYtVLNn0j
EroIrVKqagRPncBF9CqVolJIwqaprRUyfdUX5UoJqeqnX7OWO9MiSWMJpCpU
hV7QfQoUhonsh8XCSsUn5Srp7LaULKYB4REAVcZpcf4Rn9y3mNOV8r7SUh6q
4SvBzZeEFxY95/VV1aXouDp1jVqvM6E6nVapUVtcLKwx8nNzssrh3yRZaLVe
W6I0PJ6GJXRRWdhdS4jQqHo1dSKtB5koxiDKfWJeL5K+pMiQQp+TosZCJahO
KZC1nWs0YnyKhfrqXyd1lbAHARFtwUPb8SiqhX18aF8evnePCVn5X9bI5Mmo
JJGuFolGRUVNNQ2DkrJSHItLS2QT/HeIjz766Pjx47SYGtKwRYsWL1++5J9q
xAVlzBjm/XsDd/JLNzR5m0g2wq9K8Fe28+uWy1ZWlFFBo1ZpNQL/4vJLKryU
Rj4vZvXUlYlUKpIYwC3YKlpRWBtMdZ2YXklN23JJppJrFa8J46pRFEpPlbAs
hIJZeJ40rZYFo7q6QSSd9+c7stGaOj1XQ6SsRFAtNEblR1ddXlavPdo6w9Yz
MCPUGjE3jhXSay2TqqYeKauZokoga/WsRK16JlhVelq5bs30MyZK58vnDIvo
RKWsVi0UTD6iT2kvPBOCqgyzV6s1rdRqjblSyf+jpPSqKFA+VaWqgudno2ND
M35oYNzrdSayG5VWJbvWQCTRpZ8JHpc6w0y9Yczr6iUaknokrOU00+jr7SZH
9Jo0oHxXW+nOt+QzkRK/gLchX1sv+73UUSMltdYySXdjwWmdRiCV+le6+9V7
ZqwpZfoqYxdVGFW+soZnhrG82ZDeVE19TfpYpXHzRHAuah1taVdWUW7iEarH
M2U0H1asWNG7d28KWgsKCho6dCj5osmY1YlJlbkLheQ4d69BgOp+SzbyNwZ3
j5PIlrp08BG1SmMMR5d+BNBfs60nQXoX3J10BuoWrj9QLAG/klK4c9i830ye
Ba1u47GIGuOuVbxJaJ5JG2hRHu+ot19c/1rwmEk6pe7ivWRyU1rAyC+gtjXB
kMON+F1425rXGYWuIDXbIviDRrNp4PEFoW+v0FrHW/RPo45/fms0hm/fZnIv
3g9UaJbxL+Wl3PqgPR3M2SxPcKGTZLYvLS21eausNbXp+aqMt0BxcfG4cePc
3Ny6desWHBx8/fp1ZhzkfPwwkUXwh8VlAaFppkj4JB2dkvMcbwHV0NtHZVTS
OOfvIFifCQP57UAn4GepGVJ5hGaAeXKmgSahTLyXmoeepIY1BovAvXBTmiTl
rZK+a9QG6VwDXc+MDxqN57xFusjdJsDd+Y/jifCnyRkCXYMRhcu4mJBKrsaQ
RxaBG6FJPLiiaTTV14OUNHQLCmiekItfPNKUJbWQxjmPDJE+bt7DNkGD+qcJ
xj9uwUc1moQXE7+Pe6GeK4H8jWiu8U8NIAlIybJoLQC/nd4I/hXO35hRD7dh
e6yhGfmqjAaBj096RkVFRXTKFXgaMFIZzefH+XNsAglO9yI+gCYVFBTwj9BU
rpcS8+cfcdFpc/BYfaipvFXS3VXAOkyMJs4WmMRstxX4r5lzRd4qvGvUObg7
Pff8/Hw+OWIxfoCYic01DYvKGAENk57yxqO+vLwcrTUJsGkkmMwZNUYnNAjP
nz/nLeHsXWppojMxAil7A10gZfVovInW/RvxFv3TqOOf/zWpEW0C1PNR11zj
nwxt/t/xSpr8OH8pUJDKd3oRpNHFjY1m4asyGgoaUXzMFxYWSj/lGhfZdHS9
1Dtn4q1qVJCyJx3wqCGVQ+qJpVcS7IJrIyQRbK5mSLUIqSORRxFYdGNyVsxs
aoNw+1r6mzilNuAZccHH38ri4mLz5hGjMKwRboSHazLAeAQ1Nw85R8VTQ2Mo
olIq7lkThsXi7pTfj582zX2tgT9E9BtnoegldAh1oJTP07BHmZ6vdL2JrfAW
/dOo458ZmRWVX7x4gZ7BgJc6HzRi0ifWTOOftw2Pj/99tJAUMCaRztI28yvJ
XdAEErwZ+aqMtwNGBeft5MyRmr2kP9OY54+M1N2mkeDS8Yy2kcJs4sknxxQx
fKqkUUcttC0HkxoUfI9y7p2QjmpyM9LduXVJLbe5A4q7NNFdhmyxkqUExP+l
1hNxYPqilPWhtea+FxsCD4j/dyrQjfiDkz5uLr7R56inWYnGaJUUYFM0H8Hb
wJp1yg9PhHLssPouC3pJ0Tw0VbqakksiOqWHbp4q+a3R0P5pgvHP3TVSDkCg
+5pb/c0y/mkMc0WC1vGZ6N5UyST6Np+GMPlrjY0m5qsyGgra0our60wcYDxc
jUKh8KJFRkaOGjXq+vXrPJDMJLChsduJluTm5s6cOXPq1KmpqanMKI/oLaB3
Exfs3Llz/PjxERERZ86cYeLo4gJLK+7hbdtW4Y4ka3JycmJiYsLCwo4ePUqt
pf4x96KnpKQcOnQIpuhv3dDcEuim+JucN6J5gYGBvNOY0eAlU4hftmnTpqio
qNDQ0OPHj5v/rM09ZmjD/fv3w8PDJ02alJmZSUyAz93z2yUmJk6cOBGXbd26
lVdK5Vdjg4c8paWlJScnb9u2rclubQ48rKysLIyfzZs3Uw36ROoTBvCGxsfH
jxgxIjY2VvooqdNsKMEJDeqfxh7/XP5ieNOLgALeR4z8vXv3MiNDo2uaa/zj
efFfu3nz5smTJ3fs2MGMLJSeJneK4r1A4+fOnQuetmbNGvpWY/ANczQvX5XR
UEiVZ+ksG45Pnz61s7Nbv379smXL/v73v2/cuJE+5cKCNYl38fHjx66urgkJ
CWBNnTp12rVrF4YQtZA7Zt3d3ceNG3fkyBEIem9vb7yVVM+NBRvabugxPnH2
7Nkz3A433bdvX48ePZYvX87jgalj+UzWy5cvP/3005YtW966dctWLeHtYUYO
wJ9genq6vb09+uHgwYPdu3dftGiR9EHzZCDffffd4MGDt2zZgoc7ffp0Uo3A
b/GRtP22aid+FpLoo48+QnvAwdzc3NBv0lsQc5g/fz7aDG6/bt06iKRevXq9
/Ur/hoP7q2Fszpo1C0Pum2++QXuarAHmgH7YoUOHzz///OOPP5ZGW5EOiYf+
4sWLbt26QSmC2AoKCvrHP/6BjsWVJtH+NsFb9E+jjn9mNCukLvR58+ahQ77+
+msfHx8u+PiUTbOMf0J+fj5UU39/f3Raly5d+N4TNPL5XwDX7dixI2Q39IqA
gACwX/qoaYLHmoWvyngLSB2YlJeJ6imUol+/fpDdVAM1+8MPP5SGEpH11ART
IRjA0EWpkadOnaJtv9BULijRVOJpNKgw7CFM6bv0j0wiPH8j6L5Qp/GbeP0h
jJg4kmE2du3alUl0G7opXQ9JBJEEPnz+/PnGCCuVGll4zceOHbt06VIm9gk9
O3rXpC671atXf/vtt6z+zBd3YpeWlto89hsdgqe5ePFienzXrl3z8PAwWQCF
nvnss8+g+RNPu337tqenJ29Yk+n80vU+eGSOjo5Nc19zcB9vUlISniMzTtZw
LzpdRlyXroyMjATP56c8JNuGePP+aYLxz2U0H7EkGWE2gl3w9Vn0UXONf+ox
fvcLFy7AMOH10rk5vAtffvnl/v376eHev38frwka0zQhZM3FV2XYCnzcenl5
ZWRkkBcOYwmM9PLly5wVmK/Oti0omAQDCXogRjtfauHs7Hz16lWaAmD1F4DQ
cNq9ezfGv3TpMZ9asglohNN8Ft6s1NRUvvrbz88vLS3NZCqcmhQYGMjEzdR+
+eUX24YQ0NI2aQ06pG3bttB26BRPkHNOfl807Kuvvtq1axdY1unTp0mAwtSl
C/gbalvOj4bBZCN3HK2HQjvRgdIQHTQMelFcXBxqUM7Ly4N0MJnVbVSYL3ZO
SUnBu0BlWi3IF/g0dmOYcQhBeT579izkEU18M+MLyOMKuE2EApg/tCCpaLDh
c3xN/5gEb/M1XI06/skANxcl+OO4V+vWrenUPGNDE49/HlhIb+vFixfbtGnD
22ZiRvXv3x8GL90dXBd8psl8nvyxcuWQ1i02Nl+VYUPgkUGlh4p48+ZNqsEj
a9++PbRoenZNsJqMS3AfHx+MYarBoGrXrh0Gv0lgD0XyUOzHF198ERsbyyRv
q20XwzKJwQjh8vjxYyY67nBEU8FmmZHLkbjBBd9///3du3fBaZ2cnPBfbP4a
8tgbHicDPYeMMmIXYLBgU3RfvmoYqtGwYcM6duwIuxislc+xEmzuJaOHBa6V
lZVFDUM78TTB/ykWi7f25cuX0PbnzJkzdepUdB1JfNaEGS24lGRiPyQmJuLJ
UjCndPlwE08CQgcDJ6cydRTXZ8g5xpdIwABfvHgxkwSl27YlFvuHSbgBnhT3
9zbB+CfojXuucWl++PBhDDDuqaZOa67xT+BL+KHqowFM8hC57xo3vXPnzrff
fjt58uTIyMgffvgBf4Q1X25MYndNwFdl2AqkycNwy8/PxxtBQ+6TTz6hsBBm
tAsoUrGR2sAlOGnRXL3/29/+tnbtWiZxnaF5nCeMHj06JCSEt4rSgzBbaxrE
BDCAoeQQ2yQWQe5f6b1wzdixYzlzcHNz40qRbSFNXwbY29vjvQMDp4bB8k1I
SJBeCSaMa3788UequX37tre397179yhZB2sc8YQnBRkERsTVez8/P94wZkyW
Beb29ddfT5o0KTo6um/fvuHh4U0ZhWuScw/HjIwMmrth9bvF5kk/rAG8Hc/l
woULeCVJDHEPJzMb26NGjYJI4pVVImzYGGv9YxKdzoxJjRp7/NMCc4sPAj0G
u4NJ8sjl5eU11/inxeBcCp88eZLrYwRplP7Vq1ehhoGVTZs2DZZvXFwcq58+
uvGgNe4YhQaD/9N4GzJkSBPwVRk2ATfoIDox4JlxTgTMlhyzPHMCj7tuJJAQ
b9WqVW5uLnEhc081ty8w8sePH9+/f/+ioiKKbebhKFKT4bdD+h7hHbx+/TrV
4Ah2AVOXNx6DH5yha9euN27cgBZ97Ngx2CArV67EV2w4fyRN3MTzPsGm4KwS
nQAbPDk5mV9GYbG+vr7QN5hxCSFO9+3bR19pPJcd+CTMMRpCeCgwQ2CDm2RM
pQg3Kj948AA6G77CGiEw3hpojQYPtT1z5oyjo6N0tGM0SsObmwbnzp2DoCS1
gRrG06/xJxUYGNirVy96YXl6QJvDYv8wUWSTT5ueFD5tgvFvDp5h6eDBgxhv
lAyQYnvogmYZ/1LvNFSy1NTUzp078yk56jGdcRfIFi1a8Nh4XGxnZ5eTk2PD
xrwG1EtSe3/w4ME//fRTY/NVGTaESgTsoI0bN9LQwihycXFpYkZKEvyLL77Y
vn07E11zMHidnZ2zs7PpAsowRvn9IiMjBwwYgGFmsuaouLjY5gGc3Pnw1Vdf
gUsw0fFbXl7OdR6yJdGShw8f9uvXb+DAgdAuYBxBNgUFBdEqEltBGotOi0bB
r3r06EF3ARtHn8AGR6fxTLnETD7//PP9+/fzdA1t27bFKf1mY8zzkhcFMmjP
nj2kw+PU1dWVpiGk/+Wdd94Bv0IfkjWEa7he1AQcQ8q76HaXLl2C3sgs5fdu
AscmvW5oCUYanhHNJTGztUXozylTpoDTopH04nC3DMahDdv5mv4xURhwZWZm
ZmOPfwI5JaTaNUY+NIeOHTvyGhpOzTX+mWT8oLWXL19Gp3G9QrpKFzXoKHTd
06dPqQZvjcXFbo0BUv9o11qMveXLl3/zzTfonybgqzJsAm7V4tn9+OOP9JKG
hoYGBATQR9LE6TaEuVpOoWsLFiyAEKeaWbNmDR8+nK7cJYKJYgtN/f7776Hw
00cQpjUimCTgx1bt5C4I/PK8efN69uxJE1hhYWEjRoygqI+EhATyHNLkKV/q
BdX6ypUrjTF/RA+F/81169Z99913dBoREYFG0gsYHx/PVwWi/O9//xv/Aq8q
zCJwMMhNnsytkVx2UVFRQ4YMofL06dN79+5NjwnWENpDflfo/BMmTKBr0tLS
OnTogOY1cS5H6X4rR48ebdeuHZPkNZJGDjcBaAUBrLb27dsT26TEI4mJiStW
rKBQ6rlz50LlpngM3jxSkxqjSeb9g4bRGEMNHiXsWRO/eiONf4hgCtGUTvej
Ev89OTnZ3d2dfALUJ5s2bWqu8c/nMmhpJPQxe3t7aip9BDV15cqVdA2EO3gd
E/v5xIkTXl5esBHwRZuv67cI3pMzZszo1q0bBlUT8FUZNgTnlv3794c22KVL
l169ekEnlF5DqpoNg2QsOtaoEmq8i4sLDEnYvLm5ubSBSHh4OLR64hLvvfce
bPM2bdrgGjSYB6ASu+PJAG0IbgFBsenataunpyf4Z3p6OhNfusjISAq+1Rn3
CANzQ/0f//hH8obZUASQnsOTwlElZA2sHrTK29sbfUKT9WjMzJkzJ06cyBk7
OhCfQvnx8PDglpF0EZwNwQPOoRbiGX3yySd4msTN8BBDQkKCg4PpyiNHjvzr
X//CE//yyy8dHR05y+W+lyYDNDHw0vfffx8sFGMMDX7y5Al91NhTSFIkJSX5
+PjY2dnhaaJDMNSpHhoj7G4mjnOYaZBW+LRly5ZoM3qPrsGDfvbsWSM1TNo/
uDvGEuVLwUsxefJkJo6ixh7/JoY//i+EXVZWFjoEnQCegCPJcXyKMdZc458Z
Aw737t0L2Y0moYV4lGgeMTE8Tbyz9C4/ePDg448/7tixY48ePZycnM6ePZuf
n2/z9lgD+D9FjaKRUBrBTqFFNw1flfHbQWoV3jgqkO+ax77S6tTGcGZaW13I
82pCdjOJE4/naZeq9HxeidV3L9sQfLcvCo+hVVE85zPxE757GlVKN5DCsLft
JKBUjyL3KTe7IG54LhS8dDzFvVTvwt9Bx5rkkWskZzX/WdwIHInvfETPkbpL
mgkWoocvYDf5tPFAjeHOamnLycLVSjayaYL2mOvJ0pUg0pBpaboGmqbH0eZZ
Va31D52SD4oqpbGmrNHGP/0sZVLiOpW5hiBNPNss45/C7UwyyZssk6RPua6L
foM2wuPftOL+LDZvmAmkqbOlW6uwRuarMmTIkGGO1whZisXii1tNNpjgeJPM
FXQN/SBXk6iSHLzNmFldhgwZMmTI+J8LHtwljfKSgocSaevjTX78DZeVyTms
ZMiQIUOGjIaCZPdrakxSfZKgfxOBy61s8x83+bpt40ZkyJAhQ4aM/2yYC2KS
pJSzgvu6XyOspaEF5uBCmVviFIxEoW7SnStZk+zlJ0OGDBkyZPyHgRakU9YR
LklJyPJT7mM3kfuvkbxcuJOgN7f0bZsGXIYMGTJkyPjfBnNfN6/nYlcqasmU
/lW/Nw/Kfc1GGHRr2QCXIUOGDBkyGgSTSDPK2sF3mWf1hTiMdKlJLt3QzSKk
XnT+rYqKCsrL9+a/I0OGDBkyZMgwgXSaG7I1Kyvr+PHjjx8/5pkE1CKofOPG
DXwkTTvwhvFsfCEtfjYnJ+fly5fQE3imepMJcRkyZMiQIUPG68Hta3J3f/HF
F927dw8JCUlISOAilSdpKSws9PT0pBR2y5cvp52tCJQkZMaMGSNHjqQaSq9K
gpsyijBjKpXz58936dKFSRQAmPayI12GDBkyZMh4Oxw+fNjPz49c6JSAi7J9
csG6ePHioKAgEugRERGtW7eWbgWO8tixY4cOHcrqx7ZRvnQmSQ9YVlbWs2fP
vXv38hXoTbyZuAwZMmTIkPE/HWR6Q2Tn5OTExsba29vfunUrNTWVsoNKtzyG
TO/UqdOxY8eoPiYmxsfHh38KcxuyeObMmQMGDMB3IeUh/U+dOpWenn7x4sWU
lJQTJ07k5eXx/NX4Om3qxIwZNZlZEm8ZMmTIkCFDhjVA+JIQDwwM7N69u7Oz
86efforCvXv3uPimWWwIYnzK8/BHR0d7e3vT9g3kKsf148aN43urpaWlff75
523btv3kk08g+rt06WJnZ3f58mXKX52dne3h4UHJ/Pnu7fJUuAwZMmTIkPHm
gDimHWBhMnt5edFek3zzC9oNmYkT35999hnM5MrKShznz5/v5+d34MCBxMTE
ffv27d+//9ChQz179gwICOB7UKpEMNFt3qdPn0GDBlVXV3MHO0x4fJEZ49Ub
Y7srGTJkyJAh4z8VkNd8Z674+Hh/f39Wf3d7lEm2wr6mKDUS7rNnz/7ggw+m
T5+Oyr59+w4cOHDSpElQAH766Sf+XXKPw0IPCQmBaU970nHTvn379jDkKfkb
kyW4DBkyZMiQ0XBQ3BrsaHt7e15jkootKChowoQJVAOZCwneoUMH2OPSDaMj
IyOHDh0KQ5uWm5FoXrFiRadOne7fv8/D3srLyyG4IcHnzZvHN0iVXegyZMiQ
IUPGm4NELVnHZ8+e9fb2ZkYzmZZ6kXiFUJ45cybMbTLAIXYjIiL4xSR8Ia8D
AwMHDRpEv0yS/dChQ46Ojg8ePGDGHK08cB0KwIYNG5hEdstCXIYMGTJkyHhD
QM7SIi8I5YSEBE9PTyZZC8bd6RDTu3fvpgXgJPSjoqJ8fHxgekvFLuz0YcOG
8S+mpqZ6eHgcPnwYZQpQ5xfn5+f7+/vfuHGDzH9mdM7LkCFDhgwZMt4c5DNP
Tk728/NjovwlBzjPag7cunXL2dn5zp07TBTiYWFhbm5uPDSdrp82bVpAQAC+
jppLly517dp1xYoVZWVlTKIVlJaWQh+A7HZ3d8d9pYnT5YwuMmTIkCFDxhvi
6dOnvHzgwIFu3bpRXDoZ0SRe6ajT6b777rs1a9bQdPb8+fMhoJnEdoZZHRoa
SilfcHr+/HmIeBcXl7Zt27Zo0eLdd9/19fW9cOECXTx9+nTI+qb8pzJkyJAh
Q8Z/JEgQk+Dm4eIkiyHBSWofO3bsm2++4UHjt2/fpgKfCmeiic2MoXH4Fs/D
xn+wqKgI92rfvn12drY8Ay5DhgwZMmS8HSA6SdryzcJ49JqJT5vSq3799df7
9u2Tetd50lTpcjCNCCqTEMenfD+U2NjYcePGUSXdxWR/NBkyZMiQIUPGm4BL
ZG4yc6OYrxanj8hU53udlJSUMKPlbpLbHKf0s1JNoKKiggz8yspKquGCnpnp
DDJkyJAhQ4aM14MLX/KBm3xEgpWyoTKjj93EPc4N8DoRvF66awmtWWPGaHY6
ygFsMmTIkCFDxtuBZDHkKZekJIL5dp84JZOZUrtw1zeX1NxglxrU0t1CSViT
n5y+RQHq0v1TZC+6DBlNj/8Pjl90Mw==
    "], {{0, 392}, {662, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSizeRaw->{662, 392},
  PlotRange->{{0, 662}, {0, 392}}]], "Figure", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Figure ", "FigureCaptionLabel"],
 StyleBox[
 CounterBox["FigureCaption"], "FigureCaptionLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "FigureCaptionLabel"],
 "Orientation angles over  frequency"
}], "FigureCaption", "PluginEmbeddedContent"]
}, Open  ]],

Cell[TextData[{
 "As it can be seen. The spikes in the frequency domain graph align neatly \
with the calculated frequencies in the closed form solutions.  This can mean \
that for the ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{
      SubscriptBox["\[Omega]", "3"], "(", "0", ")"}], "=", "5"}], ",", " "}], 
   TraditionalForm]]],
 "the linearized analysis correlates with high accuracy to the nonlinear \
solution. "
}], "Text", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Varying the Spin Rate", "Section", "PluginEmbeddedContent"],

Cell[TextData[{
 "We can investigate the linear solution\[CloseCurlyQuote]s fidelity by \
varying the initial ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Omega]", "3"], TraditionalForm]]],
 ". The slider below can be used to see the change in the time histories of \
the orientation angles as ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[Omega]", "3"], TraditionalForm]]],
 " changes."
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Legended", "[", 
        RowBox[{
         RowBox[{"alphaPlot", "=", 
          RowBox[{
           FractionBox[
            RowBox[{
             RowBox[{"4.21052631578947`", " ", 
              RowBox[{"Cos", "[", 
               RowBox[{"0.050000000000000044`", " ", "n", " ", "t"}], "]"}]}],
              "-", 
             RowBox[{"0.21052631578947367`", " ", 
              RowBox[{"Cos", "[", 
               RowBox[{"n", " ", "t"}], "]"}]}]}], 
            SuperscriptBox["n", "2"]], "-", 
           FractionBox[
            RowBox[{"4.21052631578947`", "-", "0.21052631578947367`", " "}], 
            SuperscriptBox["n", "2"]]}]}], ",", "\"\<\[Alpha]\>\""}], "]"}], 
       ",", 
       RowBox[{"Legended", "[", 
        RowBox[{
         RowBox[{"betaPlot", "=", 
          FractionBox[
           RowBox[{"0.21052631578947367`", " ", 
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{"19.999999999999982`", " ", 
                RowBox[{"Sin", "[", 
                 RowBox[{"0.050000000000000044`", " ", "n", " ", "t"}], 
                 "]"}]}], "n"], "-", 
              FractionBox[
               RowBox[{"Sin", "[", 
                RowBox[{"n", " ", "t"}], "]"}], "n"]}], ")"}]}], "n"]}], ",", 
         "\"\<\[Beta]\>\""}], "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"t", ",", "0", ",", "30"}], "}"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "0.5", ",", "5"}], "}"}]}], "]"}]], "Input", \
"PluginEmbeddedContent",
 NumberMarks->False],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 0.5329109191894531, Typeset`show$$ = 
    True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 0.5, 5}}, Typeset`size$$ = {434., {105., 110.}},
     Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`n$156544$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 0.5}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$156544$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[{
         Legended[$CellContext`alphaPlot = (
             4.21052631578947 
              Cos[(0.050000000000000044` $CellContext`n$$) $CellContext`t] - 
             0.21052631578947367` 
             Cos[$CellContext`n$$ $CellContext`t])/$CellContext`n$$^2 - (
            4.21052631578947 - 0.21052631578947367`)/$CellContext`n$$^2, 
          "\[Alpha]"], 
         Legended[$CellContext`betaPlot = 
          0.21052631578947367` ((
             19.999999999999982` (
               Sin[(0.050000000000000044` $CellContext`n$$) \
$CellContext`t]/$CellContext`n$$) - 
             Sin[$CellContext`n$$ \
$CellContext`t]/$CellContext`n$$)/$CellContext`n$$), 
          "\[Beta]"]}, {$CellContext`t, 0, 30}], 
      "Specifications" :> {{$CellContext`n$$, 0.5, 5}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{479., {148., 153.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Input", "PluginEmbeddedContent"],

Cell[TextData[{
 "The linear precessional frequency (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["F", "p"], ")"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      FractionBox["Ia", "It"], 
      SubscriptBox["F", "n"]}], "="}]}], TraditionalForm]]],
 "0.0398 Hz"
}], "Text", "PluginEmbeddedContent"],

Cell[TextData[{
 "Substituting for ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Alpha]", "."], TraditionalForm]]],
 " in the equation above:"
}], "Text", "PluginEmbeddedContent"],

Cell["is==", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     OverscriptBox["\[Alpha]", "."], " ", 
     RowBox[{"sin", "(", "\[Beta]", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "Notice that ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Gamma]", "."], TraditionalForm]]],
 " can be simplified in the following way: "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     RowBox[{"tan", "(", "\[Beta]", ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["\[Omega]", "1"], " ", 
        RowBox[{"cos", "(", "\[Gamma]", ")"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], " ", 
        RowBox[{"sin", "(", "\[Gamma]", ")"}]}]}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "Substituting for ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Alpha]", "."], TraditionalForm]]],
 " in the equation above:",
 ". "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     OverscriptBox["\[Alpha]", "."], " ", 
     RowBox[{"sin", "(", "\[Beta]", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "Notice that ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Gamma]", "."], TraditionalForm]]],
 " can be simplified in the following way: "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     RowBox[{"tan", "(", "\[Beta]", ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        SubscriptBox["\[Omega]", "1"], " ", 
        RowBox[{"cos", "(", "\[Gamma]", ")"}]}], "-", 
       RowBox[{
        SubscriptBox["\[Omega]", "2"], " ", 
        RowBox[{"sin", "(", "\[Gamma]", ")"}]}]}], ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[TextData[{
 "Substituting for ",
 Cell[BoxData[
  FormBox[
   OverscriptBox["\[Alpha]", "."], TraditionalForm]]],
 " in the equation above:",
 ". "
}], "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   OverscriptBox["\[Gamma]", "."], "=", 
   RowBox[{"n", "-", 
    RowBox[{
     OverscriptBox["\[Alpha]", "."], " ", 
     RowBox[{"sin", "(", "\[Beta]", ")"}]}]}]}], 
  TraditionalForm]], "EquationNumbered", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item1numbered text here.", "Item1Numbered", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item1paragraph text here.", "Item1Paragraph", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item2numbered text here.", "Item2Numbered", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item2paragraph text here.", "Item2Paragraph", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item3numbered text here.", "Item3Numbered", "PluginEmbeddedContent"],

Cell["Enter item3paragraph text here.", "Item3Paragraph", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell["\<\
Enter text here. Enter numbered equation for display in a separate cell below:\
\>", "Text", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"\[Integral]", 
    RowBox[{"x", 
     RowBox[{"\[DifferentialD]", "x"}]}]}], "+", 
   SqrtBox["z"]}], TraditionalForm]], "EquationNumbered", \
"PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item1 text here.", "Item1", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item1paragraph text here.", "Item1Paragraph", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item2 text here.", "Item2", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item2paragraph text here.", "Item2Paragraph", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["Enter item3 text here.", "Item3", "PluginEmbeddedContent"],

Cell["Enter item3paragraph text here.", "Item3Paragraph", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter subsection title here", "Subsection", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzt2DFr1GAcx/FDHXwbvhT1HZy70ILiJrRS6SRuDg4dlA46qYuDIIIgLroo
uAgdXERcxEEEBxFxO3/6h4d4ae/UQ5MvfD+kJZfknivPN8mFHls/Pz17aDKZ
bB7Nr+naxeMbG2vbp47kxYntC2fWD2flWn528vNjfSaU3ZNbLqxl6FNGv8te
LPZisReLvVjsxWIvFnux2IvFXiz2YrEXi71Y7MViLxZ7sdiLxV4s9mKxF4u9
WOzFYi8We7HYi8VeLPZisReLvVjsxWIvFnux2IvFXiz2YrEXi71Y7MViLxZ7
sdiLxV4s9mKxF4u9WOzFYi8We7HYi8VeLPZisReLvVjsxWIvFnux2IvFXiz2
YrEXi71Y7MViLxZ7sdiLxV4sA/a6Pt1qy93NnY9v37ftq4/814et/un/1LC9
2vqrxy8eXL7R3776yH96mL0OMjcz7aW9FhhJr5f3nz66eqe7PbfHXHFZv33u
yptne7Xr25evz289rI25JGvLk917N09fypIR8rJGyN5s6b43b6zDstL9oDZC
jTm3cd9h/8fsHGAM3181J3PfX/lGe7f3evYzXJuizGGWtvHzh095mda1Nyu1
NyNUlByWcdquTHuFqLfUB7Uxa1fbuO+w+TvrrxrKSK6v/vbMXk7mzFVdULUr
l0Cd6k2qdZ9bqmxW2mH13u4bs5KXbVfe0nblBGgbFw87lNH2ys0wpXIytzmc
/Tq3uXaynsunO4d18ndHXtprble7uhcPO5TR9kqaukPmEmtHtttU3Q8zpe1G
V3vrS7Dfa8H9MGdF/364dNihjLZXboY58+sZINdazVh7DGjfbvUEUrev7oNB
/1OWPm9kaefG0mGH4v83WOzFYi8We7HYi8VeLPZisReLvVjsxWIvFnux2IvF
Xiz2YrEXi71Y7MViLxZ7sdiLxV4s9mKxF4u9WOzFYi8We7HYi8VeLPZisReL
vVjsxWIvFnux2IvFXiz2YrEXi71Y7MViLxZ7sdiLxV4s9mKxF4u9WOzFYi8W
e7HYi8VeLPZisReLvVjsxWIvFnux2IvFXiz2YrEXi71Y7MViL5bq5QJahj5l
JGksvgOlkhSu
    "], {{0, 148}, {144, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->{144., 148.},
  ImageSizeRaw->{144, 148},
  PlotRange->{{0, 144}, {0, 148}}]], "Figure", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Figure ", "FigureCaptionLabel"],
 StyleBox[
 CounterBox["FigureCaption"], "FigureCaptionLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "FigureCaptionLabel"],
 "Figure caption."
}], "FigureCaption", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1:eJzt2DFr1GAcx/FDHXwbvhT1HZy70ILiJrRS6SRuDg4dlA46qYuDIIIgLroo
uAgdXERcxEEEBxFxO3/6h4d4ae/UQ5MvfD+kJZfknivPN8mFHls/Pz17aDKZ
bB7Nr+naxeMbG2vbp47kxYntC2fWD2flWn528vNjfSaU3ZNbLqxl6FNGv8te
LPZisReLvVjsxWIvFnux2IvFXiz2YrEXi71Y7MViLxZ7sdiLxV4s9mKxF4u9
WOzFYi8We7HYi8VeLPZisReLvVjsxWIvFnux2IvFXiz2YrEXi71Y7MViLxZ7
sdiLxV4s9mKxF4u9WOzFYi8We7HYi8VeLPZisReLvVjsxWIvFnux2IvFXiz2
YrEXi71Y7MViLxZ7sdiLxV4sA/a6Pt1qy93NnY9v37ftq4/814et/un/1LC9
2vqrxy8eXL7R3776yH96mL0OMjcz7aW9FhhJr5f3nz66eqe7PbfHXHFZv33u
yptne7Xr25evz289rI25JGvLk917N09fypIR8rJGyN5s6b43b6zDstL9oDZC
jTm3cd9h/8fsHGAM3181J3PfX/lGe7f3evYzXJuizGGWtvHzh095mda1Nyu1
NyNUlByWcdquTHuFqLfUB7Uxa1fbuO+w+TvrrxrKSK6v/vbMXk7mzFVdULUr
l0Cd6k2qdZ9bqmxW2mH13u4bs5KXbVfe0nblBGgbFw87lNH2ys0wpXIytzmc
/Tq3uXaynsunO4d18ndHXtprble7uhcPO5TR9kqaukPmEmtHtttU3Q8zpe1G
V3vrS7Dfa8H9MGdF/364dNihjLZXboY58+sZINdazVh7DGjfbvUEUrev7oNB
/1OWPm9kaefG0mGH4v83WOzFYi8We7HYi8VeLPZisReLvVjsxWIvFnux2IvF
Xiz2YrEXi71Y7MViLxZ7sdiLxV4s9mKxF4u9WOzFYi8We7HYi8VeLPZisReL
vVjsxWIvFnux2IvFXiz2YrEXi71Y7MViLxZ7sdiLxV4s9mKxF4u9WOzFYi8W
e7HYi8VeLPZisReLvVjsxWIvFnux2IvFXiz2YrEXi71Y7MViL5bq5QJahj5l
JGksvgOlkhSu
    "], {{0, 148}, {144, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->{144., 148.},
  ImageSizeRaw->{144, 148},
  PlotRange->{{0, 144}, {0, 148}}]], "Picture", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Picture ", "PictureCaptionLabel"],
 StyleBox[
 CounterBox["PictureCaption"], "PictureCaptionLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "PictureCaptionLabel"],
 "Picture caption."
}], "PictureCaption", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter section title here", "Section", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[TextData[{
 Cell[TextData[{
  "Table ",
  
  CounterBox["TableTitle"],
  ". "
 }], "TableTitleLabel"],
 "Enter table title here"
}], "TableTitle", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]}
    },
    AutoDelete->False,
    BaseStyle->{TextJustification -> 0, ParagraphIndent -> 0},
    GridBoxAlignment->{"Columns" -> {Left, Center}, "Rows" -> {Bottom, Top}},
    GridBoxDividers->{
     "Columns" -> {False}, 
      "RowsIndexed" -> {
       1 -> AbsoluteThickness[2.], 2 -> AbsoluteThickness[0.5], -1 -> 
        AbsoluteThickness[0.5]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{10.}}, "Rows" -> {1, 0.5}}],
   "Grid"], TraditionalForm]], "Table", "PluginEmbeddedContent"],

Cell["Enter table note here.", "TableNote", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["Table ", "TableTitleLabel"],
 StyleBox[
 CounterBox["TableTitle"], "TableTitleLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "TableTitleLabel"],
 "Enter table title here"
}], "TableTitle", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]}
    },
    AutoDelete->False,
    BaseStyle->{TextJustification -> 0, ParagraphIndent -> 0},
    GridBoxAlignment->{"Columns" -> {Left, Center}, "Rows" -> {Bottom, Top}},
    GridBoxDividers->{
     "Columns" -> {False}, 
      "RowsIndexed" -> {
       1 -> AbsoluteThickness[2.], 2 -> AbsoluteThickness[0.5], -1 -> 
        AbsoluteThickness[0.5]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{6.666666666666666}}, "Rows" -> {1, 0.5}}],
   "Grid"], TraditionalForm]], "Table", "PluginEmbeddedContent"],

Cell["Enter table note here.", "TableNote", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["Table ", "TableTitleLabel"],
 StyleBox[
 CounterBox["TableTitle"], "TableTitleLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "TableTitleLabel"],
 "Enter table title here"
}], "TableTitle", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]}
    },
    AutoDelete->False,
    BaseStyle->{TextJustification -> 0, ParagraphIndent -> 0},
    GridBoxAlignment->{"Columns" -> {Left, Center}, "Rows" -> {Bottom, Top}},
    GridBoxDividers->{
     "Columns" -> {False}, 
      "RowsIndexed" -> {
       1 -> AbsoluteThickness[2.], 2 -> AbsoluteThickness[0.5], -1 -> 
        AbsoluteThickness[0.5]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{5.}}, "Rows" -> {1, 0.5}}],
   "Grid"], TraditionalForm]], "Table", "PluginEmbeddedContent"],

Cell["Enter table note here.", "TableNote", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["Table ", "TableTitleLabel"],
 StyleBox[
 CounterBox["TableTitle"], "TableTitleLabel"],
 StyleBox[".\[ThickSpace]\[ThickSpace]\[ThickSpace]", "TableTitleLabel"],
 "Enter table title here"
}], "TableTitle", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  TagBox[GridBox[{
     {
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]], 
      InterpretationBox[Cell["Enter column head here",
        Editable->True,
        FontSlant->Italic],
       TextCell["Enter column head here", Italic, Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]},
     {
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]], 
      InterpretationBox[Cell["Enter data here",
        Editable->True],
       TextCell["Enter data here", Editable -> True]]}
    },
    AutoDelete->False,
    BaseStyle->{TextJustification -> 0, ParagraphIndent -> 0},
    GridBoxAlignment->{"Columns" -> {Left, Center}, "Rows" -> {Bottom, Top}},
    GridBoxDividers->{
     "Columns" -> {False}, 
      "RowsIndexed" -> {
       1 -> AbsoluteThickness[2.], 2 -> AbsoluteThickness[0.5], -1 -> 
        AbsoluteThickness[0.5]}},
    GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
    GridBoxSpacings->{"Columns" -> {{4.}}, "Rows" -> {1, 0.5}}],
   "Grid"], TraditionalForm]], "Table", "PluginEmbeddedContent"],

Cell["Enter table note here.", "TableNote", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter subsection title here", "Subsection", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[TextData[{
 StyleBox["Theorem\[MediumSpace]\[ThinSpace]", "TheoremLabel"],
 StyleBox[
 CounterBox["Theorem"], "TheoremLabel"],
 StyleBox[". ", "TheoremLabel"],
 "Enter theorem text here."
}], "Theorem", "PluginEmbeddedContent"],

Cell["Enter continued theorem text here.", "TheoremContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Corollary\[MediumSpace]\[ThinSpace]", "CorollaryLabel"],
 StyleBox[
 CounterBox["Corollary"], "CorollaryLabel"],
 StyleBox[". ", "CorollaryLabel"],
 "Enter corollary text here."
}], "Corollary", "PluginEmbeddedContent"],

Cell["Enter continued corollary text here.", "LemmaContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Definition\[MediumSpace]", "DefinitionLabel"],
 StyleBox[
 CounterBox["Definition"], "DefinitionLabel"],
 StyleBox[". ", "DefinitionLabel"],
 "Enter definition text here."
}], "Definition", "PluginEmbeddedContent"],

Cell["Enter continued definition text here.", "DefinitionContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Proposition\[MediumSpace]\[ThinSpace]", "PropositionLabel"],
 StyleBox[
 CounterBox["Proposition"], "PropositionLabel"],
 StyleBox[". ", "PropositionLabel"],
 "Enter proposition text here."
}], "Proposition", "PluginEmbeddedContent"],

Cell["Enter continued proposition text here.", "PropositionContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Conjecture\[MediumSpace]\[ThinSpace]", "ConjectureLabel"],
 StyleBox[
 CounterBox["Conjecture"], "ConjectureLabel"],
 StyleBox[". ", "ConjectureLabel"],
 "Enter conjecture text here."
}], "Conjecture", "PluginEmbeddedContent"],

Cell["Enter continued conjecture text here.", "ConjectureContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Axiom\[MediumSpace]\[ThinSpace]", "AxiomLabel"],
 StyleBox[
 CounterBox["Axiom"], "AxiomLabel"],
 StyleBox[". ", "AxiomLabel"],
 "Enter axiom text here."
}], "Axiom", "PluginEmbeddedContent"],

Cell["Enter continued axiom text here.", "AxiomContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Rule\[MediumSpace]\[ThinSpace]", "RuleLabel"],
 StyleBox[
 CounterBox["Rule"], "RuleLabel"],
 StyleBox[". ", "RuleLabel"],
 "Enter rule text here."
}], "Rule", "PluginEmbeddedContent"],

Cell["Enter continued rule text here.", "RuleContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Example\[MediumSpace]\[ThinSpace]", "ExampleLabel"],
 StyleBox[
 CounterBox["Example"], "ExampleLabel"],
 StyleBox[". ", "ExampleLabel"],
 "Enter example text here."
}], "Example", "PluginEmbeddedContent"],

Cell["Enter continued example text here.", "ExampleContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Remark\[MediumSpace]\[ThinSpace]", "RemarkLabel"],
 StyleBox[
 CounterBox["Remark"], "RemarkLabel"],
 StyleBox[". ", "RemarkLabel"],
 "Enter remark text here."
}], "Remark", "PluginEmbeddedContent"],

Cell["Enter continued remark text here.", "RemarkContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Solution\[MediumSpace]\[ThinSpace]", "SolutionLabel"],
 StyleBox[
 CounterBox["Remark"], "SolutionLabel"],
 StyleBox[". ", "SolutionLabel"],
 "Enter solution text here."
}], "Solution", "PluginEmbeddedContent"],

Cell["Enter continued solution text here.", "SolutionContinuation", "PluginEmbeddedContent"],

Cell[TextData[{
 StyleBox["Proof\[MediumSpace]\[ThinSpace]", "ProofLabel"],
 StyleBox[
 CounterBox["Remark"], "ProofLabel"],
 StyleBox[". ", "ProofLabel"],
 "Enter proof text here."
}], "Proof", "PluginEmbeddedContent"],

Cell["Enter continued proof text here.", "ProofContinuation", "PluginEmbeddedContent"],

Cell["\[EmptySquare]", "QED", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter appendix title here", "AppendixSection", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell["\<\
Enter appendix text here. Enter appendix equation for display in a separate \
cell below:\
\>", "Appendix", "PluginEmbeddedContent"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"\[Integral]", 
    RowBox[{"x", 
     RowBox[{"\[DifferentialD]", "x"}]}]}], "+", 
   SqrtBox["z"]}], TraditionalForm]], "AppendixEquation", \
"PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter acknowledgments title here", "AcknowledgmentsSection", "PluginEmbeddedContent"],

Cell["Enter acknowledgment text here.", "Acknowledgments", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter endnote title here", "EndnoteSection", "PluginEmbeddedContent"],

Cell["Enter endnote text here.", "Endnote", "PluginEmbeddedContent"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Enter reference title here", "ReferenceSection", "PluginEmbeddedContent"],

Cell[CellGroupData[{

Cell[TextData[{
 "Authorlast, \[OpenCurlyDoubleQuote]Article Title,\[CloseCurlyDoubleQuote] \
",
 StyleBox["Journal Title",
  FontSlant->"Italic"],
 ", ",
 StyleBox["Volume",
  FontWeight->"Bold"],
 "(Issue), 2005 pp. #\[Dash]#."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast1 and B. Authorlast2, \[OpenCurlyDoubleQuote]Article Title,\
\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal Title",
  FontSlant->"Italic"],
 ", ",
 StyleBox["Volume",
  FontWeight->"Bold"],
 "(Issue), 2005 pp. #\[Dash]#."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast1, B. Authorlast2, and C. Authorlast3, \
\[OpenCurlyDoubleQuote]Article Title,\[CloseCurlyDoubleQuote] ",
 StyleBox["Journal Title",
  FontSlant->"Italic"],
 ", ",
 StyleBox["Volume",
  FontWeight->"Bold"],
 "(Issue), 2005 pp. #\[Dash]#."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast, ",
 StyleBox["Book Title",
  FontSlant->"Italic"],
 ", ",
 StyleBox["n",
  FontSlant->"Italic"],
 "th ed., Publisher Location: Publisher Name, 2005."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast1 and B. Authorlast2, ",
 StyleBox["Book Title",
  FontSlant->"Italic"],
 ", ",
 StyleBox["n",
  FontSlant->"Italic"],
 "th ed., Publisher Location: Publisher Name, 2005."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast1, B. Authorlast2, and C. Authorlast3, ",
 StyleBox["Book Title",
  FontSlant->"Italic"],
 ", ",
 StyleBox["n",
  FontSlant->"Italic"],
 "th ed., Publisher Location: Publisher Name, 2005."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast, \[OpenCurlyDoubleQuote]Paper Title,\[CloseCurlyDoubleQuote] in ",
 StyleBox["Conference Proceedings Title (Conference Acronym and Year)",
  FontSlant->"Italic"],
 ", Conference Location (A. Authorlast, ed.), Publisher Location: Publisher \
Name, Publication Date pp. #\[Dash]#."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast1, B. Authorlast2, and C. Authorlast3, \
\[OpenCurlyDoubleQuote]Paper Title,\[CloseCurlyDoubleQuote] in ",
 StyleBox["Conference Proceedings Title (Conference Acronym and Year)",
  FontSlant->"Italic"],
 ", Conference Location (A. Authorlast, ed.), Publisher Location: Publisher \
Name, Publication Date pp. #\[Dash]#."
}], "Reference", "PluginEmbeddedContent"],

Cell[TextData[{
 "Authorlast1, B. Authorlast2, and C. Authorlast3, \
\[OpenCurlyDoubleQuote]Paper Title,\[CloseCurlyDoubleQuote] in ",
 StyleBox["Conference Proceedings Title (Conference Acronym and Year)",
  FontSlant->"Italic"],
 ", Conference Location (A. Authorlast, ed.), Publisher Location: Publisher \
Name, Publication Date pp. #\[Dash]#."
}], "Reference", "PluginEmbeddedContent"],

Cell["\<\
Authorlast. \[OpenCurlyDoubleQuote]Website Title.\[CloseCurlyDoubleQuote] \
(Last updated date or date visited in three-character Month Day, Year format) \
URL.\
\>", "Reference", "PluginEmbeddedContent"],

Cell["\<\
B. Authorlast. \[OpenCurlyDoubleQuote]Entry Title\[CloseCurlyDoubleQuote] \
from CompanyN\[LongDash]A CompanyN Web Resource. URL.\
\>", "Reference", "PluginEmbeddedContent"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{943.4666666666667, 4849.09},
Visible->True,
AuthoredSize->{943, 4849},
ScrollingOptions->{"HorizontalScrollRange"->Fit,
"VerticalScrollRange"->Fit},
ShowCellBracket->False,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"10.3 for Linux x86 (64-bit) (December 10, 2015)",
StyleDefinitions->FrontEnd`FileName[{"Article"}, "JournalArticle.nb", 
  CharacterEncoding -> "UTF-8"],
PrivateNotebookOptions -> {"NotebookAuthor" -> ""}
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 74, 0, 39, "Title"],
Cell[CellGroupData[{
Cell[1585, 39, 56, 0, 19, "Author"],
Cell[1644, 41, 68, 0, 15, "Institution"]
}, Open  ]],
Cell[CellGroupData[{
Cell[1749, 46, 69, 0, 25, "Section"],
Cell[1821, 48, 83, 0, 15, "Text"],
Cell[1907, 50, 662, 18, 54, "EquationNumbered"],
Cell[2572, 70, 75, 0, 15, "Text"],
Cell[2650, 72, 141, 4, 40, "EquationNumbered"],
Cell[2794, 78, 201, 4, 15, "Text"],
Cell[2998, 84, 249, 8, 15, "EquationNumbered"],
Cell[3250, 94, 244, 7, 15, "Text"],
Cell[3497, 103, 403, 13, 15, "EquationNumbered"],
Cell[3903, 118, 310, 10, 42, "EquationNumbered"],
Cell[4216, 130, 348, 11, 15, "EquationNumbered"],
Cell[4567, 143, 369, 12, 42, "EquationNumbered"],
Cell[4939, 157, 82, 0, 15, "Text"],
Cell[5024, 159, 151, 4, 40, "EquationNumbered"],
Cell[5178, 165, 212, 6, 42, "EquationNumbered"],
Cell[5393, 173, 92, 0, 15, "Text"],
Cell[5488, 175, 261, 8, 15, "EquationNumbered"],
Cell[5752, 185, 254, 8, 15, "EquationNumbered"],
Cell[6009, 195, 201, 4, 15, "Text"],
Cell[6213, 201, 249, 8, 15, "EquationNumbered"],
Cell[6465, 211, 84, 0, 15, "Text"],
Cell[6552, 213, 277, 9, 17, "EquationNumbered"],
Cell[6832, 224, 295, 9, 18, "EquationNumbered"],
Cell[7130, 235, 128, 3, 15, "Text"],
Cell[7261, 240, 385, 12, 15, "EquationNumbered"],
Cell[7649, 254, 367, 10, 15, "Text"],
Cell[8019, 266, 171, 5, 43, "EquationNumbered"],
Cell[8193, 273, 68, 0, 15, "Text"],
Cell[8264, 275, 407, 12, 43, "EquationNumbered"],
Cell[8674, 289, 271, 10, 15, "Text"],
Cell[8948, 301, 609, 19, 15, "EquationNumbered"],
Cell[9560, 322, 231, 7, 15, "EquationNumbered"],
Cell[9794, 331, 634, 19, 43, "EquationNumbered"],
Cell[10431, 352, 234, 7, 43, "EquationNumbered"],
Cell[10668, 361, 76, 0, 15, "Text"],
Cell[10747, 363, 597, 19, 45, "EquationNumbered"],
Cell[11347, 384, 637, 20, 45, "EquationNumbered"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12021, 409, 71, 0, 25, "Section"],
Cell[12095, 411, 163, 3, 15, "Text"],
Cell[12261, 416, 1989, 63, 60, "EquationNumbered"],
Cell[14253, 481, 195, 6, 15, "Text"],
Cell[14451, 489, 501, 15, 15, "EquationNumbered"],
Cell[14955, 506, 189, 7, 15, "Text"],
Cell[15147, 515, 269, 8, 15, "EquationNumbered"],
Cell[15419, 525, 242, 4, 15, "Text"],
Cell[15664, 531, 366, 11, 15, "EquationNumbered"],
Cell[16033, 544, 365, 11, 18, "EquationNumbered"],
Cell[16401, 557, 145, 3, 15, "Text"],
Cell[16549, 562, 310, 9, 33, "EquationNumbered"],
Cell[16862, 573, 987, 30, 58, "EquationNumbered"],
Cell[17852, 605, 991, 30, 58, "EquationNumbered"],
Cell[18846, 637, 41, 0, 15, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18924, 642, 65, 0, 25, "Section"],
Cell[18992, 644, 210, 4, 15, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19239, 653, 51, 0, 25, "Section"],
Cell[19293, 655, 233, 4, 15, "Text"],
Cell[19529, 661, 174529, 2957, 216, "Output"],
Cell[194061, 3620, 284, 6, 14, "FigureCaption"],
Cell[194348, 3628, 132, 3, 15, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[194517, 3636, 60, 0, 25, "Section"],
Cell[194580, 3638, 400, 16, 15, "Text"],
Cell[194983, 3656, 328, 12, 28, "Text"],
Cell[195314, 3670, 193, 3, 15, "Text"],
Cell[CellGroupData[{
Cell[195532, 3677, 82316, 1353, 392, "Figure"],
Cell[277851, 5032, 284, 6, 14, "FigureCaption"]
}, Open  ]],
Cell[278150, 5041, 478, 13, 33, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[278665, 5059, 65, 0, 25, "Section"],
Cell[278733, 5061, 429, 12, 33, "Text"],
Cell[279165, 5075, 1674, 46, 134, "Input"],
Cell[280842, 5123, 2250, 46, 303, "Input"],
Cell[283095, 5171, 328, 12, 28, "Text"],
Cell[283426, 5185, 182, 6, 15, "Text"],
Cell[283611, 5193, 45, 0, 15, "Text"],
Cell[283659, 5195, 269, 8, 15, "EquationNumbered"],
Cell[283931, 5205, 195, 6, 15, "Text"],
Cell[284129, 5213, 501, 15, 15, "EquationNumbered"],
Cell[284633, 5230, 189, 7, 15, "Text"],
Cell[284825, 5239, 269, 8, 15, "EquationNumbered"],
Cell[285097, 5249, 195, 6, 15, "Text"],
Cell[285295, 5257, 501, 15, 15, "EquationNumbered"],
Cell[285799, 5274, 189, 7, 15, "Text"],
Cell[285991, 5283, 269, 8, 15, "EquationNumbered"],
Cell[CellGroupData[{
Cell[286285, 5295, 80, 0, 15, "Item1Numbered"],
Cell[CellGroupData[{
Cell[286390, 5299, 82, 0, 15, "Item1Paragraph"],
Cell[CellGroupData[{
Cell[286497, 5303, 80, 0, 15, "Item2Numbered"],
Cell[CellGroupData[{
Cell[286602, 5307, 82, 0, 15, "Item2Paragraph"],
Cell[CellGroupData[{
Cell[286709, 5311, 80, 0, 15, "Item3Numbered"],
Cell[286792, 5313, 82, 0, 15, "Item3Paragraph"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[286937, 5320, 127, 2, 15, "Text"],
Cell[287067, 5324, 214, 7, 35, "EquationNumbered"],
Cell[CellGroupData[{
Cell[287306, 5335, 64, 0, 15, "Item1"],
Cell[CellGroupData[{
Cell[287395, 5339, 82, 0, 15, "Item1Paragraph"],
Cell[CellGroupData[{
Cell[287502, 5343, 64, 0, 15, "Item2"],
Cell[CellGroupData[{
Cell[287591, 5347, 82, 0, 15, "Item2Paragraph"],
Cell[CellGroupData[{
Cell[287698, 5351, 64, 0, 15, "Item3"],
Cell[287765, 5353, 82, 0, 15, "Item3Paragraph"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[287932, 5362, 74, 0, 21, "Subsection"],
Cell[CellGroupData[{
Cell[288031, 5366, 1498, 29, 148, "Figure"],
Cell[289532, 5397, 265, 6, 14, "FigureCaption"]
}, Open  ]],
Cell[CellGroupData[{
Cell[289834, 5408, 1499, 29, 148, "Picture"],
Cell[291336, 5439, 272, 6, 14, "PictureCaption"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[291669, 5452, 68, 0, 25, "Section"],
Cell[CellGroupData[{
Cell[291762, 5456, 176, 8, 16, "TableTitle"],
Cell[291941, 5466, 2023, 51, 109, "Table"],
Cell[293967, 5519, 68, 0, 13, "TableNote"]
}, Open  ]],
Cell[CellGroupData[{
Cell[294072, 5524, 256, 6, 16, "TableTitle"],
Cell[294331, 5532, 2731, 67, 109, "Table"],
Cell[297065, 5601, 68, 0, 13, "TableNote"]
}, Open  ]],
Cell[CellGroupData[{
Cell[297170, 5606, 256, 6, 16, "TableTitle"],
Cell[297429, 5614, 3410, 83, 109, "Table"],
Cell[300842, 5699, 68, 0, 13, "TableNote"]
}, Open  ]],
Cell[CellGroupData[{
Cell[300947, 5704, 256, 6, 16, "TableTitle"],
Cell[301206, 5712, 4104, 99, 109, "Table"],
Cell[305313, 5813, 68, 0, 13, "TableNote"]
}, Open  ]],
Cell[CellGroupData[{
Cell[305418, 5818, 74, 0, 21, "Subsection"],
Cell[CellGroupData[{
Cell[305517, 5822, 232, 6, 16, "Theorem"],
Cell[305752, 5830, 90, 0, 15, "TheoremContinuation"],
Cell[305845, 5832, 246, 6, 16, "Corollary"],
Cell[306094, 5840, 90, 0, 15, "LemmaContinuation"],
Cell[306187, 5842, 241, 6, 16, "Definition"],
Cell[306431, 5850, 96, 0, 15, "DefinitionContinuation"],
Cell[306530, 5852, 260, 6, 17, "Proposition"],
Cell[306793, 5860, 98, 0, 16, "PropositionContinuation"],
Cell[306894, 5862, 253, 6, 16, "Conjecture"],
Cell[307150, 5870, 96, 0, 15, "ConjectureContinuation"],
Cell[307249, 5872, 218, 6, 16, "Axiom"],
Cell[307470, 5880, 86, 0, 15, "AxiomContinuation"],
Cell[307559, 5882, 211, 6, 16, "Rule"],
Cell[307773, 5890, 84, 0, 15, "RuleContinuation"],
Cell[307860, 5892, 232, 6, 17, "Example"],
Cell[308095, 5900, 90, 0, 15, "ExampleContinuation"],
Cell[308188, 5902, 225, 6, 16, "Remark"],
Cell[308416, 5910, 88, 0, 15, "RemarkContinuation"],
Cell[308507, 5912, 237, 6, 16, "Solution"],
Cell[308747, 5920, 92, 0, 15, "SolutionContinuation"],
Cell[308842, 5922, 219, 6, 16, "Proof"],
Cell[309064, 5930, 86, 0, 15, "ProofContinuation"],
Cell[309153, 5932, 54, 0, 17, "QED"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[309268, 5939, 77, 0, 25, "AppendixSection"],
Cell[CellGroupData[{
Cell[309370, 5943, 142, 3, 15, "Appendix"],
Cell[309515, 5948, 214, 7, 35, "AppendixEquation"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[309778, 5961, 91, 0, 25, "AcknowledgmentsSection"],
Cell[309872, 5963, 83, 0, 15, "Acknowledgments"]
}, Open  ]],
Cell[CellGroupData[{
Cell[309992, 5968, 75, 0, 25, "EndnoteSection"],
Cell[310070, 5970, 68, 0, 15, "Endnote"]
}, Open  ]],
Cell[CellGroupData[{
Cell[310175, 5975, 79, 0, 25, "ReferenceSection"],
Cell[CellGroupData[{
Cell[310279, 5979, 271, 9, 16, "Reference"],
Cell[310553, 5990, 291, 9, 16, "Reference"],
Cell[310847, 6001, 308, 9, 16, "Reference"],
Cell[311158, 6012, 221, 8, 15, "Reference"],
Cell[311382, 6022, 241, 8, 15, "Reference"],
Cell[311626, 6032, 258, 8, 15, "Reference"],
Cell[311887, 6042, 350, 6, 32, "Reference"],
Cell[312240, 6050, 389, 7, 32, "Reference"],
Cell[312632, 6059, 389, 7, 32, "Reference"],
Cell[313024, 6068, 214, 4, 15, "Reference"],
Cell[313241, 6074, 183, 3, 15, "Reference"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature iv0yCz8DoBEIYA1TPl7D3wsk *)
