\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{fancynotes}[2020/11/15 v1.0 Fancy notes class]

\LoadClass[a4paper]{article}

\RequirePackage[right=2cm, bottom=2cm, left=2cm, top=3cm]{geometry}
\RequirePackage{mathptmx}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{graphicx}\graphicspath{{../Figures/}}
\RequirePackage{blindtext}
\RequirePackage{lipsum}
\RequirePackage{microtype}
\RequirePackage{parskip}
\RequirePackage{tocloft}
\RequirePackage{url}
\RequirePackage{float}
\RequirePackage{booktabs}
\RequirePackage{multicol}
\RequirePackage{titlepic}
\RequirePackage{wrapfig}
\RequirePackage{pdfpages}
\RequirePackage{chronosys}
%\RequirePackage{pst-plot}
\RequirePackage{ifthen}
\RequirePackage{setspace}
\RequirePackage{pdflscape}
\RequirePackage{caption}


\captionsetup[table]{labelformat=empty,textfont={Large,bf}}

\RequirePackage{tocloft}
\RequirePackage{tabularx}
\RequirePackage{fancyhdr}
\RequirePackage{standalone}
\newcolumntype{Y}{>{\centering\arraybackslash}X}


\RequirePackage{amsthm}
\RequirePackage{ifthen}

\renewcommand{\sectionmark}[1]{%
\markboth{\thesection\quad #1}{}}

\RequirePackage{titling}

\setlength{\droptitle}{-7em}
\pagestyle{fancy}
\fancyhf{}
\chead{\leftmark}
\rhead{<YOUR NAME>}
\fancyfoot[C]{\thepage}

\RequirePackage{enumitem}

\newcommand*{\rom}[1]{\expandafter\@slowromancap\romannumeral #1@}

\RequirePackage{centernot}
\newcommand{\notimplies}{\centernot\implies}

\DeclareOption{clear}{\rhead{}}
\DeclareOption{ENG}{\newcommand{\babelLanguage}{english}}
\DeclareOption{ESP}{\newcommand{\babelLanguage}{spanish}}
\DeclareOption{CAT}{\newcommand{\babelLanguage}{catalan}}
\ProcessOptions\relax
\RequirePackage[\babelLanguage]{babel}
%\newif\if@captions %\@captionsfalse
%\DeclareOption{hyperref}{\@captionstrue}
%\if@captions
%	\RequirePackage[font={footnotesize,it}]{caption}
%	\RequirePackage[labelfont={bf}]{caption}
%	\setlength{\abovecaptionskip}{1pt}
%	\setlength{\belowcaptionskip}{1pt}
%\fi

%\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
%\renewcommand{\cftdot}{.}
%\addto\captionsenglish{\renewcommand{\contentsname}{Index}}
%\newlength{\savetextdim}
%
%\newcommand{\babelLanguage}{english}
%\DeclareOption{english}{\renewcommand{\babelLanguage}{english}}
%\DeclareOption{spanish}{\renewcommand{\babelLanguage}{spanish}}
%\DeclareOption{catalan}{\renewcommand{\babelLanguage}{catalan}}
%\ProcessOptions\relax
%\RequirePackage[\babelLanguage]{babel}
%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%THEOREM'S FRAME%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%from: https://texblog.org/2015/09/30/fancy-boxes-for-theorem-lemma-and-proof-with-mdframed/

\RequirePackage[framemethod=TikZ]{mdframed}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Theorem
\newcounter{theo}[section] \setcounter{theo}{0}
\renewcommand{\thetheo}{\arabic{section}.\arabic{theo}}
\newenvironment{theo}[2][]{%
\refstepcounter{theo}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Theorem~\thetheo};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=blue!20]
{\strut Theorem~\thetheo:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=blue!20,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
\label{#2}}{\end{mdframed}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lemma
\newcounter{lem}[section] \setcounter{lem}{0}
\renewcommand{\thelem}{\arabic{section}.\arabic{lem}}
\newenvironment{lem}[2][]{%
\refstepcounter{lem}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=yellow!70]
{\strut Lemma~\thelem};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=yellow!70]
{\strut Lemma~\thelem:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=yellow!70,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
\label{#2#1}}{\end{mdframed}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Proof
\newcounter{prf}[section]\setcounter{prf}{0}
\renewcommand{\theprf}{\arabic{section}.\arabic{prf}}
\newenvironment{prf}[2][]{%
\refstepcounter{prf}%
\ifstrempty{#1}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=red!20]
{\strut Proof~\theprf};}}
}%
{\mdfsetup{%
frametitle={%
\tikz[baseline=(current bounding box.east),outer sep=0pt]
\node[anchor=east,rectangle,fill=red!20]
{\strut Proof~\theprf:~#1};}}%
}%
\mdfsetup{innertopmargin=10pt,linecolor=red!20,%
linewidth=2pt,topline=true,%
frametitleaboveskip=\dimexpr-\ht\strutbox\relax
}
\begin{mdframed}[]\relax%
\label{#2}}{\qed\end{mdframed}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\endinput
