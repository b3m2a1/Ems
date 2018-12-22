(* ::Package:: *)

(* Autogenerated Package *)

(* ::Subsubsection::Closed:: *)
(*Paths*)



$SiteDirectory::usage=
  "The main directory for sites";
SetSiteDirectory::usage="Sets the $SiteDirectory";
$SitePath::usage=
  "The main path for site lookup";
SetSitePath::usage="Sets the $SitePath";
$SiteThemePath::usage=
  "The main path for theme lookup";
SetSiteThemePath::usage="Sets the $SiteThemePath";


(* ::Subsubsection::Closed:: *)
(*Locate*)



ListSites::usage=
  "Lists current websites";
ListThemes::usage=
  "Lists current site themes";


FindTheme::usage=
  "Finds the theme for a site";


ListContent::usage=
  "Lists website content";
ListPages::usage=
  "Lists website pages";
ListPosts::usage=
  "Lists website posts";


(* ::Subsubsection::Closed:: *)
(*Autocomplete*)



UpdateAutocompletions::usage="Updates the Ems site autocompletions";


Begin["`Private`"];


Ems; (* invoke the autoloader *)


(* ::Subsection:: *)
(*Paths*)



(* ::Subsubsection::Closed:: *)
(*$SiteDirectory*)



$SiteDirectory:=
  If[!StringQ@$siteDirectory,
    $WebSiteDirectory,
    $siteDirectory
    ];


(* ::Subsubsection::Closed:: *)
(*SetSiteDirectory*)



SetSiteDirectory[d_]:=
  $siteDirectory=d;


(* ::Subsubsection::Closed:: *)
(*$SitePath*)



$SitePath:=
  If[!StringQ@$sitePath,
    $WebSitePath,
    $sitePath
    ];


(* ::Subsubsection::Closed:: *)
(*SetSitePath*)



SetSitePath[d_]:=
  $sitePath=d;


(* ::Subsubsection::Closed:: *)
(*$SiteThemePath*)



$SiteThemePath:=
  If[!ListQ@$themePath,
      Prepend[
        $WebSiteThemePath,
        PackageFilePath[
          "Resources",
          "Themes"
          ]
        ],
      $themePath
      ];


(* ::Subsubsection::Closed:: *)
(*SetSiteThemePath*)



SetSiteThemePath[d_]:=
  ($themePath=d);


(* ::Subsection:: *)
(*Config*)



(* ::Subsubsection::Closed:: *)
(*ListSites*)



ListSites//Clear
ListSites[patt:_?StringPattern`StringPatternQ:"*"]:=
  Block[
    {
      $WebSitePath=Append[$SitePath, $SiteDirectory],
      res
      },
    res=WebSites[patt];
    If[!ListQ@res, {}, res]
    ]


(* ::Subsubsection::Closed:: *)
(*ListThemes*)



ListThemes//Clear
ListThemes[patt:_?StringPattern`StringPatternQ:"*"]:=
  Block[
    {
      $WebSiteThemePath=$SiteThemePath,
      res
      },
    res=WebSiteThemes[patt];
    res/;ListQ[res]
    ]


(* ::Subsubsection::Closed:: *)
(*ListContent*)



ListContent//Clear
ListContent[
  dir_String?DirectoryQ, 
  path:{___String}:{}, 
  contentPat:_?StringPattern`StringPatternQ:"*.md"|"*.nb"
  ]:=
  WebSiteContent[dir, path, contentPat]


(* ::Subsubsection::Closed:: *)
(*ListPages*)



ListPages//Clear
ListPages[
  dir_String?DirectoryQ, 
  contentPat:_?StringPattern`StringPatternQ:"*.md"|"*.nb"
  ]:=
  WebSitePages[dir, contentPat]


(* ::Subsubsection::Closed:: *)
(*ListPosts*)



ListPosts//Clear
ListPosts[
  dir_String?DirectoryQ, 
  contentPat:_?StringPattern`StringPatternQ:"*.md"|"*.nb"
  ]:=
  WebSitePosts[dir, contentPat]


(* ::Subsubsection::Closed:: *)
(*FindTheme*)



FindTheme//Clear
Options[FindTheme]=
  Options[WebSiteFindTheme];
FindTheme[
  dir:_String?DirectoryQ, 
  string:Repeated[_String, {0, 1}], 
  ops:OptionsPattern[]
  ]:=
  Block[
    {
      $WebSiteThemePath=$SiteThemePath,
      res
      },
    WebSiteFindTheme[dir, string, ops]
    ];
FindTheme[
  name:Except[""|_?DirectoryQ, _String], 
  string:Repeated[_String, {0, 1}], 
  ops:OptionsPattern[]
  ]:=
  FindTheme[
    FileNameJoin@{$SiteDirectory, name},
    string,
    ops
    ]


(* ::Subsection:: *)
(*Autocomplete*)



(* ::Subsubsection::Closed:: *)
(*UpdateAutocompletions*)



UpdateAutocompletions[]:=
  PackageAddAutocompletions[
    Ems,
    {
      Sort@DownValues[Ems][[All, 1, 1, 1]],
      FileBaseName/@Ems["ListSites"]
      }
    ]


End[];



