%%
%% This is file `thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand{\Item}[1]{Item~\ref{#1}}        %ref to item of item list
\newcommand{\Alg}[1]{Algorithm~#1}          %ref to algorithm
\newcommand{\Equ}[1]{Equation~#1}           %ref to equation
% \newcommand{\Equ}[1]{(#1)}                  %ref to equation in IEEE-style
\newcommand{\Def}[1]{Definition~#1}         %ref to definition
\newcommand{\Prop}[1]{Proposition~#1}       %ref to proposition
\newcommand{\Lemm}[1]{Lemma~#1}             %ref to lemma
\newcommand{\Them}[1]{Theorem~#1}           %ref to theorem
\newcommand{\Coro}[1]{Corollary~#1}         %ref to corollary
\newcommand{\Fig}[1]{Figure~#1}             %ref to figure
% \newcommand{\Fig}[1]{\figurename~#1}        %ref to figure in IEEE-style
\newcommand{\Tab}[1]{Table~#1}              %ref to table
\newcommand{\Lst}[1]{Listing~#1}            %ref to code listing
\newcommand{\Chap}[1]{Chapter~#1}           %ref to chapter
\newcommand{\Sect}[1]{Section~#1}            %ref to section
\newcommand{\SSect}[1]{Subsection~#1}        %ref to subsection
\newcommand{\Annex}[1]{Annex~#1}            %ref to annex
\newcommand{\Propty}[1]{Property~#1}            %ref to annex

\newcommand{\descSIA}[1]{\widetilde{#1}}
\newcommand*{\eg}{e.g.\@\xspace}
\newcommand*{\ie}{i.e.\@\xspace}
\newcommand*{\ia}{i.a.\@\xspace}
\newcommand*{\etal}{et al.\@\xspace}

%This is used to mark begin and end of figures/tables
\newcommand{\ColFigSize}{65mm} %figure size to fit in two-column layout
\newcommand{\TopAlgSpace}{\vspace{-3mm}} %6mm,2mm
\newcommand{\TopFigSpace}{\vspace{-2mm}} %6mm,2mm
\newcommand{\TopTabSpace}{\vspace{0mm}}
\newcommand{\TopListSpace}{\vspace{0mm}}
\newcommand{\CaptionAlgSpace}{\vspace{0mm}} %4mm,-3mm
\newcommand{\CaptionFigSpace}{\vspace{-2mm}} %4mm,-3mm
\newcommand{\CaptionTabSpace}{\vspace{0mm}} %-5mm
\newcommand{\CaptionListSpace}{\vspace{-3mm}} %-5mm
\newcommand{\BotAlgSpace}{\vspace{-4mm}} %2mm, -1mm,-10mm
\newcommand{\BotFigSpace}{\vspace{-3mm}} %2mm, -1mm,-10mm
\newcommand{\BotTabSpace}{\vspace{0mm}} %-1mm
\newcommand{\BotListSpace}{\vspace{0mm}} %-1mm
%The standard way for doing above space corrections:
%\addtolength{\abovecaptionskip}{0mm}  %% see CaptionXSpace
%\addtolength{\belowcaptionskip}{0mm}  %% see BotXSpace/TopXSpace
%\addtolength{\textfloatsep}{0mm}      %% see BotXSpace/TopXSpace

%% --------------------------------------------------------------------------
%% --------------------------------------------------------------------------
%% --------------------------------------------------------------------------

\newcommand\Declaration[1]{
\btypeout{Declaration of Authorship}
% \addtotoc{Declaration of Authorship}
\thispagestyle{empty}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaration of Authorship\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb           { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\newcounter{dummy}
\newcommand\addtotoc[1]{
    \refstepcounter{dummy}
\addcontentsline{toc}{section}{#1}}
% \usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
%    bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
%    colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
%    pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
% \usepackage{hyperref}
% \pdfstringdefDisableCommands{
%    \let\\\space
% }
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\supervisor  {}
\examiner    {}
\degree      {}
\authors     {}
\university  {\texorpdfstring{\href{http://www.herts.ac.uk/}
                {University of Hertfordshire}}
                {University of Hertfordshire}}
\UNIVERSITY  {\texorpdfstring{\href{http://www.herts.ac.uk/}
                {UNIVERSITY OF HERTFORDSHIRE}}
                {UNIVERSITY OF HERTFORDSHIRE}}
\department  {\texorpdfstring{\href{http://www.herts.ac.uk/apply/schools-of-study/computer-science}
                {School of Computer Science}}
                {School of Computer Science}}
\DEPARTMENT  {\texorpdfstring{\href{http://www.herts.ac.uk/apply/schools-of-study/computer-science}
                {SCHOOL OF COMPUTER SCIENCE}}
                {SCHOOL OF COMPUTER SCIENCE}}
\group       {\texorpdfstring{\href{http://ctca.eu/}
                {Compiler Technology and Computer Architecture (CTCA)}}
                {Compiler Technology and Computer Architecture (CTCA)}}
\GROUP       {\texorpdfstring{\href{http://ctca.eu/}
                {COMPILER TECHNOLOGY AND COMPUTER ARCHITECTURE (CTCA)}}
                {COMPILER TECHNOLOGY AND COMPUTER ARCHITECTURE (CTCA)}}
\faculty     {\texorpdfstring{\href{http://www.herts.ac.uk/research/centres-and-groups/ccsir}
                {Centre for Computer Science and Informatics Research (CCSIR)}}
                {Centre for Computer Science and Informatics Research (CCSIR)}}
\FACULTY     {\texorpdfstring{\href{http://www.herts.ac.uk/research/centres-and-groups/ccsir}
                {CENTRE FOR COMPUTER SCIENCE AND INFORMATICS RESEARCH (CCSIR)}}
                {CENTRE FOR COMPUTER SCIENCE AND INFORMATICS RESEARCH (CCSIR)}}
\addresses   {}
\subject     {}
\keywords    {}
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted to the University of Hertfordshire\par}
      {\large in partial fulfillment of the requirements of the degree of \par}
      \bigskip
      \bigskip
      {\LARGE Doctor of Philosophy \par}
      \bigskip
      \bigskip
      \bigskip
      % {\large in the \par}
      % {\large \facname \par}
      % {\large \deptname \par}
      % \bigskip
      % \bigskip
      % \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par}
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \facname \par}
    {\normalsize \deptname \par}
    \bigskip
    {\normalsize Doctor of Philosophy\par}
    \bigskip
    {\normalsize\bf \@title \par}
    \medskip
    {\normalsize by \authornames \par}
    \bigskip
  \end{center}
}
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\renewcommand\tableofcontents{
\btypeout{Table of Contents}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{List of Figures}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newenvironment{acknowledgements}
{
  \btypeout{Acknowledgements}
  \thispagestyle{plain}
  \null
  \begin{center}
    {\huge{\textit{Acknowledgements}} \par}
  \end{center}
}
{
  \cleardoublepage
}
% \newcommand\acknowledgements[1]{
% \btypeout{Acknowledgements}
% \thispagestyle{plain}
% \begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
% {\normalsize #1}
% \vfil\vfil\null
% }

\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \btypeout{\bibname}
  \@mainmatterfalse}

%% Mathematics %%
%%%%%%%%%%%%%%%%%
\usepackage{amsmath}             %provides miscellaneous enhancements for mathematical formulas
\usepackage{amssymb}             %provides more mathematical symbols
\usepackage{amsthm}
\usepackage{thmtools}            %provides listoftheorems
\declaretheorem[numberwithin=chapter,name=Definition]{definition}
\declaretheorem[numberwithin=chapter,name=Property]{property}

%% Graphics %%
%%%%%%%%%%%%%%
\usepackage{graphicx}            %provides a key-value interface for optional arguments to the \includegraphics command
\usepackage{tikz}                %use tikz environement to produce graphics programmatically, used for "pgf-tex" export of Dia drawings
\usetikzlibrary{automata,positioning,shapes,arrows,fit}
% define inline arrows with tikz:
\usetikzlibrary{arrows}
\usetikzlibrary{decorations.pathmorphing}
\tikzstyle{tf}=[double,decorate,decoration={snake,amplitude=.4mm,segment length=2mm,pre length=2mm,post length=2mm}]
\tikzstyle{tb}=[dashed]
\tikzstyle{fifo}=[double]

\newcommand{\channel}[2]{$\begin{tikzpicture}[baseline]%
    \node[anchor=base] (A) [yshift=1mm]{};%
    \node[anchor=base] (B) [right of=A, node distance=4em] {};%
    \draw[#1] (A) -- node[midway,above=-2pt] {\scriptsize #2} (B);%
\end{tikzpicture}$}

%% Utility %%
%%%%%%%%%%%%%
\usepackage{import}              %use instead of input, allows to set path (useful for pdf_tex images)
\usepackage{todo}                %to support teamwork and revisioning.
\usepackage{verbatim}            % Needed for the "comment" environment to make LaTeX comments

%% Layout %%
%%%%%%%%%%%%
\usepackage{bibentry}
\nobibliography*
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\usepackage{xspace}              %introduces smart spaces after macro names in text
\usepackage{enumitem}            %allows easy handling of enumerate, itemize (resume, change to alphanumerical, etc). If [noitemsep] is used, this is equivalent to the '*' version of mdwlist
\usepackage{lmodern}             %enhanced versions of the Computer Modern fonts
\usepackage[T1]{fontenc}
\usepackage{hyphenat}            %allwos to use \hyp{} instead of '-' to allow hyphenation of words like 'cyber-physical'
\usepackage[acronym]{glossaries}
\usepackage{subcaption}          %Cannot be used together with subfigure
\usepackage[square,numbers,comma,sort&compress]{natbib}  % Use the "Natbib" style for the references in the Bibliography
\usepackage{hyperref}            %same as url but with hyperlinks (it also works better with bibtex generated by Zotero) Attention! does not pass IEEE PDF xExpress
\hypersetup{urlcolor=blue, colorlinks=false}  % Colours hyperlinks in blue, but this can be distracting if there are many links.

%% Listings %%
%%%%%%%%%%%%%%
\usepackage{listings}            %syntax highighting in code
\usepackage{bold-extra}          %allow blod keywords in listings
\usepackage[nounderscore]{syntax}%provides a grammar environment for typesetting formal grammars
\usepackage{algpseudocode}
\usepackage[chapter,ruled]{algorithm}
\usepackage{algorithmicx}         %typesetting algorithms in form of "pseudocode"

% define commands for the grammar environment
\let\oldlit\lit
\renewcommand{\lit}[1]{\oldlit*{\textbf{#1}}}
\newcommand{\Regex}[1]{\textit{#1}}
\setlength{\grammarparsep}{0.3em} % increase separation between LHS/RHS 

% Commands for Algorithms environment
\newcommand*\Let[2]{\State #1 $\gets$ #2}
%\newcommand*\Let[2]{\State #1 $=$ #2}
\newcommand{\FuncName}[1]{\textnormal{\tt #1}} %
% \algrenewcommand\algorithmicrequire{\textbf{Precondition:}}
% \algrenewcommand\algorithmicensure{\textbf{Postcondition:}}
\makeatletter
\newcommand{\removelatexerror}{\let\@latex@error\@gobble}
\makeatother

%specify the listing (code) formatting
\renewcommand{\ttdefault}{pcr}
\lstdefinelanguage{smx}
{
    morekeywords={in, out, left, right, side, box, wrapper, net, pure, decoupled, static, connect, tt, tb},
    otherkeywords={:,|,.,!,[,],\{,\}},
    comment=[l]{//},
    morecomment=[s]{/*}{*/}
}
\lstdefinelanguage{sia}
{
    morekeywords={sia},
    otherkeywords={:,|,;,.,?,!,\{,\}},
    comment=[l]{//},
    morecomment=[s]{/*}{*/}
}
\lstdefinelanguage{msg}
{
    morekeywords={error, warning},
    otherkeywords={:},
}
\lstdefinestyle{default}{
    basicstyle=\normalsize\ttfamily,
    keywordstyle=\bfseries,
    breaklines=true,
    captionpos=b,
    escapeinside={//*}{\^^M},
    linewidth=0.95\linewidth,
    mathescape=true,
    literate={\ \ }{{\ }}1,
    tabsize=2,
    xleftmargin=3.0ex,
    escapechar=\&
}
\lstdefinestyle{smx}{
    style=default,
    numbers=left,
    language=smx,
}
\lstdefinestyle{sia}{
    style=default,
    numbers=none,
    language=sia,
}
\lstdefinestyle{msg}{
    style=default,
    breakatwhitespace = true,
    numbers=none,
    language=msg,
}
\lstset{style=smx}

\endinput
%%
%% End of file `Thesis.cls'.
