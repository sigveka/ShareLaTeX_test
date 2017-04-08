% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
%    ooooo    ooo ooooooooooooo ooooo    ooo ooooo     ooo 
%    `888b.   `8' 8'   888   `8 `888b.   `8' `888'     `8' 
%     8 `88b.  8       888       8 `88b.  8   888       8  
%     8   `88b.8       888       8   `88b.8   888       8  
%     8     `888       888       8     `888   `88.    .8'  
%    o8o      `8      o888o     o8o      `8     `YbodP'
%            |
%      \     |     /
%        \       /
%          ,d8b,            .,
%  (')-")_ 88888 ---   ;';'  ';'.
% ('-  (. ')98P'      ';.,;    ,;  .            .
%   '-.(PjP)'     \       '.';.'  / \          / \
%            |     \             /   \   /\   /   \
%            |                   |   |  /  \  |   |
%                         .______|   |_/    \_|   |______.
%                       _/                                \_
%            /\        |                                    |           /\
%   ________/  \  _____|                                    |________  /  \__
%  /            \/                                                   \/
%
% @brief      Definition of an "all-inclusive" article class based on memoir
% @author     Sigve Karolius (SK)
% @date       2017-04-07 (started)
% @copyright  2017 SK
% @details
%
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - %
\NeedsTeXFormat{LaTeX2e}%
\ProvidesClass{my-memoir}%
% --------------------------------------------------------------------------- %
% Set default values for the variables used by our implementation of \maketitle
%
%
% --------------------------------------------------------------------------- %
\providecommand{\myauthor}{S.~Karolius}
\providecommand{\myffiliation}{NTNU}
\providecommand{\mycopyright}{\copyright~}
%\providecommand{\mycomment}{YAML}% <-- \if@undefined
\providecommand{\mydate}{1.~januar~2010}
\providecommand{\myfirstpage}{1}
\providecommand{\myinstitution}{IKP, NTNU}
\providecommand{\myjournal}{My Journal}
\providecommand{\mykeywords}{list, of, keywords}
\providecommand{\mylistings}{listings}
\providecommand{\mymonth}{Jan}
\providecommand{\mynumber}{1}
\providecommand{\mynotation}{amsmath,amssymb}
\providecommand{\mytitle}{Hello World}
\providecommand{\myvolume}{I}
\providecommand{\myyear}{2010}
\providecommand{\mymonth}{%
 \ifcase\month\or%
  January\or%
  February\or%
  March\or%
  April\or%
  May\or%
  June\or%
  July\or%
  August\or%
  September\or%
  October\or%
  November\or%
  December%
 \fi}
\providecommand{\mysubtitle}{Sub-Title Clarifying the Main Title}
%
% --------------------------------------------------------------------------- %
% Renew commands
% --------------------------------------------------------------------------- %
\renewcommand{\@author}{\myauthor}
\renewcommand{\@title}{\mytitle}
%
% Commodity command to give two different versions of code, the first for printout mode
% and the second for screen mode. Useful for large pictures and layouts in absolute units.
%
%\newcommand{\printandscreen}[2]{\ifthenelse{\isundefined{\ScreenMode}}{#1}{#2}}

  % ------------------------------------------------------------------------- %
  % Define options consistent with those of the memoir class
  % ------------------------------------------------------------------------- %
  \DeclareOption{draft}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{final}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{twoside}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{onecolumn}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{twocolumn}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{oneside}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{openright}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{openleft}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{openany}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{final}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{draft}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{ms}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{showtrims}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{fleqn}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{openbib}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{article}{\PassOptionsToClass{\CurrentOption}{memoir}}
  \DeclareOption{oldfontcommands}{\PassOptionsToClass{\CurrentOption}{memoir}}
  %
  \DeclareOption*{\PackageWarning{my-memoir}{Unknown option `\CurrentOption´.}}
  \ProcessOptions\relax
  % ------------------------------------------------------------------------- %
  % Load memoir class
  % ------------------------------------------------------------------------- %
  % @brief    This class is based on the memoir class
  % @details
  %           Memoir includes code from several packages and uses similar
  %           internal commands to ensure that the packages are not loaded
  %           following some later \usepackage{} command. The names of the
  %           emulated packages are written to the log file. At the time of
  %           writing the emulated packages are:
  %                abstract, appendix, array,  , ccaption, chngcntr, crop,
  %                dcolumn, delarray, enumerate, epigraph, ifmtarg, ifpdf, index,
  %                makeidx, moreverb, needspace, newfile, nextpage, pagenote,
  %                patchcmd, parskip, setspace, shortvrb, showidx, tabularx,
  %                titleref, tocbibind, tocloft, verbatim,verse
  %           As well as the emulated packages memoir provides functions
  %           equivalent to those in the following packages, although the class
  %           does not prevent you from using them:
  %                fancyhdr, framed, geometry, sidecap, subfigure, and titlesec
  %
  \LoadClass[a4paper,11pt,twoside,openright,onecolumn,article]{memoir}
  %
  % ------------------------------------------------------------------------- %
  % Margins (We are using memoirs built-in page definitions, **not** geometry)
  % ------------------------------------------------------------------------- %
  % \stockheight = 795pt  --  \stockwidth = 614pt     --  \pageheight = 795pt
  % \pagewidth = 598pt    --  \textheight = 562pt     --  \textwidth = 396pt
  % \trimtop = 0pt        --  \trimedge = 17pt        --  \uppermargin = 114pt
  % \spinemargin = 90pt   --  \headheight = 12pt      --  \headsep = 24pt
  % \footskip = 24pt      --  \marginparsep = 17pt    --  \marginparpush = 12pt
  % \columnsep = 10pt     --  \columnseprule = 0.0pt
  %
  \setlength{\headheight}{14.5pt}
  \setlrmarginsandblock{2.0cm}{2.0cm}{*} % Left and right margin
  \setulmarginsandblock{3cm}{3cm}{*}  % Upper and lower margin
  \checkandfixthelayout
  % \GeometryOptions,includeheadfoot,headheight=14.5pt
  % \newcommand{\GeometryOptions}{margin=20mm,top=15mm,bindingoffset=10mm}
  %
  \setlength{\parindent}{0.0in}%                   Remove paragraph indentation
  \setlength{\parskip}{0.1in}%
  % ------------------------------------------------------------------------- %
  % Fix LaTeX List (Regular LaTeX lists can only handle 4 levels, this does 9)
  % ------------------------------------------------------------------------- %
  % @brief    Regular LaTeX lists can only handle 4 levels, this does 9...
  % @details
  %
  \RequirePackage{enumitem}%                                   customized lists
  %\setlist[itemize]{noitemsep}%                make itemize lists more compact
  \setlistdepth{9}%            standard TeX can only handle lists 4 levels deep
  \setlist{before=\footnotesize,%       reduce text size in order to save space
           font=\footnotesize,%                reduce font of label accordingly
           topsep=0pt,partopsep=0pt,parsep=0pt,itemsep=0pt}%      reset spacing
  %\setlength{\itemindent}{0pt}%
  %
  \newlength{\LOCALleftmargin}%                           utility dimension
  \setlength{\LOCALleftmargin}{\labelsep}%  length between \label and \item
  \addtolength{\LOCALleftmargin}{1ex}%         approximate length of \label
  \addtolength{\LOCALleftmargin}{0.5\columnsep}%
  %
  \newlength{\LOCALrightmargin}%                          utility dimension
  \setlength{\LOCALrightmargin}{\labelsep}% length between \label and \item
  \addtolength{\LOCALrightmargin}{0.5\columnsep}%
  %
  \setlist[itemize,1]{before=\vspace{\abovedisplayskip},%
                      after=\vspace{\abovedisplayskip},%
                      leftmargin=\LOCALleftmargin,%
                      rightmargin=\LOCALrightmargin,%
                      label=$\blacktriangleright$}%
  \setlist[itemize,2]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,3]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,4]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,5]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,6]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,7]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,8]{leftmargin=1em,label=$\bullet$}%
  \setlist[itemize,9]{leftmargin=1em,label=$\bullet$}%
  %
  \renewlist{itemize}{itemize}{9}%
  %
  \setlist[enumerate,1]{before=\vspace{\abovedisplayskip},%
                        after=\vspace{\abovedisplayskip},%
                        itemsep=0.5\baselineskip,%
                        leftmargin=\LOCALleftmargin,%
                        rightmargin=\LOCALrightmargin,%
                        label={\roman*}}%
  %
  \renewlist{enumerate}{enumerate}{9}%
  %
  % ------------------------------------------------------------------------- %
  % Load packages
  % ------------------------------------------------------------------------- %
  % Fonts
  \RequirePackage[sc]{mathpazo}%                          use the Palatino font
  \RequirePackage[scaled=0.95]{helvet}%                           same as above
  \RequirePackage{courier}%                                       same as above
  \RequirePackage[T1]{fontenc}%          use 8-bit encoding that has 256 glyphs
  \RequirePackage[utf8]{inputenc}%                                          THW
  \linespread{1.05}%     line spacing - Palatino needs more space between lines
  \RequirePackage{microtype}%        slightly tweak font spacing for aesthetics
  %
  \RequirePackage{xcolor}%
  \RequirePackage{ifthen}%
  \RequirePackage{calc}%
  \RequirePackage{graphicx}%                                   \includegraphics
  \RequirePackage{xcolor}%                                         \definecolor
  \RequirePackage{longtable}%                 for tables spanning several pages
  \RequirePackage{multicol}%                                multi-column format
  \interlinepenalty=10000%       for preventing bad breaks in two-column format
  \RequirePackage{tabulary}%
  %
  \RequirePackage{float}%                                    float environments
  \RequirePackage{lastpage}%                                 float environments
  % ------------------------------------------------------------------------- %
  % Setup of the hyperref package
  % ------------------------------------------------------------------------- %
  \RequirePackage{hyperref}
  \hypersetup{%
      pdftitle={\mytitle},%                                               title
      pdfauthor={\myauthor},%                                            author
      pdfsubject={\myjournal, \mymonth-\myyear, vol. \myvolume, no. \mynumber, pp. \myfirstpage-\thelastpage},%
      pdfkeywords={\mykeywords},%                              list of keywords
      unicode=false,%               non-Latin characters in Acrobat's bookmarks
      pdftoolbar=true,%                                 show Acrobat's toolbar?
      pdfmenubar=true,%                                    show Acrobat's menu?
      pdffitwindow=true,%                        window fit to page when opened
      pdfdisplaydoctitle=true,% display title instead of file name in title bar
      pdfnewwindow=true,%                               links in new PDF window
      colorlinks=false,%                false: boxed links; true: colored links
      linkcolor=black,%  internal links (change box color with linkbordercolor)
      linkbordercolor=0 0 0,%
      citecolor=black,%                          color of links to bibliography
      citebordercolor=0 0 0,%
      filecolor=black,%                                     color of file links
      filebordercolor=0 0 0,%
      urlcolor=blue,%                                   color of external links
      urlcolor=0 0 0,%
  }
  % ------------------------------------------------------------------------- %
  % Setup of the listings package
  % ------------------------------------------------------------------------- %
  \RequirePackage{\mylistings}
  %
  \@ifpackageloaded{my-listings}{}{%    Set-up of "bare-bones" listings package
    %
    \RequirePackage{listings}
    \newcounter{LSTcounterCharsPerLineOfCode}%
    \setcounter{LSTcounterCharsPerLineOfCode}{80}%
    %
    \newlength{\LSTbasewidth}%
    \setlength{\LSTbasewidth}{0.55em}%
    \newlength{\LSTxleftmargin}%
    \setlength{\LSTxleftmargin}{3ex}%
    \newlength{\LSTxrightmargin}%
    \setlength{\LSTxrightmargin}{0pt}%
    %
    \newlength{\LSTbasewidth@tmp}%
    % ======================================================================= %
    % Custom made colors. Works quite OK in both "rgb" and "cmyk" color mode. 
    % ======================================================================= %
    %
    \colorlet{LSTlightgray}[rgb]{red!2!green!2!blue!4!white}%
    \colorlet{LSTgreen}[rgb]{green!85!black}%
    \colorlet{LSTblue}[rgb]{blue!70!cyan}%
    \colorlet{LSTcyan}[rgb]{cyan!70!blue}%
    \colorlet{LSTorange}[rgb]{orange!80!red}%
    %
    % ======================================================================= %
    % Syntax colors. 
    % ======================================================================= %
    %
    \colorlet{LSTcolorBackground}{LSTlightgray}%                         canvas
    \colorlet{LSTcolorIdentifier}{black}%                x, y, abc123, e5, etc.
    \colorlet{LSTcolorKeyword}{LSTorange}%         for, if, end, continue, etc.
    \colorlet{LSTcolorComment}{gray}%    /* Hello World */, # Hello world, etc.
    \colorlet{LSTcolorString}{LSTgreen}%     'Hello world', "Hello world", etc.
    \colorlet{LSTcolorBasic}{darkgray}%                   0-9[]:();{}-+*/, etc.
    \colorlet{LSTcolorEmph}{black}%   any_important_user_defined_variable, etc.
    %
    % ======================================================================= %
    % Semantic colors. 
    % ======================================================================= %
    %
    \colorlet{LSTcolorInstanceMethod}{magenta}%                abc.next(), etc.
    \colorlet{LSTcolorModuleMethod}{LSTblue}%                  math.log(), etc.
    \colorlet{LSTcolorClassMethod}{LSTcolorModuleMethod}%    Array::new(), etc.
    \colorlet{LSTcolorFunction}{LSTcyan}%                y(x), log10(3.0), etc.
    \colorlet{LSTcolorConstant}{LSTblue}%                TRUE, FALSE, NaN, etc.
    \colorlet{LSTcolorRegexp}{LSTcolorString}%                   /[a-z]+/, etc.
    \colorlet{LSTcolorModule}{LSTcolorConstant}%            math, sys, io, etc.
    \colorlet{LSTcolorClass}{LSTcolorConstant}%             String, Array, etc.
    %
    \lstset{
     captionpos=b,%                         sets the caption-position to bottom
     stepnumber=1,%
     numbersep=1em,%
     numbers=left,%
     showstringspaces=true,%
     showspaces=false,%
     breaklines=false,%
     xleftmargin=\LSTxleftmargin,%
     xrightmargin=\LSTxrightmargin,%
     basewidth=\LSTbasewidth,%
     backgroundcolor=\color{LSTcolorBackground},%
     identifierstyle=\color{LSTcolorIdentifier}\ttfamily,%
     keywordstyle=\color{LSTcolorKeyword}\ttfamily,%
     commentstyle=\color{LSTcolorComment}\ttfamily,%
     numberstyle=\color{LSTcolorBasic}\tiny,%
     stringstyle=\color{LSTcolorString}\ttfamily,%
     basicstyle=\color{LSTcolorBasic}\footnotesize\ttfamily,%
     %basicstyle=\color{LSTcolorBasic}\ttfamily\linespread{1.05}\footnotesize,%
     emphstyle=\color{LSTcolorEmph}\bfseries\ttfamily,%
     frame=l,%
     framexbottommargin=0em,%
     framexleftmargin=0em,%
     framexrightmargin=0em,%
     framextopmargin=0em,%
     frameround=tttt,%
     aboveskip=\abovedisplayskip,%
     belowskip=\belowdisplayskip,%
     %mathescape=true,%
     lineskip=-0.1\baselineskip,%
    }
  }%                                                               END LISTINGS
  % ------------------------------------------------------------------------- %
  % Setup Notation
  % ------------------------------------------------------------------------- %
  \RequirePackage{\mynotation}
  \@ifpackageloaded{my-glossary}{%
   \def\imki@clearpage{\relax}%                       <-- Avoid cleardoublepage
   \renewcommand*{\glsclearpage}{\relax}%                 <-- Do not clear page
  }{%
   \RequirePackage{imakeidx}%       Use "imakeidx" for indexing due to 'memoir'
   \RequirePackage[%
    % indexonlyfirst,%                                     only index first use
    nopostdot,%
    nonumberlist,%                                     do not show page numbers
    nowarn,%                                            suppresses all warnings
    %savewrites,%
    % savenumberlist,%
    seeautonumberlist,%
    % Pre-defined glossaries, for convenience.
    acronym,%                                             generate acronym list
    % symbols,%                                           generate symbols list
    % numbers,%
    %index,%              This crashes with "memoir", which includes 'imakeidx'
    %nomain,%                                       don't use the main glossary
    %
    section=chapter,%                                     TOC level of glossary
    nohypertypes=index%                     Index does not include descriptions
    toc,%                                              add to table of contents
   ]{glossaries}%
   \def\imki@clearpage{\relax}%                       <-- Avoid cleardoublepage
   \renewcommand*{\glsclearpage}{\relax}%                 <-- Do not clear page
  % ================ C R E A T E -- G L O S S A R I E S ===================== %
  %
  % \newglossary[tlg]{<TYPE>}{tld}{tdn}{<TITLE>}
  % * tlg, tld, and tdn: arguments used as meta-file endings. These files are
  %                      required when the glossary is generated. The meta-file
  %                      endings for the main glossary are: glg, gls, and glo.
  %                      For the list of acronyms, alg, acn, and acr are reserved
  % * The second argument to newglossary, here domain, specifies the glossary
  %   type. It's a keyword that is used to assign new entries to this specific
  %   glossary.
  % * The last argument defines the glossary title.
  %
  %\newglossaryentry{greekletter}{name={Greek letters}, description={\nopostdesc}}
  %\newglossaryentry{latinletter}{name={Latin letters}, description={\nopostdesc}}
  \newglossary[greek.glg]{greek}{greek.sys}{greek.syo}{Greek Symbols}%
  \newglossary[latin.glg]{latin}{latin.sys}{latin.syo}{Latin Symbols}%
  %
  % ---------------------- E X T R A -- T O K E N S ------------------------- %
  % Define custom entry keys.
  %
  % Unit
  \glsaddkey{unit}{[-]}{%                                         Default value
                   \glsentryunit}{%                                  No link cs
                   \GLsentryunit}{%                          No link ucfirst cs
                   \glsunit}{%                                           linkcs
                   \Glsunit}{%                                  lunk ucfirst cs
                   \GLSunit%                                       link allcaps
  }%
  % Definition
  \glsaddkey{definition}{--}{%
                   \glsentrydef}{%
                   \GLsentrydef}{%
                   \glsdef}{%
                   \Glsdef}{%
                   \GLSdef%
  }%
  % "Index sort"
  \glsaddkey{indexentry}{}{%
                   \glsentryind}{%
                   \Glsentryind}{%
                   \glsind}{%
                   \Glsind}{%
                   \GLSind%
  }%
  % ----------------------- C U S T O M -- T Y P E S ------------------------ %
  %% see Example 4 in [manual]
  % [manual]: http://ctan.uib.no/macros/latex/contrib/glossaries/glossaries-user.pdf
  \glsaddstoragekey{abbrtype}% key/field name
   {acronym}% default value if not explicitly set
   {\abbrtype}% custom command to access the value if required
  %
  \newacronymstyle
    {acronym-initialism-eponym}% style name
    {% Use the generic display
      \ifglshaslong{\glslabel}{\glsgenacfmt}{\glsgenentryfmt}%
    }
    {% Put the long form in the description
      \renewcommand*{\GenericAcronymFields}{%
        short={\the\glslabeltok}%
      }%
      % For the full format, test the value of the "abbrtype" key.
      % the long form in brackets.
      % If it's set to "eponym" put the short form first with
      \renewcommand*{\genacrfullformat}[2]{%
        \ifglsfieldeq{##1}{abbrtype}{eponym}
        {% is a proper eponym
          \protect\firstacronymfont{\glsentryshort{##1}}##2\space%
            \footnote{\glsentrylong{##1}: \glsentrydesc{##1}}%
        }
        {% is another form of abbreviation
          \glsentrylong{##1}##2\space%
           (\protect\glsentryshort{##1})%
        }%
      }%
      % first letter upper case version:
      \renewcommand*{\Genacrfullformat}[2]{%
        \ifglsfieldeq{##1}{abbrtype}{acronym}
        {% is a proper eponym
          \protect\firstacronymfont{\Glsentryshort{##1}}##2\space%
            \footnote{\glsentrylong{##1}: \glsentrydesc{##1}}%
        }
        {% is another form of abbreviation
          \protect\Glsentryshort{##1}##2\space
          (\glsentrylong{##1})%
        }%
      }%
      % plural
      \renewcommand*{\genplacrfullformat}[2]{%
        \ifglsfieldeq{##1}{abbrtype}{acronym}
        {% is a proper eponym
          \protect\firstacronymfont{\glsentryshortpl{##1}}##2\space%
            \footnote{\glsentrylong{##1}: \glsentrydesc{##1}}%
        }
        {% is another form of abbreviation
          \protect\glsentryshortpl{##1}##2\space
          (\glsentrylong{##1})%
        }%
      }%
      % plural and first letter upper case
      \renewcommand*{\Genplacrfullformat}[2]{%
        \ifglsfieldeq{##1}{abbrtype}{acronym}
        {% is a proper eponym
          \protect\firstacronymfont{\Glsentryshortpl{##1}}##2\space
          (\glsentrylong{##1})%
        }
        {% is another form of abbreviation
          \Glsentrylongpl{##1}##2\space
          (\protect\glsentryshortpl{##1})%
        }%
    }%
    % Just use the short form as the name part in the glossary:
    \renewcommand*{\acronymentry}[1]{\acronymfont{\glsentryshort{##1}}}%
    % Sort by the short form:
    \renewcommand*{\acronymsort}[2]{##1}%
    % Just use the surrounding font for the short form:
    \renewcommand*{\acronymfont}[1]{##1}%
    % Same for first use:
    \renewcommand*{\firstacronymfont}[1]{\textsc{##1}}%
    % Default plural suffix if the plural isn't explicitly set
    \renewcommand*{\acrpluralsuffix}{\glspluralsuffix}%
  }
  %
  \setacronymstyle{acronym-initialism-eponym}% must be set BEFORE defining terms
  %
  \newcommand*{\newinitialism}[4][]{%
    \newacronym[abbrtype=initialism,#1]{#2}{#3}{#4}%
  }
  %
  \newcommand*{\neweponym}[4][]{%
    \newacronym[abbrtype=eponym,#1]{#2}{#3}{#4}%
  }
  %
  \newcommand*{\newcontraction}[4][]{%
    \newacronym[abbrtype=contraction,#1]{#2}{#3}{#4}%
  }
  % ------------------ C U S T O M -- F O R M A T I N G --------------------- %

  %% Controll expansion of glossary fields
  % In order to use 
  \glssetnoexpandfield{unit}% <-- do not expand the "unit" tokens (for siunitx)
  %% \tesxtsc{<abbr>}\footnote{<long>:<description>} 
  \renewcommand*{\Genacrfullformat}[2]{%
  \firstacronymfont{\Glsentryshort{##1}}##2%
  \footnote{\glsentrylong{##1}: \glsentrydesc{##1}}%
  }%
  %
  \makeglossaries
  \makeindex[columns=2]% <-- This requires "imakeidx"
  % ===================== L O A D -- G L O S S A R I E S ==================== %
  %
  \loadglsentries{glossary}%
  %
  \newcommand{\redefineglossaryentries}[1]{%
     \expandafter\def\csname#1\endcsname{%
     \relax\ifmmode
      \glssymbol{#1}\ifglshasfield{indexentry}{#1}{\index{\glsentryind{#1}}}{}
     \else
      \gls{#1}\ifglshasfield{indexentry}{#1}{\index{\glsentryind{#1}}}{}
     \fi
  }}%
  %
  % Loop through entries and re-define them as macros according to label.
  \forallglsentries{\glslabel}{%
    \expandafter\redefineglossaryentries\expandafter{\glslabel}%
  }%
  % @brief   Macro which merges all glossaries into one large glossary.
  %          By default it uses the latin glossary
  %
  \newcommand{\mergeglossaries}{%
    \forallglsentries[latin,greek]{\glslabel}{%
     \glsmoveentry{\glslabel}{main}
    }%
  }
  % ========================================================================= %
  % Using a label of the form tld:com is not a requirement, but a recommendation.
  % This convention helps to avoid multiply defined entries for different glossaries.
  % Furthermore, it makes it easier to identify which glossary an entry belongs to.
  % Using glossary entries isn't different from the default glossary, i.e. \gls{tld:com},
  % etc. Only glossary entries used in the text will appear in the respective glossary.
  %%
  \newcommand{\printlatinsymbols}{%
   \printglossary[type=latin,style=mylong3col]
  }
  \newcommand{\printgreeksymbols}{%
   \printglossary[type=greek,style=mylong3col]
  }
  \newcommand{\printmatixsymbols}{%
   \printglossary[type=matrices,style=mylong2col]
  }
  \newcommand{\printvectorsymbols}{%
   \printglossary[type=vectors,style=mylong2col]
  }
% ====================== G L O S S A R Y -- S T Y L E S ===================== %
%
% --------------------------------------------------------------------------- %
% Symbol | Description
% -------|-------------
%   ...  |     ...
%
%
\newsavebox\ltmcbox
%
\newglossarystyle{mylong2col}{%
  % put glossary in a longtable
  \renewcommand{\glossarypreamble}{%
   \setlength\glsdescwidth{0.8\linewidth}
   \setbox\ltmcbox\vbox\bgroup
    \col@number\@ne
    \mathchardef\LT@end@pen=0
  }
  % -->  <--
  \renewcommand{\glossarypostamble}{%
   \unskip%
   \unpenalty%
   \unpenalty\egroup%
   \unvbox\ltmcbox%
  }
  % -->  <--
  \renewenvironment{theglossary}%
    {%
      \setlength\LTleft{0pt}
      \setlength\LTright{0pt}
      \begin{longtable}[L]{@{\extracolsep{\fill}}l| p{\glsdescwidth} @{}}% p{\glsdescwidth}
    }{%
     \end{longtable}
    }%
  % --> Set the table header <--
   \renewcommand*{\glossaryheader}{%
    \bfseries Symbol &%
    \bfseries Description
    \tabularnewline \midrule \endhead}%
  % --> No heading between groups <--
   \renewcommand*{\glsgroupheading}[1]{}%
  % Main (level 0) entries displayed in a row optionally numbered
   \renewcommand*{\glossentry}[1]{%
      \glsentryitem{##1}% Entry number if required
      \glstarget{##1}{\glossentrysymbol{##1}}%                           Symbol
        & \Glossentrydesc{##1}% Description
        \tabularnewline % end of row
   }%
  % --> Nothing between groups <--
  \renewcommand*{\glsgroupskip}{}%
}
% --------------------------------------------------------------------------- %
% Symbol | Description | Unit
% -------|------------- -----
%   ...  |     ...       ...
%
\newglossarystyle{mylong3col}{%
  % Ensure glossary works in twocolum mode (not trivial for longtable)
  \renewcommand{\glossarypreamble}{%
   \setlength\glsdescwidth{0.6\linewidth}
   \setbox\ltmcbox\vbox\bgroup
    \col@number\@ne
    \mathchardef\LT@end@pen=0
  }
  %
  \renewcommand{\glossarypostamble}{%
   \unskip%
   \unpenalty%
   \unpenalty\egroup%
   \unvbox\ltmcbox%
  }
  % Put glossary inside a longtable
  \renewenvironment{theglossary}%
    {%
     \setlength\LTleft{0pt}
     \setlength\LTright{0pt}
     \begin{longtable}[L]{@{\extracolsep{\fill}}l|p{\glsdescwidth} l@{}}%
    }%
    {\end{longtable}}%
  % -- Set the table header --
  \renewcommand*{\glossaryheader}{%
    \bfseries Symbol &%
    \bfseries Description &%
    \bfseries Units \tabularnewline \midrule \endhead%
  }%
  % -- No heading between groups --
   \renewcommand*{\glsgroupheading}[1]{}%
  % -- Main (level 0) entries displayed in a row optionally numbered
   \renewcommand*{\glossentry}[1]{%
      \glsentryitem{##1}% Entry number if required
      \glstarget{##1}{\glossentrysymbol{##1}}% Symbol
        & \Glossentrydesc{##1}% Description
        & \glsentryunit{##1}% \glossentryuseri{##1}% Name
        \tabularnewline % end of row
   }%
  %\renewcommand{\entryname}{Symbol}
  %\renewcommand{\pagelistname}{Equation Number}
  % Nothing between groups:
  \renewcommand*{\glsgroupskip}{}%
}  % ------------------------------------------------------------------------- %
  % Handle | Type | Name | Symbol | Description | User1
  % -------|------|------|--------|-------------|------
  %   ...  | ...  | ...  |   ...  |     ...     | ...
  %
  \newglossarystyle{mylong6col}{%
    % put glossary in a longtable
    \renewenvironment{theglossary}%
      {%
       \setlength\LTleft{0pt}
       \setlength\LTright{0pt}
       \begin{longtable}[l]{@{\extracolsep{\fill}}l|l l l l p{\glsdescwidth}@{}}%
      }%
      {\end{longtable}}%
    % Set the table header
     \renewcommand*{\glossaryheader}{%
      \bfseries Handle &%
      \bfseries Symbol &%
      \bfseries Text &%
      \bfseries Unit &%
      \bfseries Definition &%
      \bfseries Description %
      \tabularnewline \hline \endhead}%
    % No heading between groups
     \renewcommand*{\glsgroupheading}[1]{}%
    % Main (level 0) entries displayed in a row optionally numbered
     \renewcommand*{\glossentry}[1]{%
        \glsentryitem{##1}% Entry number if required
        \glstarget{##1}{\texttt{##1}}%
          & \glossentrysymbol{##1}%                                      Symbol
          & \Glossentryname{##1}%                                          Name
          & \glsentryunit{##1}%                                            Unit
          & \glsentrydef{##1}%                                       Definition
          & \Glossentrydesc{##1}%                                   Description
      \tabularnewline %                                              end of row
     }%
    %\renewcommand{\entryname}{Symbol}
    %\renewcommand{\pagelistname}{Equation Number}
    % Nothing between groups:
    \renewcommand*{\glsgroupskip}{}%
  }
  %
  \newglossarystyle{supergroup}{%
    \renewenvironment{theglossary}%
    {\tablehead{}\tabletail{}%
     \begin{supertabular}{@{}l@{}lp{\glsdescwidth}}}%
    {\end{supertabular}}%
    \renewcommand*{\glossaryheader}{}%
    \renewcommand*{\glsgroupskip}{}%
    \renewcommand{\glossentry}[2]{%
      \glossentrysymbol{##1}& \multicolumn{2}{@{}l}{%
       \glossentrydesc{##1}\glstarget{##1}{\glossentrysymbol{##1}}%
      }% 
      \tabularnewline
    }%
    \renewcommand{\subglossentry}[3]{%
       &\glssubentryitem{##2}%
       \glstarget{##2}{\glossentryname{##2}}
       &
       \glossentrydesc{##2}\glspostdescription\space
       ##3%
       \tabularnewline
    }%
  }
  %
  }%                                                               END GLOSSARY
  % ------------------------------------------------------------------------- %
  % Setup Title
  % ------------------------------------------------------------------------- %
  \renewcommand{\thesection}{\arabic{section}}%                             THW
  \renewcommand{\thesubsection}{\thesection.\arabic{subsection}}%           THW
  \renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}%  THW
  %
  \setsecheadstyle{\centering\large\bfseries}
  \setsubsecheadstyle{\normalsize\textbf}
  \setsubsubsecheadstyle{\normalsize\itshape}
  %
  \setlength{\droptitle}{-4\baselineskip} %                   move the title up
  %
  \pretitle{\begin{center}\Huge\bfseries}%             article title formatting
  \posttitle{\end{center}}%                    article title closing formatting
  \title{\mytitle}%                                                         THW
  \author{%
   \textsc{\myauthor}\thanks{Copyright~\copyright~\myyear~\mycopyright} \\[1ex]%
   \normalsize\myinstitution \\%                                            THW
   \normalsize \href{sigveka@ansatt.ntnu.no}{mailto:~author~at~ntnu~dot~no}%THW
  }
  \date{\mydate}%                                leave empty to omit a date THW
  %
  % ------------------------------------------------------------------------- %
  % Abstract
  % ------------------------------------------------------------------------- %
  \renewcommand{\abstractnamefont}{\normalfont\bfseries}%bold "Abstract" prefix
  \renewcommand{\abstracttextfont}{\normalfont\small\itshape}%small italic text
  % Hook into \maketitle applied after \date
  \@ifundefined{mycomment}{\relax}{%
   \renewcommand{\maketitlehookd}{%                                 system hook
    \begin{abstract}
     \noindent\mycomment%                                                   THW
    \end{abstract}
   }%
  }
  %
  % ------------------------------------------------------------------------- %
  % Page setup
  % ------------------------------------------------------------------------- % 
  % memoir pagestyle aliases
  %
  % chapter    -->  plain      title        -->  plain
  % part       -->  plain      titlingpage  -->  empty
  % afterpart  -->  empty      book         -->  empty
  % cleared    -->  empty      afterbook    -->  empty
  % indextitlepagestyle --> chapter
  %
  % \makeevenhead{<style>}{<left>}{<center>}{<right>}
  % \makeoddhead{<style>}{<left>}{<center>}{<right>}
  % \makeevenfoot{<style>}{<left>}{<center>}{<right>}
  % \makeoddfoot{<style>}{<left>}{<center>}{<right>}
  %
  % \makeheadrule{<style>}{\textwidth}{\normalrulethickness}
  % \makefootrule{<style>}{\textwidth}{\normalrulethickness}
  % \normalrulethickness
  \setcounter{page}{\myfirstpage}%                       needed in \makeoddhead
  %
  % Plain pages
  % Journal-Title               Month Year            Vol.xxx,No.xx,pp. 123-321
  \makeevenhead{plain}{Vol.~\myvolume,~No.~\mynumber,~pp.~\myfirstpage--\pageref{LastPage}}{}{\textit{\myjournal}}
  \makeoddhead{plain}{\textit{\myjournal}}{\mymonth~\myyear}{Vol.~\myvolume,~No.~\mynumber,~pp.~\myfirstpage--\thelastpage}
  \makeevenfoot{plain}{}{}{}
  \makeoddfoot{plain}{}{}{}
  \makeheadrule{plain}{\textwidth}{\normalrulethickness}
  %\makefootrule{plain}{\textwidth}{\normalrulethickness}
  % Regular pages
  % even
  % Journal-Title               Month Year            Vol.xxx,No.xx,pp. 123-321
  % odd
  % Journal-Title               Month Year            Vol.xxx,No.xx,pp. 123-321
  \makeevenhead{headings}{Vol.~\myvolume,~No.~\mynumber,~\myyear}{\mytitle}{\thepage}
  \makeoddhead{headings}{\textit{\myjournal}}{\myauthor}{\thepage}
  \makeevenfoot{headings}{}{}{}
  \makeoddfoot{headings}{}{}{}
  \makeheadrule{headings}{\textwidth}{\normalrulethickness}
  %\makefootrule{headings}{\textwidth}{\normalrulethickness}


  % ------------------------------------------------------------------------- %
  % Modify Environments
  % ------------------------------------------------------------------------- %
  % Markdown uses "\begin{figure}[htbp]".
  % I want "...[H]":

  \let\oldfigure\figure
  \let\oldendfigure\endfigure
  \renewenvironment{figure}[1][h!]{\oldfigure[h!]}{\oldendfigure}

  % Markdown uses "\begin{table}[htbp]".
  % I want "...[H]":

  \let\oldtable\table
  \let\oldendtable\endtable
  \renewenvironment{table}[1][h!]{\oldtable[h!]}{\endoldtable}

  % Markdown uses "\setlength{\tymax}{0.5\linewidth}".
  % I want my own value:

  \let\oldtabulary\tabulary
  \let\oldendtabulary\endtabulary
  \renewenvironment{tabulary}[2]{\setlength{\tymax}{1.0\linewidth}\oldtabulary{#1}{#2}}{\oldendtabulary}

  % Markdown uses "width=\textwidth,height=0.75\textheight".
  % I want my own values:

  \let\oldincludegraphics\includegraphics
  \renewcommand{\includegraphics}[2][]{\oldincludegraphics[keepaspectratio,width=0.90\linewidth,height=0.90\linewidth]{#2}}

  % Markdown uses "\multicolumn{#1}{c}{#3}".
  % I want "...{#1}{l}{#3}":

  \let\oldmulticolumn\multicolumn
  \renewcommand{\multicolumn}[3]{\oldmulticolumn{#1}{l}{#3}}

