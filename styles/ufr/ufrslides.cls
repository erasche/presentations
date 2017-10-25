% ufrslides.cls
%
% A LaTeX2e document class for preparing slides

%%% E. Rasche
%%% Backofen Lab

\def\fileversion{1.0}
\def\filedate{2017/10/25}

\ProvidesClass{ufrslides}[\filedate Slides style ``UFR'' by E. Rasche]
\LoadClass{beamer}


\definecolor{UniBlau}{RGB}{0,74,153}
\definecolor{UniRot}{RGB}{193,0,42}
\definecolor{UniGrau}{RGB}{154,155,156}
\definecolor{UniSchwarz}{RGB}{0,0,0}
\definecolor{WappenGrau}{RGB}{201,202,200}
\definecolor{WappenBlau}{RGB}{87,129,189}

\RequirePackage{amssymb,amsmath}
\RequirePackage[utf8x]{inputenc}
\RequirePackage{geometry}

\RequirePackage{graphicx}
\graphicspath{{images/}{images/library/}{style/images/}}
\DeclareGraphicsExtensions{.pdf,.png,.jpg}

\setcounter{secnumdepth}{0}
\usetheme{Berkeley}
\usecolortheme{seagull}


\date[\today]{\today}

%\setbeamercolor*{palette primary}{fg=black,bg=black!20}
%\setbeamercolor*{palette secondary}{fg=black,bg=black!25}
%\setbeamercolor*{palette tertiary}{fg=black,bg=black!30}
%\setbeamercolor*{palette quaternary}{fg=black,bg=black!35}

\setbeamercolor{sidebar}{bg=WappenGrau}
% Behind header
\setbeamercolor*{palette primary}{fg=white,bg=UniBlau}
% Behind logo
\setbeamercolor*{palette secondary}{fg=white,bg=UniRot}

\logo{\includegraphics[width=1.58cm]{ufr.png}}
%\logo{\includegraphics[width=1.5cm]{ufr-blau.png}}

%\setbeamercolor*{palette tertiary}{fg=black,bg=UniRot}
%\setbeamercolor*{palette quaternary}{fg=black,bg=UniRot}
%\setbeamercolor*{palette sidebar primary}{fg=black}
%\setbeamercolor*{palette sidebar secondary}{fg=black}
%\setbeamercolor*{palette sidebar tertiary}{fg=black}
%\setbeamercolor*{palette sidebar quaternary}{fg=black}
%\setbeamercolor*{item projected}{fg=black,bg=UniRot}
%\setbeamercolor*{block title}{fg=black,bg=UniRot}
%\setbeamercolor*{block title alerted}{fg=black,bg=UniRot}
%\setbeamercolor*{block title example}{fg=black,bg=UniRot}
%\setbeamercolor*{block body}{fg=black,bg=UniRot}
%\setbeamercolor*{block body alerted}{fg=black,bg=UniRot}
%\setbeamercolor*{block body example}{fg=black,bg=UniRot}
\setbeamercolor*{separation line}{bg=UniRot}
\setbeamercolor*{fine separation line}{bg=UniRot}
