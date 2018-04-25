\ProvidesClass{junior}[2017/11/15 v1 Junior class]
\LoadClass[11pt,a4paper]{article}
\usepackage{fontspec}
\usepackage[french]{babel}


\defaultfontfeatures[SansSourcePro] %only with lualatex
{
Extension = .ttf ,
UprightFont = material/SourceSansPro-Regular,
BoldFont = material/SourceSansPro-Bold,
ItalicFont = material/SourceSansPro-Italic,
BoldItalicFont = material/SourceSansPro-BoldItalic
}
\setmainfont{SansSourcePro}%only with lualatex

%\usepackage[utf8x]{inputenc}%if pdfLatex
%\usepackage[T1]{fontenc}%if pdfLatex

\usepackage[left=2cm,right=2cm,top=2cm,bottom=3cm,showframe=false]{geometry}
%Test : 
% \usepackage[left=2cm,right=2cm,top=2cm,bottom=3cm,showframe=true]{geometry}\usepackage{layout}


\usepackage{eurosym}
\usepackage{svg}

\input{bool.tex}

\usepackage{xcolor}
%Color liste
\definecolor{JEBleuClair}{RGB}{57, 191, 240}
\definecolor{JEBleuFonce}{RGB}{54, 104, 177}
\definecolor{JEGrisBleu}{RGB}{56, 70, 80}
\definecolor{JEGrisNoir}{RGB}{33, 33, 33}
\definecolor{JEGrisFonce}{RGB}{109, 109, 109}
\definecolor{JEGrisClair}{RGB}{147, 147, 147}
\definecolor{JEBlancFonce}{RGB}{237, 237, 237}
\definecolor{JEBlancClair}{RGB}{250, 250, 250}

%testcolor
% \definecolor{JEBleuClair}{RGB}{233, 191, 240}
% \definecolor{JEBleuFonce}{RGB}{233, 191, 1}
% \definecolor{JEGrisBleu}{RGB}{255, 1, 2}


\usepackage{hyperref}
\hypersetup{colorlinks=true, linkcolor=JEGrisBleu, citecolor=JEGrisBleu, filecolor=JEGrisBleu, urlcolor=JEGrisBleu, pdftitle=\tagDocName, pdfauthor=\tagJeName, pdfsubject=, pdfkeywords=}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Head/Footer https://fr.wikibooks.org/wiki/LaTeX/Mise_en_page#Styles_de_page
\usepackage{lastpage}
\usepackage{tikz}
\usepackage{fancyhdr}%http://pfercour.free.fr/stock/fancyhdr_fr.pdf
%\setlength{\headheight}{30.0pt}


\fancypagestyle{FootWithParaph}{
\fancyhf{}% vide les Head/Foot Pages par defaut
\renewcommand{\headrulewidth}{0pt}
\lhead{\includegraphics[width=5cm]{material/Logo_final.eps}}

  \setlength{\headheight}{57.5pt}
  \setlength{\footskip}{25pt}
  \setlength{\textheight}{665pt}
  \cfoot{
          \noindent
          {\tiny Convention Client – Tous droits de reproduction réservés – \copyright~ \tagJeName }
          \resizebox{1 \textwidth}{!}{
          \begin{tabular}{@{}l|c|c|r@{}}
          \cline{2-3}
          \begin{minipage}[t]{0.249\textwidth}\footnotesize\begin{flushleft} REF : \tagDocNameShort\tagEtudeNum\newline\newline\newline\end{flushleft}\end{minipage} &
          \begin{minipage}[t]{0.249\textwidth}\scriptsize\centering Signature du Client\end{minipage} &
          \begin{minipage}[t]{0.249\textwidth}\scriptsize\centering Signature de \tagJeName\end{minipage} &
          \begin{minipage}[t]{0.249\textwidth}\footnotesize\begin{flushright} Page \thepage\ sur \pageref*{LastPage} \end{flushright}\end{minipage} \\ \cline{2-3}
          \end{tabular}
          } %close resize
}
}


\fancypagestyle{FootNoParaph}{
\fancyhf{}% vide les Head/Foot Pages par defaut
\renewcommand{\headrulewidth}{0pt}
\lhead{\includegraphics[width=5cm]{material/Logo_final.eps}}

  \setlength{\headheight}{57.5pt}
  \setlength{\footskip}{25pt}
  \setlength{\textheight}{665pt}
  \cfoot{
          \noindent
          {\scriptsize \null}
          \resizebox{1 \textwidth}{!}{
          \begin{tabular}{@{}lcr@{}} %%https://tex.stackexchange.com/a/16261
          %\cline{2-3}
          \begin{minipage}[t]{0.159\textwidth}\footnotesize\begin{flushleft} REF : \tagDocNameShort\tagEtudeNum\newline\newline\newline\end{flushleft}\end{minipage} &
          \begin{minipage}[t]{0.678\textwidth}\centering\tiny Convention Client – Tous droits de reproduction réservés – \copyright~\tagJeName \end{minipage} &
          %\begin{minipage}[t]{0.249\textwidth}\scriptsize\centering ~ \end{minipage} &
          \begin{minipage}[t]{0.159\textwidth}\footnotesize\begin{flushright} Page \thepage\ sur \pageref*{LastPage} \end{flushright}\end{minipage} \\ %\cline{2-3}
          \end{tabular}
          } %close resize
}
}


\fancypagestyle{FootNoRef}{
\fancyhf{}% vide les Head/Foot Pages par defaut
\renewcommand{\headrulewidth}{0pt}
\lhead{
        \begin{tikzpicture}[overlay]\hspace{-5cm}
        \fill[JEGrisBleu] (0,0) rectangle (30cm,7cm);
        \end{tikzpicture}
        \raisebox{0.25\height}{\includegraphics[width=5cm]{material/logo-w.png}}
}
\rhead{
\raisebox{1\height}{\begin{tabular}{r}
{\textbf{\Huge\textcolor{white}{Trombinoscope Junior ESIEE}}}\\
{\vspace{-0.5pt}}\\
{\textbf{\LARGE\textcolor{white}{Mandat 2017 - 2018}}}\end{tabular}
}
% \raisebox{1.8\height}{\textbf{\Huge\textcolor{JEBlancFonce}{Trombinoscope des chargés}}}
}


  \setlength{\headheight}{57.5pt}
  \setlength{\footskip}{25pt}
  \setlength{\textheight}{665pt}

  \cfoot{
          \noindent
          {\scriptsize \null}
          \resizebox{1 \textwidth}{!}{
          \begin{tabular}{@{}lcr@{}} %%https://tex.stackexchange.com/a/16261
          %\cline{2-3}
          \begin{minipage}[t]{0.678\textwidth}\begin{flushleft}\footnotesize Tous droits de reproduction réservés – \copyright~\tagJeName \end{flushleft}\end{minipage} &
          \begin{minipage}[t]{0.159\textwidth}\small\begin{flushleft} ~ \newline\newline\newline\end{flushleft}\end{minipage} &
          %\begin{minipage}[t]{0.249\textwidth}\scriptsize\centering ~ \end{minipage} &
          \begin{minipage}[t]{0.159\textwidth}\small\begin{flushright} Page \thepage\ sur \pageref*{LastPage} \end{flushright}\end{minipage} \\ %\cline{2-3}
          \end{tabular}
          } %close resize
}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%function to add the school logo and legals sentences (like TVA Intracommunautaire)
\newcommand{\mentionsLegales}{
          \noindent
          \resizebox{1 \textwidth}{!}{
          \noindent
          \begin{tabular}{@{}lr|@{}}
          \begin{minipage}[b]{0.6\textwidth}\includegraphics[width=\textwidth]{material/esieecci.jpg}\end{minipage} & \begin{minipage}[b]{0.4\textwidth}\tiny\begin{flushright}\tagLegal\end{flushright}\end{minipage}\end{tabular}
          } %close resize
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%function to add a pretty sign place
%https://en.wikibooks.org/wiki/LaTeX/Macros#New_commands (not used)
%https://tex.stackexchange.com/questions/29973/more-than-one-optional-argument-for-newcommand
%https://tex.stackexchange.com/a/29975 (Multi optinnal options with xparse)

%\newcommand{\signaturePretty}[4][default1,default2]{
\usepackage{xparse}
\DeclareDocumentCommand{\signaturePretty}{ m O{} O{} m m}{
  \begin{minipage}[t]{#5\textwidth}\begin{center}
  {\bfseries {#1}\\\textit{#2}}\\
  \textcolor{JEGrisFonce}{\small\textit{#3}}\\
  \bigskip\bigskip\bigskip\bigskip\bigskip\bigskip
  {\sffamily\bfseries{#4}}
  \end{center}\end{minipage}
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%phases description

\newcommand{\descrJEH}[5]{%{Nom}{Description}{NbJEH}{PrixUnitaire}{PrixTotal}
  \noindent#1\\
  \noindent\textit{#2}
  \begin{flushright}
  #3 JEH à #4 € H.T.\\
  \end{flushright}
}

\newcommand{\descrPhase}[6]{%{Numero}{Nom}{Description}{NbJEH}{PrixTotal}{déclaration des JEHs}
  \noindent\textbf{Phase #1~ #2}\\
  \noindent\textit{#3}\bigskip\\
  #6
  \begin{flushright}
  \textbf{Charge de travail estimée~: #5 € H.T. (#4 JEH)}
  \end{flushright}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{array}% http://ctan.org/pkg/array 
%Marges dans les cellules des tableaux https://tex.stackexchange.com/questions/31672/column-and-row-padding-in-tables https://tex.stackexchange.com/questions/31672/column-and-row-padding-in-tables#comment927215_31704
\usepackage{colortbl} %colorier les tableaux
% \cellcolor prend le pas sur \rowcolor qui prend le pas sur \columncolor.
%EXAMPLE
                  % \begin{tabular}{| >{\columncolor{yellow}}c | >{\columncolor{gray!40}\color{white}\bfseries}c | c |}
                  % \hline
                  % \rowcolor{blue}Raoul&\cellcolor{red}Simonne&mariés\\\hline
                  % Marcel&Raymonde&concubinage\\\hline
                  % \rowcolor{green}Robert&Alphonse&\cellcolor{green!25}\color{red}pacsés\\\hline
                  % \end{tabular}
%phases table
\newcommand{\lineJEH}[5]{%{Nom}{Description}{NbJEH}{PrixUnitaire}{PrixTotal}
  \multicolumn{1}{|l|}{#1} & \multicolumn{1}{c|}{#3} & \multicolumn{1}{c|}{#4 €} & \multicolumn{1}{r|}{#5 € H.T.} \\
  \hline
}

\newcommand{\linePhase}[6]{%{Numero}{Nom}{Description}{NbJEH}{PrixTotal}{déclaration des JEHs}
  \multicolumn{4}{|l|}{\cellcolor{JEBleuFonce}\textcolor{white}{\textbf{Phase #1 - #2}}} \\ \hline
  #6
  \multicolumn{1}{|l|}{\textbf{Total phase #1}} & \multicolumn{1}{c|}{#4} & \multicolumn{1}{c}{\cellcolor{JEGrisClair}} &\multicolumn{1}{|r|}{\cellcolor{JEBlancFonce}\textbf{ #5 € H.T.}} \\
  \hline
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% List styles
\newcommand\liststyleLFOxiii{%
\renewcommand\labelitemi{\textcolor{JEBleuClair}{\textbullet}}
\renewcommand\labelitemii{\textcolor{JEBleuClair}{o}}
\renewcommand\labelitemiii{\textcolor{JEBleuClair}{${\blacksquare}$}}
\renewcommand\labelitemiv{\textcolor{JEBleuClair}{\textbullet}}
}

\usepackage{titlesec}
%https://fr.sharelatex.com/learn/Sections_and_chapters#!#Customize_chapters_and_sections
%\titleformat{\section}{\normalfont\bfseries\color{JEBleuClair}}{Article \thesection\ :}{0.5em}{Ajout forcee avant}[ajout forrcee apres]
% CC \titleformat{\section}{\Large\bfseries\color{JEBleuFonce}}{Article~\thesection\\~: }{0em}{}
% CC \titleformat{\subsection}{\large\bfseries\color{JEBleuClair}}{Alinéa~\thesubsection\\~: }{0em}{}
\titleformat{\section}{\Large\bfseries\color{JEBleuFonce}}{\thesection\\~: }{0em}{}
\titleformat{\subsection}{\large\bfseries\color{JEBleuClair}}{\thesubsection\\~: }{0em}{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% \setlength\tabcolsep{1mm} % definit la separation dans tabular

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%https://tex.stackexchange.com/questions/51090/how-do-i-create-a-pdf-file-that-can-be-digitally-signed
%\usepackage{material/digsig}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\usepackage{csvsimple}%csv reader file
\pagestyle{FootWithParaph}
\color{JEGrisBleu}
