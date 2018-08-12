(* ::Package:: *)

(* Autogenerated Package *)

(* ::Text:: *)
(*
	A static site builder extending off of BTools
*)



Ems::usage=
  "The Ems site builder interface. Supports string methods.";


Begin["`Private`"];


Unprotect[Ems];
Clear[Ems];


(* ::Subsection:: *)
(*Load BTools*)



PackageLoadPacletDependency["BTools`"]


PackageExtendContextPath[
  {
    "BTools`",
    "BTools`External`",
    "BTools`Web`"
    }
  ]


(* ::Subsection:: *)
(*Interface*)



(* ::Subsubsection::Closed:: *)
(*Command List*)



$EmsCommands=
  {
    "Build",
    "Deploy",
    "Open",
    "New",
    
    "ListSites",
    "ListThemes",
    
    "ListContent",
    "ListPosts",
    "ListPages",
    
    "Options",
    "SetOptions",
    
    "NewPage",
    "NewPost",
    "NewTableOfContents",
    
    "Directory",
    "SetDirectory",
    "Path",
    "SetPath",
    "ThemePath",
    "SetThemePath",
    
    "BuildErrors"
    }


(* ::Subsubsection::Closed:: *)
(*Path Stuff*)



(* ::Subsubsubsection::Closed:: *)
(*SiteDirectory*)



Ems["Directory"]:=
  $SiteDirectory


(* ::Subsubsubsection::Closed:: *)
(*SetDirectory*)



Ems["SetDirectory", d_]:=
  SetSiteDirectory[d]


(* ::Subsubsubsection::Closed:: *)
(*Path*)



Ems["Path"]:=
  $SitePath


(* ::Subsubsubsection::Closed:: *)
(*SetPath*)



Ems["SetPath", d_]:=
  SetSitePath[d]


(* ::Subsubsubsection::Closed:: *)
(*ThemePath*)



Ems["ThemePath"]:=
  $SiteThemePath


(* ::Subsubsubsection::Closed:: *)
(*SetThemePath*)



Ems["SetThemePath", d_]:=
  SetSiteThemePath[d]


(* ::Subsubsection::Closed:: *)
(*List stuff*)



(* ::Subsubsubsection::Closed:: *)
(*ListSites*)



Ems["ListSites", a___]:=
  With[{r=ListSites[a]},
    r/;Head[r]=!=ListSites
    ];


(* ::Subsubsubsection::Closed:: *)
(*ListThemes*)



Ems["ListThemes", a___]:=
  With[{r=ListThemes[a]},
    r/;Head[r]=!=ListThemes
    ];


(* ::Subsubsubsection::Closed:: *)
(*ListContent*)



Ems["ListContent", a___]:=
  With[{r=ListContent[a]},
    r/;Head[r]=!=ListContent
    ];


(* ::Subsubsubsection::Closed:: *)
(*ListPages*)



Ems["ListPages", a___]:=
  With[{r=ListPages[a]},
    r/;Head[r]=!=ListPages
    ];


(* ::Subsubsubsection::Closed:: *)
(*ListPosts*)



Ems["ListPosts", a___]:=
  With[{r=ListPosts[a]},
    r/;Head[r]=!=ListPosts
    ];


(* ::Subsubsubsection::Closed:: *)
(*FindTheme*)



Ems["FindTheme", a___]:=
  With[{r=FindTheme[a]},
    r/;Head[r]=!=FindTheme
    ];


(* ::Subsubsubsection::Closed:: *)
(*Options*)



Ems["Options", a___]:=
  With[{r=SiteOptions[a]},
    r/;Head[r]=!=SiteOptions
    ];


(* ::Subsubsubsection::Closed:: *)
(*SetOptions*)



Ems["SetOptions", a___]:=
  With[{r=SetSiteOptions[a]},
    r/;Head[r]=!=SetSiteOptions
    ];


(* ::Subsubsection::Closed:: *)
(*Site stuff*)



(* ::Subsubsubsection::Closed:: *)
(*New*)



Ems["New", a___]:=
  With[{r=NewSite[a]},
    r/;Head[r]=!=NewSite
    ];


(* ::Subsubsubsection::Closed:: *)
(*NewContent*)



Ems["NewContent", a___]:=
  With[{r=NewContent[a]},
    r/;Head[r]=!=NewContent
    ];


(* ::Subsubsubsection::Closed:: *)
(*NewPage*)



Ems["NewPage", a___]:=
  With[{r=NewPage[a]},
    r/;Head[r]=!=NewPage
    ];


(* ::Subsubsubsection::Closed:: *)
(*NewPost*)



Ems["NewPost", a___]:=
  With[{r=NewPost[a]},
    r/;Head[r]=!=NewPost
    ];


(* ::Subsubsubsection::Closed:: *)
(*NewTableOfContents*)



Ems["NewTableOfContents", a___]:=
  With[{r=NewTableOfContents[a]},
    r/;Head[r]=!=NewTableOfContents
    ];


(* ::Subsubsection::Closed:: *)
(*Build stuff*)



(* ::Subsubsubsection::Closed:: *)
(*Build*)



Ems["Build", a___]:=
  With[{r=BuildSite[a]},
    r/;Head[r]=!=BuildSite
    ]


(* ::Subsubsubsection::Closed:: *)
(*Open*)



Ems["Open", a___]:=
  With[{r=OpenSite[a]},
    r/;Head[r]=!=OpenSite
    ]


(* ::Subsubsubsection::Closed:: *)
(*Deploy*)



Ems["Deploy", a___]:=
  With[{r=DeploySite[a]},
    r/;Head[r]=!=DeploySite
    ]


(* ::Subsubsubsection::Closed:: *)
(*BuildErrors*)



Ems["BuildErrors"]:=
  $BuildErrors


(* ::Subsection:: *)
(*Clean Up*)



(* ::Subsubsection::Closed:: *)
(*Autocomplete*)



PackageAddAutocompletions[
  Ems,
  {
    $EmsCommands
    }
  ]


(* ::Subsubsection::Closed:: *)
(*Protection*)



Protect[Ems];


End[];



